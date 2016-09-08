package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.Pagamento;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Pagamento.class, beanName = "pagamentoBean")
public class PagamentoBean {
}
