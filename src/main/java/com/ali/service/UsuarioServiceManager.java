package com.ali.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ali.dao.UsuarioDAO;
import com.ali.model.Usuario;

@Service
public class UsuarioServiceManager implements UsuarioService {
	
	@Autowired
	private UsuarioDAO usuarioDAO;
	
	@Override
	@Transactional
	public Usuario validarUsuario(String usuario, String clave) {
		return usuarioDAO.validarUsuario(usuario, clave);
	}

	@Override
	@Transactional
	public Usuario getUsuario(Integer id) {
		return usuarioDAO.getUsuario(id);
	}

}
