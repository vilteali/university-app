package com.ali.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ali.model.Usuario;

@Repository
public class UsuarioDAOManager implements UsuarioDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Usuario validarUsuario(String usuario, String clave) {
		Session mySession = sessionFactory.getCurrentSession();
		
		String sql = "from Usuario where nombre='"+usuario+"' and clave='"+clave+"'";
		Usuario user = (Usuario) mySession.createQuery(sql).uniqueResult();

		return user;
	}
	
	@Override
	public Usuario getUsuario(Integer id) {
		
		Session mySession = sessionFactory.getCurrentSession();
		Usuario user = mySession.get(Usuario.class, id);
		
		return user;
	}


}
