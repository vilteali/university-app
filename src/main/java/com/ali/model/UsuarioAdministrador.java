package com.ali.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="usuario_administrador")
@PrimaryKeyJoinColumn(name="id_usuario")
public class UsuarioAdministrador extends Usuario {
	
//	@ManyToOne(cascade=CascadeType.ALL)
//	@JoinColumn( name="id_usuario_tipo", nullable=false )
//	private Usuario usuario;
	
}
