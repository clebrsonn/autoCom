package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.Produto;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Produto.class)
public class ProdutoConverter implements Converter {
}
