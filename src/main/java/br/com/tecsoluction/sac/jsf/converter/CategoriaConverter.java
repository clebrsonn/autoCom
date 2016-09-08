package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.Categoria;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Categoria.class)
public class CategoriaConverter implements Converter {
}
