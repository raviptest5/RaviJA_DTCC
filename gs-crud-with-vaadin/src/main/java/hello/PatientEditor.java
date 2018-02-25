package hello;

import org.springframework.beans.factory.annotation.Autowired;

import com.vaadin.data.Binder;
import com.vaadin.event.ShortcutAction;
import com.vaadin.server.FontAwesome;
import com.vaadin.spring.annotation.SpringComponent;
import com.vaadin.spring.annotation.UIScope;
import com.vaadin.ui.Button;
import com.vaadin.ui.CssLayout;
import com.vaadin.ui.TextField;
import com.vaadin.ui.VerticalLayout;
import com.vaadin.ui.themes.ValoTheme;

/**
 * A simple example to introduce building forms. As your real application is probably much
 * more complicated than this example, you could re-use this form in multiple places. This
 * example component is only used in VaadinUI.
 * <p>
 * In a real world application you'll most likely using a common super class for all your
 * forms - less code, better UX. See e.g. AbstractForm in Viritin
 * (https://vaadin.com/addon/viritin).
 */
@SpringComponent
@UIScope
public class PatientEditor extends VerticalLayout {

	private final PatientRepository repository;

	/**
	 * The currently edited customer
	 */
	private Patient patient;

	/* Fields to edit properties in Customer entity */
	TextField firstName = new TextField("First name");
	TextField lastName = new TextField("Last name");
	TextField dob = new TextField("dob");
	TextField gender = new TextField("gender");
	TextField insurance = new TextField("insurance");
	TextField race = new TextField("race");
	TextField refill = new TextField("refill");
	TextField physican_name = new TextField("physican_name");
	TextField allergy = new TextField("allergy");
	TextField address = new TextField("address");
	TextField zipcode = new TextField("zipcode");
	TextField dol = new TextField("dol");

	/* Action buttons */
	Button save = new Button("Save", FontAwesome.SAVE);
	Button cancel = new Button("Cancel");
	Button delete = new Button("Delete", FontAwesome.TRASH_O);
	CssLayout actions = new CssLayout(save, cancel, delete);

	Binder<Patient> binder = new Binder<>(Patient.class);
	

	@Autowired
	public PatientEditor(PatientRepository repository) {
		this.repository = repository;

		//binder.bind(dol, "patientHistory.dol");
		//binder.
		addComponents(firstName, lastName,dob,gender,insurance,race,refill,physican_name,allergy,address,zipcode, actions);

		// bind using naming convention
		binder.bindInstanceFields(this);


		// Configure and style components
		setSpacing(true);
		actions.setStyleName(ValoTheme.LAYOUT_COMPONENT_GROUP);
		save.setStyleName(ValoTheme.BUTTON_PRIMARY);
		save.setClickShortcut(ShortcutAction.KeyCode.ENTER);

		// wire action buttons to save, delete and reset
		save.addClickListener(e -> repository.save(patient));
		delete.addClickListener(e -> repository.delete(patient));
		cancel.addClickListener(e -> editPatients(patient));
		setVisible(false);
	}

	public interface ChangeHandler {

		void onChange();
	}

	public final void editPatients(Patient c) {
		if (c == null) {
			setVisible(false);
			return;
		}
		final boolean persisted = c.getPatient_id() != null;
		if (persisted) {
			// Find fresh entity for editing
			patient = repository.findOne(c.getPatient_id());
		}
		else {
			patient = c;
		}
		cancel.setVisible(persisted);

		// Bind customer properties to similarly named fields
		// Could also use annotation or "manual binding" or programmatically
		// moving values from fields to entities before saving
		binder.setBean(patient);

		setVisible(true);

		// A hack to ensure the whole form is visible
		save.focus();
		// Select all text in firstName field automatically
		firstName.selectAll();
	}

	public void setChangeHandler(ChangeHandler h) {
		// ChangeHandler is notified when either save or delete
		// is clicked
		save.addClickListener(e -> h.onChange());
		delete.addClickListener(e -> h.onChange());
	}

	

}
