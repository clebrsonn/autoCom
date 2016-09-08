package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.DevolucaoCompra;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = DevolucaoCompra.class)
public class DevolucaoCompraConverter implements Converter {
}
