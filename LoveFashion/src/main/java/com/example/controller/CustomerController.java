package com.example.controller;

import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.List;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.contrains.GlobalHelper;
import com.example.contrains.GlobalSetting;
import com.example.dto.AddressAccountModel;
import com.example.dto.RegisterModel;
import com.example.dto.UpdateAccountModel;
import com.example.entity.CustomerAddressEntity;
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
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showDashboard(Model model, HttpSession session) {
		CustomerEntity customer = (CustomerEntity) session
				.getAttribute("customer");
		if (customer == null) {
			return "redirect:/customer/account/login";
		} else {
			CustomerAddressEntity defaultBilling = null;
			CustomerAddressEntity defaultShipping = null;
			if (customer.getDefaultBilling() != null) {
				defaultBilling = customerService.getCustomerAddress(customer.getDefaultShipping());
			}
			if (customer.getDefaultShipping() != null) {
				defaultShipping = customerService.getCustomerAddress(customer.getDefaultBilling());
			}
			model.addAttribute("defaultBilling", defaultBilling);
			model.addAttribute("defaultShipping", defaultShipping);
			return "/store/dashboard";
		}
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String showUpdateAccount(Model model, HttpSession session,
			@RequestParam(value = "change", required = false, defaultValue = "false") boolean change) {
		CustomerEntity customer = (CustomerEntity) session.getAttribute("customer");
		if (customer != null) {
			UpdateAccountModel update = new UpdateAccountModel();
			if (change)
				update.setChangePassword(true);
			model.addAttribute("update", update);
			return "/store/update-account";
		}
		return "redirect:/customer/account/login";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String updateAccount(
			@ModelAttribute("update") @Validated UpdateAccountModel account,
			Model model, BindingResult result, HttpSession session, Locale locale)
			throws NoSuchAlgorithmException {
		if (result.hasErrors()) {
			return "/store/update-account";
		} else {
			CustomerEntity customer = (CustomerEntity) session.getAttribute("customer");
			if (customer != null) {
				customer.setFirstname(account.getFirstname());
				customer.setLastname(account.getLastname());
				if (account.isChangePassword()) {
					if (customer.getPassword().equals(GlobalHelper.hashPassword((account.getCurrentPassword())))) {
						customer.setPassword(GlobalHelper.hashPassword(account.getPassword()));
					} else {
						model.addAttribute("error_update", messageSource.getMessage(
								"customer.update.invalid.password", null, locale));
						return "/store/update-account";
					}
				}
				customerService.updateCustomer(customer);
				model.addAttribute("message_update", messageSource.getMessage(
						"customer.update.success", null, locale));
				return "/store/update-account";
			} else {
				return "redirect:/customer/account/login";
			}
		}
	}
	
	@RequestMapping(value = "/address", method = RequestMethod.GET)
	public String showAddress(Model model, HttpSession session) {
		CustomerEntity customer = (CustomerEntity) session.getAttribute("customer");
		if (customer != null) {
			if(!customerService.existAddressByCustormer(customer.getEntityId())){
				return "redirect:/customer/account/address/new";
			}else{
				CustomerAddressEntity defaultBilling = null;
				CustomerAddressEntity defaultShipping = null;
				if (customer.getDefaultBilling() != null) {
					defaultBilling = customerService.getCustomerAddress(customer.getDefaultBilling());
				}
				if (customer.getDefaultShipping() != null) {
					defaultShipping = customerService.getCustomerAddress(customer.getDefaultShipping());
				}
				List<CustomerAddressEntity> listAddress = customerService.findAdditionalAddress(customer.getEntityId(),
								customer.getDefaultBilling(), customer.getDefaultShipping());
				model.addAttribute("defaultBilling", defaultBilling);
				model.addAttribute("defaultShipping", defaultShipping);
				model.addAttribute("listAddress", listAddress);
				return "/store/address";
			}
		} else {
			return "redirect:/customer/account/login";
		}
	}
	
	@RequestMapping(value = "/address/new", method = RequestMethod.GET)
	public String showNewAddress(Model model, HttpSession session) {
		CustomerEntity customer = (CustomerEntity) session.getAttribute("customer");
		if (customer != null) {
			model.addAttribute("address", new AddressAccountModel());
			return "/store/add-address";
		} else {
			return "redirect:/customer/account/login";
		}
	}
	
	@RequestMapping(value = "/address/new", method = RequestMethod.POST)
	public String addNewAddress(@ModelAttribute("address") @Validated AddressAccountModel address,
			Model model, HttpSession session, BindingResult result, Locale locale) {
		if (result.hasErrors()) {
			return "/store/add-address";
		} else {
			CustomerEntity customer = (CustomerEntity) session.getAttribute("customer");
			if (customer != null) {
				Integer id = customerService.saveCustomerAddress(convertToEntity(address), customer);
				if(id != null){
					if(address.isDefaultBillingAddress()){
						customer.setDefaultBilling(id);
					}
					if(address.isDefaultShippingAddress()){
						customer.setDefaultShipping(id);
					}
				}
				customerService.updateCustomer(customer);
				model.addAttribute("message", messageSource.getMessage("customer.address.add.message", null, locale));
				return "redirect:/customer/account/address";
			} else {
				return "redirect:/customer/account/login";
			}
		}
	}
	
	@RequestMapping(value = "/address/edit/id/{entityId}", method = RequestMethod.GET)
	public String showUpdateCustomerAddress(Model model,
			@PathVariable("entityId") Integer id, HttpSession session) {
		CustomerEntity customer = (CustomerEntity) session.getAttribute("customer");
		if (customer != null) {
			CustomerAddressEntity address = customerService.getCustomerAddress(id);
			if (address == null) {
				return "redirect:/customer/account/address";
			} else {
				model.addAttribute("address", convertToModel(address));
				model.addAttribute("defaultBilling", customer.getDefaultBilling());
				model.addAttribute("defaultShipping",customer.getDefaultShipping());
				return "/store/edit-address";
			}
		} else {
			return "redirect:/customer/account/login";
		}
	}
	
	@RequestMapping(value = "/address/edit/id/{entityId}", method = RequestMethod.POST)
	public String updateCustomerAddress(
			@ModelAttribute("address") @Validated AddressAccountModel address,
			Model model, HttpSession session, BindingResult result, Locale locale) {
		if (result.hasErrors()) {
			return "/store/edit-address";
		} else {
			CustomerEntity customer = (CustomerEntity) session.getAttribute("customer");
			if (customer != null) {
				Integer id = customerService.saveCustomerAddress(convertToEntity(address), customer);
				if(id != null){
					if(address.isDefaultBillingAddress()){
						customer.setDefaultBilling(id);
					}
					if(address.isDefaultShippingAddress()){
						customer.setDefaultShipping(id);
					}
				}
				customerService.updateCustomer(customer);
				model.addAttribute("message", messageSource.getMessage("customer.address.add.message", null, locale));
				return "redirect:/customer/account/address";
			} else {
				return "redirect:/customer/account/login";
			}

		}
	}
	
	@RequestMapping(value = "/address/delete/id/{entityId}", method = RequestMethod.GET)
	public String deleteAddress(Model model, @PathVariable("entityId") Integer id,
			HttpSession session, Locale locale) {
		CustomerEntity customer = (CustomerEntity) session.getAttribute("customer");
		if (customer != null) {
			if (id == null) {
				return "redirect:/customer/account/address";
			}
			Integer result = customerService.deleteCustomerAddress(id);
			if(result == null){
				model.addAttribute("error_address", messageSource.getMessage("customer.address.detete.error", 
						null, locale));
			}
			model.addAttribute("message", messageSource.getMessage("customer.address.detete.message", 
					null, locale));
			return "redirect:/customer/account/address";
		} else {
			return "redirect:/customer/account/login";
		}

	}
	
	private CustomerEntity convertToEntity(RegisterModel model) {
		CustomerEntity entity = mapper.map(model, CustomerEntity.class);
		return entity;
	}
	
	private CustomerAddressEntity convertToEntity(AddressAccountModel model) {
		CustomerAddressEntity entity = mapper.map(model, CustomerAddressEntity.class);
		return entity;
	}
	
	private AddressAccountModel convertToModel(CustomerAddressEntity entity) {
		AddressAccountModel model = mapper.map(entity, AddressAccountModel.class);
		return model;
	}
}
