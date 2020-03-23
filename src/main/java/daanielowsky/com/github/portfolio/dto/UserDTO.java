package daanielowsky.com.github.portfolio.dto;

import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Data @RequiredArgsConstructor
public class UserDTO {

    @NotNull
    @Size(min = 5)
    private String fullname;

    @NotNull
    @Size(min = 8)
    private String username;

    @NotNull
    @Size (min = 5, max = 12)
    private String password;

    @NotNull
    @Size (min = 5, max = 12)
    private String confirmedPassword;
}
