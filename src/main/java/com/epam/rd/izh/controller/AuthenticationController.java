package com.epam.rd.izh.controller;

import com.epam.rd.izh.entity.AuthorizedUser;
import com.epam.rd.izh.repository.UserRepository;
import javax.validation.Valid;

import com.epam.rd.izh.service.UserDetailsServiceMapper;
import org.apache.tomcat.util.descriptor.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Date;

/**
 * В аргументы контроллеров, которые обрабатывают запросы, можно указать дополнительные входные параметры: Например:
 * HttpServletRequest и HttpServletResponse. Данные объекты автоматически заполняться данными о реквесте и респонсе. Эти
 * данные можно использовать, например достать куки, сессию, хедеры итд.
 */

@Controller
public class AuthenticationController {

  @Autowired
  UserRepository userRepository;

  @Autowired
  private PasswordEncoder passwordEncoder;

  private UserDetailsServiceMapper userService;

  @Autowired
  public void UserController(UserDetailsServiceMapper userService) {
    this.userService = userService;
  }

  @GetMapping(value = "/error")
  public String accessDenied() {
    return "error";
  }

  @GetMapping(value = {"/", "/login"})
  public String home() {
    return "login";
  }

  @GetMapping(value = "/registration")
  public String registrationPage() {
    return "registration";
  }

  @PostMapping(value = "/appRegistration")
  public String registrationUser(Model model,
                                 @RequestParam String username,
                                 @RequestParam String password,
                                 @RequestParam String role,
                                 @RequestParam Date birhday) {
    AuthorizedUser user = new AuthorizedUser();
    boolean flag = userService.save(user);
    if (flag) {
      model.addAttribute(Constants.MESSAGE, Constants.YOU_ARE_REGISTERED);
      return "login";
    }
    model.addAttribute(Constants.MESSAGE, Constants.USER_EXISTS);
    return "registration";
  }

  /**
   * Метод, отвечающий за логику регистрации пользователя.
   */
  @GetMapping("/registration")
  public String viewRegistration(Model model) {
    if(!model.containsAttribute("registrationForm")){
      model.addAttribute("registrationForm", new AuthorizedUser());
    }
    return "registration";
  }

  /**
   * Метод, отвечающий за подтверждение регистрации пользователя и сохранение данных в репозиторий или DAO.
   */
  @PostMapping("/registration/proceed")
  public String processRegistration(@Valid @ModelAttribute("registrationForm") AuthorizedUser registeredUser,
      BindingResult bindingResult, RedirectAttributes redirectAttributes) {

    /**
     * Здесь по желанию можно добавить валидацию введенных данных на back-end слое.
     * Для этого необходимо написать реализацию Validator.
     */
    //registeredUser.validate(registeredUserDto, bindingResult);

    if (bindingResult.hasErrors()) {
      //логика отображения ошибки, не является обязательной
      //...
      //...
      return "redirect:/registration";
    }
    /**
     * Здесь происходит присвоение роли пользователю и шифрование пароля.
     * Роль может быть так же определена пользователем на этапе регистрации, либо иным способов, зависящим
     * от темы финального проекта.
     * registeredUser может быть DTO объектом, преобразуемым в AuthorizedUser сущность в сервисе-маппере
     * (эот сервис нужно написать самим), вместе с присвоением роли и шифрованием пароля.
     */
    registeredUser.setRole("User");
    registeredUser.setPassword(passwordEncoder.encode(registeredUser.getPassword()));

    /**
     * Добавление пользователя в репозиторий или в базу данных через CRUD операции DAO.
     * Рекомендуется вынести эту логику на сервисный слой.
     */
    userRepository.addAuthorizedUser(registeredUser);
    /**
     * В случае успешной регистрации редирект можно настроить на другой энд пойнт.
     */
    return "redirect:/login";
  }

}