package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.Estoque;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Estoque.class, beanName = "estoqueBean")
public class EstoqueBean {
}
