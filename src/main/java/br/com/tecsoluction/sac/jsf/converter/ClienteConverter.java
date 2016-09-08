package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.Cliente;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Cliente.class)
public class ClienteConverter implements Converter {
}
