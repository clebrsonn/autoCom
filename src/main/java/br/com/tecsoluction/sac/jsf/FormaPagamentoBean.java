package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.FormaPagamento;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = FormaPagamento.class, beanName = "formaPagamentoBean")
public class FormaPagamentoBean {
}
