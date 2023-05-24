package com.library;

import com.library.controllers.HomeController;
import com.library.dtos.LoginDTO;
import com.library.entities.Student;
import com.library.entities.User;
import com.library.services.StudentService;
import com.library.services.UserService;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

@WebMvcTest(HomeController.class)
public class LibraryManagementApplicationTests {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private UserService userService;

    @MockBean
    private StudentService studentService;
    @Test
    public void login_fnValidate_Valid() throws Exception {
        // Prepare test data
        String username = "admin";
        String password = "admin";
        LoginDTO loginDTO = new LoginDTO(username, password);
        User user = new User();
        user.setUname(username);
        user.setUserid("admin");
        user.setIsadmin(true);

        // Mock the service method to return the user object
        Mockito.when(userService.validate(Mockito.any(LoginDTO.class))).thenReturn(user);
        Mockito.when(studentService.saveStudent(Mockito.any(Student.class))).thenReturn(null);


        // Perform the request and verify the response
        mockMvc.perform(MockMvcRequestBuilders.post("/validate")
                        .flashAttr("dto", loginDTO)
                        .sessionAttr("session", new MockHttpSession()))
                .andExpect(MockMvcResultMatchers.status().is3xxRedirection())
                .andExpect(MockMvcResultMatchers.redirectedUrl("/dashboard"))
                .andExpect(MockMvcResultMatchers.flash().attribute("uname", username))
                .andExpect(MockMvcResultMatchers.flash().attribute("userid", "admin"))
                .andExpect(MockMvcResultMatchers.flash().attribute("role", "Admin"))
                .andExpect(MockMvcResultMatchers.flash().attribute("id", null));
    }
}


