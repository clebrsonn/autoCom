package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.Composto;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Composto.class, beanName = "compostoBean")
public class CompostoBean {
}
