package cl.supereduc.iesb.arquetipo.negocio.rs;

import org.apache.camel.Exchange;
import org.apache.commons.lang.math.NumberUtils;

/**
 * Clase validadora.
 * 
 * @author Redhat - Carlos Abuffón
 * @since 03/11/2016
 * @version 1.0
 */
public class ValidaEntrada {

	/**
	 * Clase java que recibe un parametro y valida que sea de tipo numerico.
	 * @param Exchange - Escenario de intercambio de endpoint, en este caso 
	 * el parametro param1.
	 * @return retorna un booleano true dependiendo si cumple con la validación.
	 */
	public boolean validaDatosJson(Exchange ex) {
/*habilitar para validar cuando un parametro de entrada debe ser numerico*/		
//		return NumberUtils.isNumber(ex.getIn().getHeader("param1").toString());
		return true;
	}

}