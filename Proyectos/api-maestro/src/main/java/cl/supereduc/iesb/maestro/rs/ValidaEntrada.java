package cl.supereduc.iesb.maestro.rs;

import org.apache.camel.Exchange;
import org.apache.commons.lang.math.NumberUtils;

/**
 * Clase validadora.
 * 
 * @author Redhat - Carlos Abuff�n
 * @since 03/11/2016
 * @version 1.0
 */
public class ValidaEntrada {
	
	/**
	 * Permite validar el parametro de entrada
	 * para este caso que reciba un numero.
	 * @param Exchange Escenario de intercambio de endpoint, en este caso el rut sostenedor.
	 * @return retorna un booleano true dependiendo si cumple con la validaci�n.
	 */
	public boolean validaDatosJson(Exchange ex){
		return NumberUtils.isNumber(ex.getIn().getHeader("rutSostenedor").toString());
	}

}