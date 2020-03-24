package daanielowsky.com.github.portfolio.converter;

import daanielowsky.com.github.portfolio.dto.CompaniesDTO;
import daanielowsky.com.github.portfolio.dto.UserDTO;
import daanielowsky.com.github.portfolio.entity.Companies;
import daanielowsky.com.github.portfolio.entity.User;

public class Converter {

    public static User convertingFromUserDTOtoRegularUser(UserDTO userDTO){

        User user = new User();

        user.setFullname(userDTO.getFullname());
        user.setUsername(userDTO.getUsername());

        return user;
    }

    public static Companies convertingFromCompaniesDTOtoRegularCompanies(CompaniesDTO companiesDTO){

        Companies companies = new Companies();

        companies.setCompany(companiesDTO.getCompany());
        companies.setEmail(companiesDTO.getEmail());
        companies.setMessage(companiesDTO.getMessage());
        companies.setPosition(companiesDTO.getPosition());

        return companies;
    }
}
