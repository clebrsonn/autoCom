package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.Composto;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Composto.class)
public class CompostoConverter implements Converter {
}
