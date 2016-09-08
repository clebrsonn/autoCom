package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.Categoria;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Categoria.class, beanName = "categoriaBean")
public class CategoriaBean {
}
