package fr.eni.mvnbook.banque.web;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import fr.eni.mvnbook.banque.metier.BanqueService;
import fr.eni.mvnbook.banque.persistance.entity.Client;
import fr.eni.mvnbook.banque.persistance.entity.Compte;
import fr.eni.mvnbook.banque.persistance.util.BanqueException;

@Controller
@SessionAttributes({"leClient"})
public class AccueilClientController {

	@Inject
	private BanqueService banqueService;
	
	@RequestMapping(value="/accueil-client.eni", method=RequestMethod.GET)
	public String afficherAccueilClient(ModelMap model) {
		try {
			return "accueil-client";
		} 
		catch (Exception e) {
			e.printStackTrace();
			
			model.addAttribute("messageErreur", e.getMessage());
			
			return "accueil-client";
		}
	}
}





