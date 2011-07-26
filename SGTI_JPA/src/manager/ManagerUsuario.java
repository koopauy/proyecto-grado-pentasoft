package manager;

import java.util.List;

import javax.persistence.EntityManager;

import beans.Administrador;
import beans.Administrativo;
import beans.Tarea;
import beans.Tecnico;
import beans.Usuario;

public class ManagerUsuario {

	public void altaUsuario(EntityManager em, Usuario u){
		em.persist(u);
				
	}
	
	
	public List<Usuario> traerTodosUsuarios(EntityManager em) {
		@SuppressWarnings(value="unchecked")//para que deje de mostrar advertencia List need unchecked convertion
		List<Usuario> todos = em.createNamedQuery("todosUsuarios").getResultList();
		return todos;
	}
	
	public Usuario encontrarUsuario(EntityManager em, long cedula) {
		Usuario u = em.find(Usuario.class, cedula);
		return u;
	}
	
	public List<Tarea> tareasPorUsuario(EntityManager em,Usuario u) {
		@SuppressWarnings(value="unchecked")
		List<Tarea> tareas = em.createNamedQuery("tareasPorUsuario").setParameter("Usuario",u).getResultList();
		return tareas;
	}
	
	//ACTUALIZAR 
	public Usuario actualizarUsuario(EntityManager em, Usuario u) {
		u = em.merge(u);
		return u;
	}
	
	
	//ELIMINAR
	public void eliminarUsuario(EntityManager em, Usuario u) {
		em.remove(u);
	}
	
}
