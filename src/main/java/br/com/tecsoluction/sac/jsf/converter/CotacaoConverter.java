package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.Cotacao;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Cotacao.class)
public class CotacaoConverter implements Converter {
}
