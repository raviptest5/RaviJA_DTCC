package hello;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class Application {

	private static final Logger log = LoggerFactory.getLogger(Application.class);

	public static void main(String[] args) {
		SpringApplication.run(Application.class);
	}

	
	@Bean
	public CommandLineRunner loadData(PatientRepository repository) {
		return (args) -> {
			
			// fetch all customers
			log.info("Patients found with findAll():");
			log.info("-------------------------------");
			for (Patient patient : repository.findAll()) {
				log.info(patient.toString());
			}
			log.info("");

			// fetch an individual customer by ID
			Patient patient = repository.findOne(new Integer(1));
			log.info("Patient found with findOne(1):");
			log.info("--------------------------------");
			log.info(patient.toString());
			log.info("");

			// fetch patients by last name
			log.info("Patients found with findByLastNameStartsWithIgnoreCase('SMITH'):");
			log.info("--------------------------------------------");
			for (Patient bauer : repository
					.findByLastNameStartsWithIgnoreCase("SMITH")) {
				log.info(bauer.toString());
			}
			log.info("");
		};
	}

}
