package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.Filial;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Filial.class, beanName = "filialBean")
public class FilialBean {
}
