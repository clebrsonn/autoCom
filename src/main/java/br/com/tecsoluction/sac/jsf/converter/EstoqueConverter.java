package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.Estoque;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Estoque.class)
public class EstoqueConverter implements Converter {
}
