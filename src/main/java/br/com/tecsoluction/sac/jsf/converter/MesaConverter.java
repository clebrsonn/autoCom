package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.Mesa;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Mesa.class)
public class MesaConverter implements Converter {
}
