package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.Marca;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Marca.class, beanName = "marcaBean")
public class MarcaBean {
}
