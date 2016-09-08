package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.Cotacao;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Cotacao.class, beanName = "cotacaoBean")
public class CotacaoBean {
}
