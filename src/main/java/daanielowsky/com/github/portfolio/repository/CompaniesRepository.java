package daanielowsky.com.github.portfolio.repository;

import daanielowsky.com.github.portfolio.entity.Companies;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CompaniesRepository extends JpaRepository<Companies, Long> {

}
