package com.ali.model;

import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="materia")
public class Materia {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;
	
	@Column(name="nombre")
	private String nombre;
	
	@Column(name="descripcion")
	private String descripcion;
	
	@Column(name="cupo")
	private Integer cupo;
	
	@Column(name="fecha")
	private Timestamp fecha;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="id_profesor")
	private UsuarioProfesor profesor;

	@ManyToOne(cascade= {
			CascadeType.PERSIST,CascadeType.MERGE,CascadeType.DETACH,CascadeType.REFRESH })
	@JoinColumn(name="id_alumno")
	private UsuarioAlumno usuarioAlumno;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Integer getCupo() {
		return cupo;
	}

	public void setCupo(Integer cupo) {
		this.cupo = cupo;
	}

	public UsuarioProfesor getProfesor() {
		return profesor;
	}

	public void setProfesor(UsuarioProfesor profesor) {
		this.profesor = profesor;
	}

	public UsuarioAlumno getUsuarioAlumno() {
		return usuarioAlumno;
	}

	public void setUsuarioAlumno(UsuarioAlumno usuarioAlumno) {
		this.usuarioAlumno = usuarioAlumno;
	}
	
}
