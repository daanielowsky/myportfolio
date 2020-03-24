package daanielowsky.com.github.portfolio.serviceImpl;

import daanielowsky.com.github.portfolio.dto.CompaniesDTO;
import daanielowsky.com.github.portfolio.entity.Companies;
import daanielowsky.com.github.portfolio.repository.CompaniesRepository;
import daanielowsky.com.github.portfolio.service.CompaniesService;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

import static daanielowsky.com.github.portfolio.converter.Converter.*;

@Service
public class CompaniesImpl implements CompaniesService {


    private CompaniesRepository companiesRepository;
    private MailSender mailSender;

    public CompaniesImpl(CompaniesRepository companiesRepository, MailSender mailSender) {
        this.companiesRepository = companiesRepository;
        this.mailSender = mailSender;
    }


    @Override
    public void creatingNewCompany(CompaniesDTO companiesDTO) {

        Companies companies = convertingFromCompaniesDTOtoRegularCompanies(companiesDTO);
        companiesRepository.save(companies);
    }

    @Override
    public void sendingEmailToMe(CompaniesDTO companiesDTO) {

        SimpleMailMessage simpleMailMessage = new SimpleMailMessage();

        simpleMailMessage.setTo("pawlicki.daniel@wp.pl");
        simpleMailMessage.setFrom(companiesDTO.getEmail());
        simpleMailMessage.setSubject(companiesDTO.getCompany() + " - " + companiesDTO.getPosition());
        simpleMailMessage.setText("Email kontaktowy: " + companiesDTO.getEmail() + "\n \n" + companiesDTO.getMessage());

        mailSender.send(simpleMailMessage);
    }
}
