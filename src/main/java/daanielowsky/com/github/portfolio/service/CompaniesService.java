package daanielowsky.com.github.portfolio.service;

import daanielowsky.com.github.portfolio.dto.CompaniesDTO;

public interface CompaniesService {

    public void creatingNewCompany(CompaniesDTO companiesDTO);

    public void sendingEmailToMe(CompaniesDTO companiesDTO);
}
