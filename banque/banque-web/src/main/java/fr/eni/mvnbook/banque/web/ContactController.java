package fr.eni.mvnbook.banque.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import fr.eni.mvnbook.banque.form.ContactForm;
import fr.eni.mvnbook.banque.form.VirementForm;
import fr.eni.mvnbook.banque.persistance.entity.Client;

@Controller
public class ContactController {

	@RequestMapping(value="/contact.eni", method=RequestMethod.GET)
	public String showForm(ModelMap model) {
		try {
			return "contact";
		} 
		catch (Exception e) {
			e.printStackTrace();
			return "contact";
		}
	}
	
	@ModelAttribute("contactForm")
	public ContactForm initForm() {
		return new ContactForm();
	}
	
	@RequestMapping(
			value="/contact.eni", method=RequestMethod.POST
	)
	public String submitForm(
		@ModelAttribute("contactForm") ContactForm contactForm, ModelMap model
	) {
		try {
			return "redirect: accueil.eni";
		} 
		catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("messageErreur", e.getMessage());
			
			return "virement";
		}
	}
}
