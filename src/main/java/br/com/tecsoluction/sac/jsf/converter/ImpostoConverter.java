package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.Imposto;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Imposto.class)
public class ImpostoConverter implements Converter {
}
