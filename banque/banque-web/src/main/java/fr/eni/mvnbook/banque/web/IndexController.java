package fr.eni.mvnbook.banque.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/accueil.eni")
	public String accueil() {
		return "accueil";
	}
	
}
