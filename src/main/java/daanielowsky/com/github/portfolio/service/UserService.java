package daanielowsky.com.github.portfolio.service;

import daanielowsky.com.github.portfolio.dto.UserDTO;

public interface UserService {

    public boolean checkIfUsernameIsAvailable(UserDTO userDTO);

    public void createTheUser(UserDTO userDTO);
}
