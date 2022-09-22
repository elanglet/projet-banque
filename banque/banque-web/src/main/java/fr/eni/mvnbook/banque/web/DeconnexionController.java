package fr.eni.mvnbook.banque.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DeconnexionController {

	@RequestMapping(value="/deconnexion.eni", method=RequestMethod.GET)
	public String deconnexion(HttpSession session) {
		session.removeAttribute("leClient");
		session.invalidate();
			
		return "redirect: accueil.eni";
		
	}
}
