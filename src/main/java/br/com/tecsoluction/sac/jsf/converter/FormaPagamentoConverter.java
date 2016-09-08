package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.FormaPagamento;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = FormaPagamento.class)
public class FormaPagamentoConverter implements Converter {
}
