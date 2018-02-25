package hello;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;

import com.vaadin.server.FontAwesome;
import com.vaadin.server.VaadinRequest;
import com.vaadin.shared.ui.ValueChangeMode;
import com.vaadin.spring.annotation.SpringUI;
import com.vaadin.ui.Button;
import com.vaadin.ui.Grid;
import com.vaadin.ui.HorizontalLayout;
import com.vaadin.ui.TextField;
import com.vaadin.ui.UI;
import com.vaadin.ui.VerticalLayout;

@SpringUI
public class VaadinUI extends UI {

	private final PatientRepository repo;

	private final PatientEditor editor;

	final Grid<Patient> grid;

	final TextField filter;
	final TextField filterFirstName;

	private final Button addNewBtn;

	@Autowired
	public VaadinUI(PatientRepository repo, PatientEditor editor) {
		this.repo = repo;
		this.editor = editor;
		this.grid = new Grid<>(Patient.class);
		this.filter = new TextField();
		this.filterFirstName = new TextField();
		this.addNewBtn = new Button("New patient", FontAwesome.PLUS);
	}

	@Override
	protected void init(VaadinRequest request) {
		// build layout
		HorizontalLayout actions = new HorizontalLayout(filter, filterFirstName,addNewBtn);
		VerticalLayout mainLayout = new VerticalLayout(actions, grid, editor);
		setContent(mainLayout);

		grid.setHeight(300, Unit.PIXELS);
		grid.setColumns("patient_id", "firstName", "lastName","dob","gender","insurance","race","refill","physican_name","allergy","address","zipcode");

		filter.setPlaceholder("Filter by last name");
		filterFirstName.setPlaceholder("Filter by First name");

		// Hook logic to components

		// Replace listing with filtered content when user changes filter
		filter.setValueChangeMode(ValueChangeMode.LAZY);
		filter.addValueChangeListener(e -> listPatientsLastName(e.getValue()));
		
		// Replace listing with filtered content when user changes filter
		filterFirstName.setValueChangeMode(ValueChangeMode.LAZY);
		filterFirstName.addValueChangeListener(e -> listPatientsFirstName(e.getValue()));

		// Connect selected Customer to editor or hide if none is selected
		grid.asSingleSelect().addValueChangeListener(e -> {
			editor.editPatients(e.getValue());
		});

		// Instantiate and edit new Customer the new button is clicked
		addNewBtn.addClickListener(e -> editor.editPatients(new Patient()));

		// Listen changes made by the editor, refresh data from backend
		editor.setChangeHandler(() -> {
			editor.setVisible(false);
			listPatientsLastName(filter.getValue());
			listPatientsFirstName(filter.getValue());
		});

		// Initialize listing
		listPatientsLastName(null);
		listPatientsFirstName(null);
	}

	// tag::listCustomers[]
	void listPatientsLastName(String filterText) {
		if (StringUtils.isEmpty(filterText)) {
			grid.setItems(repo.findAll());
		}
		else {
			grid.setItems(repo.findByLastNameStartsWithIgnoreCase(filterText));
		}
	}
	void listPatientsFirstName(String filterText) {
		if (StringUtils.isEmpty(filterText)) {
			grid.setItems(repo.findAll());
		}
		else {
			grid.setItems(repo.findByFirstNameStartsWithIgnoreCase(filterText));
		}
	}
	// end::listCustomers[]

}
