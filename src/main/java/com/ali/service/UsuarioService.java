package com.ali.service;

import com.ali.model.Usuario;

public interface UsuarioService {

	Usuario validarUsuario(String usuario, String password);
	
	Usuario getUsuario(Integer id);
	
}
