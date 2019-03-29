package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by 8e3Yn4uK on 30.03.2019
 */

@Controller
public class LoginController {

    @GetMapping("/showMyLoginPage")
    public String showMyLoginPage() {

        return "login-page";
    }

    @GetMapping("/access-denied")
    public String showAccessDenied() {

        return "access-denied";

    }
}
