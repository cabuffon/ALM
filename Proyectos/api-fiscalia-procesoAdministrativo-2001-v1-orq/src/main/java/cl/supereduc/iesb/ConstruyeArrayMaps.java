package cl.supereduc.iesb;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.camel.Exchange;

/**
 * Clase Calculo.
 * 
 * @author Redhat - Cristian Quezada
 * @since 26/12/2016
 * @version 1.0
 */
public class ConstruyeArrayMaps {
	
	public static List<Map<String, Object>> lista = new ArrayList<Map<String,Object>>();
	

	/**
	 * Metodo que permite generar un valor adicional a la lista
	 * @param Exchange - Escenario de intercambio de endpoint, en este caso 
	 * el parametro param1.
	 * @return retorna un booleano true dependiendo si cumple con la validaci�n.
	 */
	public void incorporaValorLista(Exchange ex) {
		
//		long gastosRendicion = Long.parseLong((String) ex.getIn().getHeader("gastosRendicion"));
//		long ingresosRendicion = Long.parseLong((String) ex.getIn().getHeader("ingresosRendicion"));
//		long rechazosRendicion = Long.parseLong((String) ex.getIn().getHeader("rechazosRendicion"));
		
		
		Map<String, Object> data = new HashMap<String, Object>();
		
		data.put("numeroActaConsulta", (String)ex.getIn().getHeader("numeroActaConsulta"));
		data.put("fechaIngreso", String.valueOf(ex.getIn().getHeader("fechaIngreso")));
		data.put("tipoPrograma", (String)ex.getIn().getHeader("tipoPrograma"));
		data.put("estadoActa", (String)ex.getIn().getHeader("estadoActa"));
		data.put("fiscal", (String)ex.getIn().getHeader("fiscal"));
		
		data.put("sancionPrimeraInstancia", String.valueOf(ex.getIn().getHeader("sancionPrimeraInstancia")));
		data.put("montoMulta20529Primera", String.valueOf(ex.getIn().getHeader("montoMulta20529Primera")));
		data.put("montoReintegroPrimera", String.valueOf(ex.getIn().getHeader("montoReintegroPrimera")));
		
		data.put("sancionSegundaInstancia", String.valueOf(ex.getIn().getHeader("sancionSegundaInstancia")));
		data.put("montoMulta20529Segunda", String.valueOf(ex.getIn().getHeader("montoMulta20529Segunda")));
		data.put("montoReintegroSegunda", String.valueOf(ex.getIn().getHeader("montoReintegroSegunda")));	
		
		data.put("sancionEnLaCorte", String.valueOf(ex.getIn().getHeader("sancionEnLaCorte")));
		data.put("montoMulta20529Corte", String.valueOf(ex.getIn().getHeader("montoMulta20529Corte")));
		data.put("montoReintegroCorte", String.valueOf(ex.getIn().getHeader("montoReintegroCorte")));
		
		data.put("estadoActa", String.valueOf(ex.getIn().getHeader("estadoActa")));	
		
		System.out.println("data: "+data.toString());
		
		lista.add(data);
	}
	
	/**
	 * Metodo que genera salida del orquestador
	 * @param Exchange - Escenario de intercambio de endpoint, en este caso 
	 * el parametro param1.
	 * @return retorna un booleano true dependiendo si cumple con la validaci�n.
	 */	
	public List<Map<String, Object>> generaSalidaOrquestador(Exchange ex) {
		
//		long gastosRendicion = Long.parseLong((String) ex.getIn().getHeader("gastosRendicion"));
//		long ingresosRendicion = Long.parseLong((String) ex.getIn().getHeader("ingresosRendicion"));
//		long rechazosRendicion = Long.parseLong((String) ex.getIn().getHeader("rechazosRendicion"));
		
		
		System.out.println("lista.size(): "+lista.size());
		
		return lista;
	}	
}