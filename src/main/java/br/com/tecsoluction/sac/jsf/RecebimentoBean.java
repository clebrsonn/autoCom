package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.Recebimento;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Recebimento.class, beanName = "recebimentoBean")
public class RecebimentoBean {
}
