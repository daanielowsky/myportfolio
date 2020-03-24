package daanielowsky.com.github.portfolio.contorllers;

import daanielowsky.com.github.portfolio.dto.CompaniesDTO;
import daanielowsky.com.github.portfolio.service.CompaniesService;
import daanielowsky.com.github.portfolio.serviceImpl.CompaniesImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
public class EmailController {

    private static Logger logger = LoggerFactory.getLogger(EmailController.class);
    private CompaniesImpl companies;
    private CompaniesService companiesService;

    public EmailController(CompaniesImpl companies, CompaniesService companiesService) {
        this.companies = companies;
        this.companiesService = companiesService;
    }

    @GetMapping("/contact")
    public String contactForm(Model model){
        model.addAttribute("form", new CompaniesDTO());
        return "contact";
    }

    @PostMapping("/contact")
    public String sendingAnEmail(@Valid @ModelAttribute CompaniesDTO form){

        companies.creatingNewCompany(form);
        companiesService.sendingEmailToMe(form);

        return "redirect:/";
    }
}
