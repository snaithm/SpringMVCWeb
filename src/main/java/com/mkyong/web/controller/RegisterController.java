package com.mkyong.web.controller;

import com.mkyong.web.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.joda.time.DateTime;

@Controller
public class RegisterController {

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView getgreeting(Model model) {

	    model.addAttribute("register", new User());
        return new ModelAndView("register-form", "m", model);
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView greeting(@ModelAttribute User user) {

        DateTime date = new DateTime();
        user.setDate(date);
        return new ModelAndView("register-result", "m", user);
    }
}