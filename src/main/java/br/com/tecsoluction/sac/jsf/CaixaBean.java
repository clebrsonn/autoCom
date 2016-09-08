package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.Caixa;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Caixa.class, beanName = "caixaBean")
public class CaixaBean {
}
