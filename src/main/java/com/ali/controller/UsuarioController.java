package com.ali.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ali.model.Usuario;
import com.ali.service.UsuarioService;

@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	@GetMapping("/login")
	public String login(Model model) {
		
		return "login";
	}
	
	@PostMapping("/validar")
	public String validar(Model model, @RequestParam String usuario, 
			@RequestParam String clave) {
		
		Usuario user = usuarioService.validarUsuario(usuario, clave);
		
		if(user != null) {
			return "redirect:/usuario/home";
		} else {
			
			return "redirect:/usuario/login";
		}
		
	}
	
	@GetMapping("/register")
	public String register(Model model) {
		
		return "register";
	}
	
	@GetMapping("/home")
	public String home(Model model) {
		return "home";
	}
	
}
