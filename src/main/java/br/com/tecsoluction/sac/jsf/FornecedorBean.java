package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.Fornecedor;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Fornecedor.class, beanName = "fornecedorBean")
public class FornecedorBean {
}
