object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var sueldo = 15000
//	method sueldo() { return sueldo }
//	method sueldo(nuevoValor) { sueldo = nuevoValor }
	
	var property sueldo = 15000
	var property dinero = 0
	
	method gastar(cuanto) { dinero -= cuanto }
	
	method totalDeuda() =
		if ( dinero < 0) {
			dinero * -1
		}
		else { 0 }

	method totalDinero() =
		if ( dinero > 0) {
			dinero
		}
		else { 0 }
		
	method cobrarSueldo () { dinero += sueldo }
 }

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var sueldoAcumulado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method cobrarSueldo() {
		sueldoAcumulado += self.sueldo()
	}
	
	method totalCobrado() = sueldoAcumulado
}

object gimenez {
	var property dinero = 300000
//	method dinero() { return dinero }

	method pagarA( empleado ) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
