package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.PedidoCompra;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = PedidoCompra.class)
public class PedidoCompraConverter implements Converter {
}
