package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.PedidoCompra;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = PedidoCompra.class, beanName = "pedidoCompraBean")
public class PedidoCompraBean {
}
