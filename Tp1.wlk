object rojo{}

object verde{}

object naranja{}

object amarillo{}


object manzana{
	var color = verde
	const peso = 150
	var energiaQueProvee = 5 
	
		
	method peso(){
	 return 150	
	}
	
	method esGrande(){
	 return peso > 70	
	}
    
	method esFrutaMadura(){
	   return color == rojo
		}

	method energiaQueProvee(){
	 if(self.esFrutaMadura()){
	 return  5
	 }else{
	 return  14	
	 }  	
	}
	
	method color(){
	 return color
	}
	
	method madurar(){
	 color = rojo
	 energiaQueProvee = 14
	}
	
}    

object mandarina{
	const color = naranja
	var peso = 60
	var energiaQueProvee = 3 
	
	method peso(){
	 return peso	
	}
	
	method esGrande(){
	 return peso >= 70	
	}
	
	method energiaQueProvee(){
     if(self.esGrande()){
	   return 10
	 }else{
	  return 3	
	 }	
	}
	
	 method color(){
	 return color
	}
	
	method madurar(){
	 peso = peso + peso * 40 / 100
	 energiaQueProvee = 10	
	 }
	
	 method esFrutaMadura(){
	 return peso > 60
		}
	
}

object banana{
	const peso = 59

		
	method peso(){
	 return peso	
	}
	
	method esGrande(){
	 return peso > 70	
	}
	
	method energiaQueProvee(){
	 return 5
	}
	
	method color(){
	 return amarillo
	}
	
}

object martin{
	var edad = 14
	var energia = 15
	var unDeporte
	var cantidadDeVecesJugadas = 0
	var frutaComprada
	
	method cantidadDeVecesJugadas(){
		return cantidadDeVecesJugadas
	}
	
	method energia(){
	return energia
	}
	
	method frutaComprada(){
	 return frutaComprada	
	}
	
	method reducirEnergia(cantidadDeEnergia){
		energia -= cantidadDeEnergia
	}
	
	method esAdulto(){
	  return edad >= 18 
	}
	
	method hacerDeporte(deporte){
		unDeporte = deporte
		cantidadDeVecesJugadas = cantidadDeVecesJugadas + 1 
		
	}
	
	method tieneBajaEnergia(){
	   return self.esAdulto() and energia <= 2 
	   or not self.esAdulto() and energia <= 5		
	}
	
	method estaFeliz(){
	 return not self.tieneBajaEnergia()
	 and cantidadDeVecesJugadas >= 2   
		
	}
	
	method nuevoAnio(){
		edad = edad + 1  
	}
	
	method comprarFruta(unaFruta){
		frutaComprada = unaFruta
	}
	
	method hacerMadurarALaFruta(){
	  frutaComprada = frutaComprada.madurar()
	 }	 
	 
	method comer(){
	 energia = frutaComprada.energiaQueProvee() + energia
	}
	
	method esDeportista(){
	  return cantidadDeVecesJugadas % 2 == 0 and 0 == not true
	 
	}
	
	method frutaCompradaEs(fruta){
	  return frutaComprada == fruta
	}
	
}

object juana{
	
	var energia = 45
	var endorfina = 0
	var unDeporte
	var cantidadDeVecesJugadas = 0
	var frutaComprada
	
	
	method cantidadDeVecesJugadas(){
		return cantidadDeVecesJugadas
	}
	
	method energia(){
	return energia
	}
	
	method reducirEnergia(cantidadDeEnergia){
		energia -= cantidadDeEnergia
	}
	
	method frutaComprada(){
	 return frutaComprada	
	}
	
	method hacerDeporte(deporte){
		unDeporte = deporte
		endorfina = endorfina + 5 
		cantidadDeVecesJugadas = cantidadDeVecesJugadas + 1
		
	}
	
	method tieneBajaEnergia(){
	   return energia <= 25 		
	}
	
	method estaFeliz(){
	 return self.energia() /2 < endorfina 
		
	}
	
	method comprarFruta(unaFruta){
		frutaComprada = unaFruta
	}
	
     method hacerMadurarALaFruta(){
	  frutaComprada = frutaComprada.madurar()
	 }
	 
	method comer(){
	 energia = frutaComprada.energiaQueProvee() + energia
	}
	
	method esDeportista(){
	  return self.estaFeliz() and not self.tieneBajaEnergia()
	}
	
	method frutaCompradaEs(fruta){
	  return frutaComprada == fruta
	}
}

object pepe{
	var energia = 25
	var fuerza = 0
	var peso = 80
	var unDeporte
	var cantidadDeVecesJugadas = 0
	var frutaComprada
	
	
	method cantidadDeVecesJugadas(){
		return cantidadDeVecesJugadas
	}
	
	method energia(){
	return energia
	}
	
	method reducirEnergia(cantidadDeEnergia){
		energia -= cantidadDeEnergia
	}
	
	 method frutaComprada(){
	 return frutaComprada	
	}
	
	 method hacerDeporte(deporte){
		unDeporte = deporte
		fuerza = fuerza + 3 
		peso = peso - 1 
		energia = energia -1 
		cantidadDeVecesJugadas = cantidadDeVecesJugadas + 1
		
	}
	
	method tieneBajaEnergia(){
	   return true	
	}
	
	method estaFeliz(){
	 return peso < 75 and fuerza > 5
		
	}
	
	method comprarFruta(unaFruta){
		frutaComprada = unaFruta
	}
	
      method hacerMadurarALaFruta(){
	  frutaComprada = frutaComprada.madurar()
	 }
	 
	method comer(){
	 energia = frutaComprada.energiaQueProvee() + energia
 }
	
	method esDeportista(){
	  return true
	}
	
	method frutaCompradaEs(fruta){
	  return frutaComprada == fruta
	}
	
}

object voley{
	
	method esJugadoPor(jugador){
	if (jugador.frutaCompradaEs(banana))
	   jugador.reducirEnergia(12)
	if(jugador.frutaCompradaEs(mandarina))
	    jugador.reducirEnergia(8)	
	else
	   (jugador.reducirEnergia(5))
		
  }	
} 

object futbol{
	
	method esJugadoPor(jugador){
	if (not jugador.tieneBajaEnergia()){
	 return jugador.reducirEnergia(10)
	}else{
	 return jugador.reducirEnergia(5) 
    }	
   }
}


object basquet{
	
	method esJugadoPor(jugador){
	 return jugador.energia() - 3	
	}
	
}

object equipo{
	var delanteroDerecho
	var delanteroIzquierdo
	var defensor
	
	method asignarJugadores(delanDerecho, delanIzquierdo, defen){
		 delanteroDerecho =  delanDerecho
		 delanteroIzquierdo =  delanIzquierdo
		 defensor =  defen
	}
	
	method esEquipoDeDeportistas(){
	  return delanteroDerecho.esDeportista() and
	   delanteroIzquierdo.esDeportista() and
	   defensor.esDeportista()
	}
	
	method rotarPosiciones(){
		delanteroDerecho = delanteroIzquierdo
		defensor = delanteroDerecho
		defensor = delanteroIzquierdo
	}
	
	method jugadorConMasEnergia(){
	if(delanteroDerecho.energia() > delanteroIzquierdo.energia()){
		return delanteroDerecho
	}if(delanteroDerecho.energia() < defensor.energia()){
	   	 return defensor
	}else{
		return delanteroIzquierdo
	}	
  }
	
}

