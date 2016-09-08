package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.NotaFiscal;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = NotaFiscal.class)
public class NotaFiscalConverter implements Converter {
}
