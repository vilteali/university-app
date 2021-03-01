package com.ali.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="usuario_tipo")
public class UsuarioTipo {
	
	public static final Long USUARIO_ADMINISTRADOR = 1L;
	public static final Long USUARIO_PROFESOR = 2L;
	public static final Long USUARIO_ALUMNO = 3L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;
	
	@Column(name="nombre")
	private String nombre;
}
