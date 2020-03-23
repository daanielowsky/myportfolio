package daanielowsky.com.github.portfolio.serviceImpl;

import daanielowsky.com.github.portfolio.dto.UserDTO;
import daanielowsky.com.github.portfolio.entity.User;
import daanielowsky.com.github.portfolio.repository.UserRepository;
import daanielowsky.com.github.portfolio.service.UserService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import static daanielowsky.com.github.portfolio.converter.Converter.*;

@Service
public class UserServiceImpl implements UserService {

    private UserRepository userRepository;
    private PasswordEncoder passwordEncoder;

    public UserServiceImpl(UserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public boolean checkIfUsernameIsAvailable(UserDTO userDTO) {

        String username = userDTO.getUsername();

        if (userRepository.findUserByUsername(username) != null){
            return true;
        }

        return false;
    }

    @Override
    public void createTheUser(UserDTO userDTO) {

        User user = convertingFromUserDTOtoRegularUser(userDTO);
        user.setPassword(passwordEncoder.encode(userDTO.getPassword()));
        userRepository.save(user);
    }
}
