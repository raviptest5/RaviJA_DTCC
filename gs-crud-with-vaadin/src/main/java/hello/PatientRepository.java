package hello;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PatientRepository extends JpaRepository<Patient, Integer> {

	List<Patient> findByLastNameStartsWithIgnoreCase(String lastName);
	List<Patient> findByFirstNameStartsWithIgnoreCase(String firstName);

}
