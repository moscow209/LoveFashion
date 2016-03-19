package com.example.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.example.dto.AddressAccountModel;

@Component
public class AddressAccountFormValidator implements Validator {

	public boolean supports(Class<?> paramClass) {
		return AddressAccountModel.class.equals(paramClass);
	}

	public void validate(Object obj, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "firstName", "common.required");
		ValidationUtils.rejectIfEmpty(errors, "lastName", "common.required");
		ValidationUtils.rejectIfEmpty(errors, "telephone", "common.required");
		ValidationUtils.rejectIfEmpty(errors, "street", "common.required");
		ValidationUtils.rejectIfEmpty(errors, "countryId", "common.combobox.required");
		ValidationUtils.rejectIfEmpty(errors, "regionId", "common.combobox.required");
	}
}
