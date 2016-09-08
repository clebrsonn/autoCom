package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.Recebimento;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Recebimento.class)
public class RecebimentoConverter implements Converter {
}
