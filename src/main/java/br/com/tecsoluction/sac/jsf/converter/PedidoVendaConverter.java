package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.PedidoVenda;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = PedidoVenda.class)
public class PedidoVendaConverter implements Converter {
}
