package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.Caixa;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Caixa.class)
public class CaixaConverter implements Converter {
}
