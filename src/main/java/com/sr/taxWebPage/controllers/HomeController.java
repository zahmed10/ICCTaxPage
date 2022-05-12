package com.sr.taxWebPage.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.sr.taxWebPage.models.LoginUser;
import com.sr.taxWebPage.models.User;
import com.sr.taxWebPage.models.UserForm;
import com.sr.taxWebPage.services.UserFormService;
import com.sr.taxWebPage.services.UserService;

@Controller
public class HomeController {
	@Autowired
	private UserFormService userFormServ;
	
	@Autowired
	private UserService userServ;
	
	@GetMapping("/mainPage")
	public String mainPage(Model model) {
		model.addAttribute("newUserForm", new UserForm());
		return "mainPage.jsp";
	}
	
	@GetMapping("/")
		public String home() {
			return "redirect:/mainPage";
		}
	@PostMapping("/UserForm/new")
	public String newUserFormInfo(@Valid @ModelAttribute("newUserForm") UserForm userForm, BindingResult result, Model model2) {
		model2.addAttribute("errors", result.hasErrors());
		if(result.hasErrors()) {
			return "mainPage.jsp";
		} else {
			if (userForm.getType().equals("single")) {
				int total = userForm.getSingle_donation_a()+ userForm.getSingle_donation_b();
				userForm.setTotal_single(total);
				userFormServ.createUserForm(userForm);
				
			} else {
				int total = userForm.getMarried_donation_a()+ userForm.getMarried_donation_b();
				userForm.setTotal_married(total);
				userFormServ.createUserForm(userForm);
				
			}
			return "redirect:/submit";
		}
		

	}
	@GetMapping("/submit")
	public String submit(Model model) {
		List<UserForm> allEntries = userFormServ.allUserForms();
		int length = allEntries.size();
		UserForm lastUser = allEntries.get(length-1);
//		System.out.println(lastUser.getFirstName());
		if (lastUser.getType().equals("single")) {
			int total = lastUser.getSingle_donation_a()+ lastUser.getSingle_donation_b();	
			model.addAttribute("monies", total);
		} else {
			int total = lastUser.getMarried_donation_a()+ lastUser.getMarried_donation_b();	
			model.addAttribute("monies", total);
		}
		return "submit.jsp";
	}
	
	@GetMapping("/admin")
	public String admin(Model model, HttpSession session){
		List<User> allUsers = userServ.allUsers();
		
//		for (int i=0; i<allUsers.size(); i++) {
//			
//			System.out.println(allUsers.get(i));
//		}
		if (allUsers.isEmpty()) {
			return "redirect:/startRegister";
		} else {
			Long userId = (Long) session.getAttribute("user_id");
	    	if (userId == null) {
	    		return "redirect:/startLogin";
	    	} 
	    	List<UserForm> allForms = userFormServ.allUserForms();
	    	model.addAttribute("userForms", allForms);
	    	return "admin.jsp";
		}
		
	}
	
	@GetMapping("/startLogin")
    public String index(Model model) {
    
        // Bind empty User and LoginUser objects to the JSP
        // to capture the form input
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "index.jsp";
    }
	
	@GetMapping("/startRegister")
		public String register(Model model) {
//		Route guard
List<User> allUsers = userServ.allUsers();

		if (!allUsers.isEmpty()) {
			return "redirect:/startLogin";
		}
		// Bind empty User and LoginUser objects to the JSP
        // to capture the form input
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "register.jsp";
		}
	
	
	 @PostMapping("/register")
	    public String register(@Valid @ModelAttribute("newUser") User newUser, 
	            BindingResult result, Model model, HttpSession session) {
		 	userServ.register(newUser, result);
	        if(result.hasErrors()) {
	        	// Be sure to send in the empty LoginUser before 
	            // re-rendering the page.
	            model.addAttribute("newLogin", new LoginUser());
	            return "register.jsp";
	        }
	     // No errors! 
	        // TO-DO Later: Store their ID from the DB in session, 
	        // in other words, log them in.
	    
	        session.setAttribute("user_id", newUser.getId());
	        return "redirect:/admin";
	        // TO-DO Later -- call a register method in the service 
	        // to do some extra validations and create a new user!
	        
	       
	        
	        
	    }
	 
	 
	    
	    @PostMapping("/login")
	    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
	            BindingResult result, Model model, HttpSession session) {
	    	User user = userServ.login(newLogin, result);
	        if(result.hasErrors()) {
	            model.addAttribute("newUser", new User());
	            return "index.jsp";
	        }
	     // No errors! 
	        // TO-DO Later: Store their ID from the DB in session, 
	        // in other words, log them in.
	        session.setAttribute("user_id", user.getId());
	        return "redirect:/admin";
			// Add once service is implemented:
			// User user = userServ.login(newLogin, result);
	    
	        
	    
	        
	    
	    }
	    
//	    logout route
	    @GetMapping("/logout")
		public String logout(HttpSession session) {
			session.invalidate();
			return "redirect:/";
		}
}

