//package com.ali.model;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.Table;
//
//@Entity
//@Table(name="usuario_alumno")
//public class UsuarioAlumno extends Usuario {
//	
//	public UsuarioAlumno() { }
//	
//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	@Column(name="id")
//	private Integer id;
//	
////	@Column(name="dni")
////	private Integer dni;
//	
//	@Column(name="numero_legajo")
//	private Integer numeroLegajo;
//
//	public Integer getId() {
//		return id;
//	}
//
//	public void setId(Integer id) {
//		this.id = id;
//	}
//
////	public Integer getDni() {
////		return dni;
////	}
////
////	public void setDni(Integer dni) {
////		this.dni = dni;
////	}
//
//	public Integer getNumeroLegajo() {
//		return numeroLegajo;
//	}
//
//	public void setNumeroLegajo(Integer numeroLegajo) {
//		this.numeroLegajo = numeroLegajo;
//	}
//	
////	@OneToMany(mappedBy = "usuarioAlumno", cascade= {
////			CascadeType.PERSIST,CascadeType.MERGE,CascadeType.DETACH,CascadeType.REFRESH })
////	private List<Materia> materia;
//	
//}
