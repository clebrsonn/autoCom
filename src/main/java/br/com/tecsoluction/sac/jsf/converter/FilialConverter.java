package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.Filial;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Filial.class)
public class FilialConverter implements Converter {
}
