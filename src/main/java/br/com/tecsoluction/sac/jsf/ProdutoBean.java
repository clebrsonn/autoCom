package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.Produto;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Produto.class, beanName = "produtoBean")
public class ProdutoBean {
}
