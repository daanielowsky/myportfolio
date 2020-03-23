package daanielowsky.com.github.portfolio.contorllers;

import daanielowsky.com.github.portfolio.dto.UserDTO;
import daanielowsky.com.github.portfolio.serviceImpl.UserServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class UserController {

    private UserServiceImpl userServiceImpl;

    public UserController(UserServiceImpl userServiceImpl) {
        this.userServiceImpl = userServiceImpl;
    }

    @GetMapping("/register")
    public String getRegisterPage(Model model){
        model.addAttribute("userDTO", new UserDTO());
        return "registerPage";
    }

    @PostMapping("/register")
    public String processOfRegistration(@Valid @ModelAttribute("userDTO") UserDTO form  , BindingResult result){
        if (result.hasErrors()) {
            return "registerPage";
        }
        if (!checkEqualityOfPasswords(form)){
            result.rejectValue("password", null, "Hasło i powtórzone hasło nie są takie same.");
            return "registerPage";
        }

        if (!userServiceImpl.checkIfUsernameIsAvailable(form)){
            result.rejectValue("username", null, "Nazwa użytkownika jest już zajęta.");
        }

        userServiceImpl.createTheUser(form);

        return "redirect:/";

    }

    private boolean checkEqualityOfPasswords(UserDTO userDTO){
        return userDTO.getPassword().equals(userDTO.getConfirmedPassword());
    }
}
