package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.Fornecedor;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Fornecedor.class)
public class FornecedorConverter implements Converter {
}
