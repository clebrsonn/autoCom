package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.Item;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Item.class, beanName = "itemBean")
public class ItemBean {
}
