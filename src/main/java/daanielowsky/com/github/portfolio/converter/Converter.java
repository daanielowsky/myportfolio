package daanielowsky.com.github.portfolio.converter;

import daanielowsky.com.github.portfolio.dto.UserDTO;
import daanielowsky.com.github.portfolio.entity.User;

public class Converter {

    public static User convertingFromUserDTOtoRegularUser(UserDTO userDTO){

        User user = new User();

        user.setFullname(userDTO.getFullname());
        user.setUsername(userDTO.getUsername());

        return user;
    }
}
