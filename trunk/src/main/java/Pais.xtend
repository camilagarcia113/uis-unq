package main.java

import java.util.List
import org.uqbar.commons.utils.Observable
import org.uqbar.commons.model.ObservableUtils

@Observable
class Pais {
	@Property String nombre
	@Property List<String> caracteristicas
	@Property List<LugarDeInteres> lugaresDeInteres
	@Property List<Pais> conexiones
	
	def agregarCaracteristica(String caracteristica) {
		this._caracteristicas.add(caracteristica)
		ObservableUtils.firePropertyChanged(this,"caracteristicas",caracteristicas)
	}
	
//	new(String nombre, Map<String, String> caracteristicas,
//		List<LugarDeInteres> lugaresDeInteres, List<Pais> paisesConectados) {
//		this.nombre = nombre
//		this.caracteristicas = caracteristicas
//		this.lugaresDeInteres = lugaresDeInteres
//		this.conexiones = paisesConectados	
//	}

	new() {
		caracteristicas = newArrayList
		lugaresDeInteres = newArrayList
		conexiones = newArrayList
	}
	
	def borrarCaracteristica(String caracteristica) {
		this._caracteristicas.remove(caracteristica)
		ObservableUtils.firePropertyChanged(this,"caracteristicas",caracteristicas)
	}
	
}