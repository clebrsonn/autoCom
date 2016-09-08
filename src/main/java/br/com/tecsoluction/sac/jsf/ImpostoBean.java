package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.Imposto;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Imposto.class, beanName = "impostoBean")
public class ImpostoBean {
}
