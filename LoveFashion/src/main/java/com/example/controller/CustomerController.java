package com.example.controller;

import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.Locale;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.contrains.GlobalHelper;
import com.example.contrains.GlobalSetting;
import com.example.dto.RegisterModel;
import com.example.entity.CustomerEntity;
import com.example.services.ICustomerService;

@Controller
@RequestMapping(value = "/customer/account")
@SessionAttributes("customer")
public class CustomerController {

	private Pattern pattern = Pattern.compile(GlobalSetting.EMAIL_PATTERN);

	@Autowired
	private MessageSource messageSource;

	@Autowired
	private ICustomerService customerService;
	
	@Autowired
	private ModelMapper mapper;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLogin(HttpSession session) {
		CustomerEntity customer = (CustomerEntity) session
				.getAttribute("customer");
		if (customer != null)
			return "redirect:/customer/account/";
		return "/store/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("login[username]") String email,
			@RequestParam("login[password]") String password, Model model,
			Locale locale) throws NoSuchAlgorithmException {
		if (email == null || "".equals(email)) {
			model.addAttribute("error_email",
					messageSource.getMessage("common.required", null, locale));
			return "/store/login";
		} else if (password == null || "".equals(password)) {
			model.addAttribute("error_password",
					messageSource.getMessage("common.required", null, locale));
			return "/store/login";
		} else if (!pattern.matcher(email).matches()) {
			model.addAttribute("error_email", messageSource.getMessage(
					"common.validation.email", null, locale));
			return "/store/login";
		} else if (password.length() < GlobalSetting.PASSWORD_LENGTH) {
			model.addAttribute("error_password", messageSource.getMessage(
					"common.validation.password", null, locale));
			return "/store/login";
		} else {
			CustomerEntity customer = customerService.findCustomerByEmail(
					email, GlobalHelper.hashPassword(password));
			if (customer == null) {
				model.addAttribute("error_login", messageSource.getMessage(
						"login.account.error", null, null));
				return "/store/login";
			} else {
				customer.setLogdate(new Date());
				customer.setLognum((short) (customer.getLognum() + 1));
				customerService.updateCustomer(customer);
				model.addAttribute("customer", customer);
				return "redirect:/customer/account/";
			}
		}
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String showRegister(Model model, HttpSession session) {
		CustomerEntity customer = (CustomerEntity) session
				.getAttribute("customer");
		if (customer != null)
			return "redirect:/customer/account/";
		model.addAttribute("register", new RegisterModel());
		return "/store/register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@ModelAttribute("register") @Validated RegisterModel register,
			BindingResult result, Model model, HttpServletRequest request, Locale locale)
			throws NoSuchAlgorithmException {
		if (result.hasErrors()) {
			return "/store/register";
		} else {
			CustomerEntity customer = customerService.registerCustomer(convertToEntity(register));
			if (customer == null) {
				model.addAttribute("error_register", messageSource.getMessage(
						"register.form.error", null, locale));
				return "/store/register";
			} else {
				return "redirect:/customer/account/login";
			}
		}
	}

	private CustomerEntity convertToEntity(RegisterModel model) {
		CustomerEntity entity = mapper.map(model, CustomerEntity.class);
		return entity;
	}
}
