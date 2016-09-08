package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.Mesa;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Mesa.class, beanName = "mesaBean")
public class MesaBean {
}
