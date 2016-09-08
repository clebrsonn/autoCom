package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.Marca;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Marca.class)
public class MarcaConverter implements Converter {
}
