package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.Pagamento;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Pagamento.class)
public class PagamentoConverter implements Converter {
}
