/*
* Copyright 2002-2013 the original author or authors.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
package org.springframework.samples.dobble.user;

import java.util.Map;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

/**
* @author Juergen Hoeller
* @author Ken Krebs
* @author Arjen Poutsma
* @author Michael Isvy
*/
@Controller
public class UserController {

   private static final String VIEWS_OWNER_CREATE_FORM = "users/createOwnerForm";

   UserService userService;
   
   @Autowired
   public UserController(UserService userService){
	 this.userService = userService;
   }

   @InitBinder
   public void setAllowedFields(WebDataBinder dataBinder) {
	   dataBinder.setDisallowedFields("id");
   }

   @GetMapping(value = "/users/new")
   public String initCreationForm(Map<String, Object> model) {
	   User user = new User();
	   model.put("user", user);
	   return VIEWS_OWNER_CREATE_FORM;
   }

   @PostMapping(value = "/users/new")
   public String processCreationForm(@Valid User user, BindingResult result) {
	   if (result.hasErrors()) {
		   return VIEWS_OWNER_CREATE_FORM;
	   }
	   else {
		   //creating owner, user, and authority
		   this.userService.saveUser(user);
		   return "redirect:/";
	   }
   }

   @PreAuthorize("hasRole('admin')")
   @GetMapping()
   public ModelAndView showAllUsers(){
	   ModelAndView result = new ModelAndView(VIEWS_OWNER_CREATE_FORM);
	   result.addObject("users", userService.getUsers());
	   return result;
   }


   @PreAuthorize("hasRole('admin')")
   @GetMapping("/users/{username}")
   public ModelAndView showUser(@PathVariable("username") String username){
	   ModelAndView mav = new ModelAndView(VIEWS_OWNER_CREATE_FORM);
		User user = userService.findUser(username);
		mav.addObject(user);
	   return mav;
   }

   @GetMapping(path="/users/edit/{username}")
	public ModelAndView editarUser(@PathVariable("username") String username){		
		ModelAndView result=new ModelAndView("users/EditUser");
		result.addObject("user", userService.findUsername(username));
		return result;
	}
   


}
