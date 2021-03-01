package com.ali.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="usuario_alumno")
public class UsuarioAlumno extends Usuario {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;
	
	@Column(name="dni")
	private Integer dni;
	
	@Column(name="numero_legajo")
	private Integer numeroLegajo;
	
	@OneToMany(mappedBy = "usuarioAlumno", cascade= {
			CascadeType.PERSIST,CascadeType.MERGE,CascadeType.DETACH,CascadeType.REFRESH })
	private List<Materia> materia;
	
}
