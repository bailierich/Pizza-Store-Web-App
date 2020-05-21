package Lap22.lab22.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Lap22.lab22.SpecialtyPizza;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public static String index(Model model) {
		
		List<SpecialtyPizza> pizzaList = new ArrayList<SpecialtyPizza>();
		pizzaList.add(new SpecialtyPizza("Big B's Hawaiian Pizza", 17.99));
		pizzaList.add(new SpecialtyPizza("Big B's Veggie Lovers", 17.99));
		pizzaList.add(new SpecialtyPizza("Big B's Meat Lovers", 17.99));
		
		model.addAttribute("pizzalist",pizzaList);
		
		return "index";
		
	}
	
	@RequestMapping("/custompizzabuilder/submit")
	public static String submitpizza(@RequestParam String pizzaSize,
			@RequestParam int tCount, @RequestParam Boolean gluten,
			@RequestParam(required = false) String specialIntructions ,
			Model model){
		
		double price = 0;
		if (pizzaSize.equalsIgnoreCase("small")) {
			price = 7 + (tCount * .50);
			
		}
		else if(pizzaSize.equalsIgnoreCase("medium")) {
			price = 10 + (tCount * 1.00);
		}
		else if(pizzaSize.equalsIgnoreCase("large")) {
			price = 12 + (tCount * 1.25);
		}
		
		if(gluten) {
			price += 2;
		}
		
		
		model.addAttribute("price",price);
		model.addAttribute("tCount",tCount);
		model.addAttribute("specInstuctions", specialIntructions);
		model.addAttribute("gluten", gluten);
		model.addAttribute("pizzaSize",pizzaSize);
		
				return "custompizzasubmit";
		
		
		
		
		
		
	}
	
	@RequestMapping("/custompizzabuilder")
	public static String custompizzabuilder(
			Model model) {
		
		List<String> pizzaToppings = new ArrayList<>();
		pizzaToppings.add("Pepperoni");
		pizzaToppings.add("Pinnapple");
		pizzaToppings.add("Peppers");
		pizzaToppings.add("Sausage");
		pizzaToppings.add("Onions");
		pizzaToppings.add("Anchovies");
		pizzaToppings.add("Olives");
		pizzaToppings.add("Bacon");
		
		
		
		
		model.addAttribute("pizzaToppings", pizzaToppings);
		
		
		return "custompizzabuilder";
		
	}
	
	@RequestMapping("/reviews")
	public static String reviews(Model model) {
		
		
		return "reviews";
		
	}
	
	@RequestMapping("/reviews/submit")
	public static String reviewsubmit(@RequestParam String fname,
									@RequestParam String comment,
									@RequestParam("rating") String rating,
									Model model) 
	{
		model.addAttribute("fname",fname);
		model.addAttribute("comment",comment);
		model.addAttribute("rating", rating);
	
										return "reviewssubmit";
		
	}
	
	
	@RequestMapping(value = "/specialtypizza", method = RequestMethod.GET)
	public String specialtyPage(@RequestParam String pname,double pprice, Model model) {
		
		model.addAttribute("pname",pname);
		model.addAttribute("pprice",pprice);
			
		return "specialtypizza";		
	}
}
