package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.DevolucaoVenda;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = DevolucaoVenda.class)
public class DevolucaoVendaConverter implements Converter {
}
