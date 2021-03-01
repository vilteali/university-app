package com.ali.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ali.service.UsuarioService;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {
	
//	@Autowired
//	private UsuarioService usuarioService;
	
	@GetMapping("/login")
	public String login(Model model) {
		return "login";
	}
	
	@GetMapping("/home")
	public String home(Model model) {
		return "home";
	}
	
}
