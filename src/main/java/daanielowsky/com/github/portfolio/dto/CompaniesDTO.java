package daanielowsky.com.github.portfolio.dto;

import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

@Data @RequiredArgsConstructor
public class CompaniesDTO {

    @NotNull
    private String message;

    @NotNull @Email
    private String email;

    @NotNull
    private String company;

    @NotNull
    private String position;
}
