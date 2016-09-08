package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.PedidoVenda;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = PedidoVenda.class, beanName = "pedidoVendaBean")
public class PedidoVendaBean {
}
