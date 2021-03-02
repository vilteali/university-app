package com.ali.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="usuario_alumno")
@PrimaryKeyJoinColumn(name="id_usuario")
public class UsuarioAlumno extends Usuario {
	
//	@ManyToOne(cascade=CascadeType.ALL)
//	@JoinColumn(name="id_usuario_tipo", nullable=false)
//	private Usuario usuario;
	
	@Transient
	@Column(name="dni")
	private Integer dni;
	
	@Transient
	@Column(name="numero_legajo")
	private Integer numeroLegajo;
	
	@ManyToMany(mappedBy = "usuarioAlumno", cascade= {
			CascadeType.PERSIST,CascadeType.MERGE,CascadeType.DETACH,CascadeType.REFRESH })
	private List<Materia> materia;

	public Integer getDni() {
		return dni;
	}

	public void setDni(Integer dni) {
		this.dni = dni;
	}

	public Integer getNumeroLegajo() {
		return numeroLegajo;
	}

	public void setNumeroLegajo(Integer numeroLegajo) {
		this.numeroLegajo = numeroLegajo;
	}
	
}
