package com.ali.dao;

import com.ali.model.Usuario;

public interface UsuarioDAO {

	Usuario validarUsuario(String usuario, String clave);
	
	Usuario getUsuario(Integer id);
	
}
