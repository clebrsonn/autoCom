package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.Cliente;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Cliente.class, beanName = "clienteBean")
public class ClienteBean {
}
