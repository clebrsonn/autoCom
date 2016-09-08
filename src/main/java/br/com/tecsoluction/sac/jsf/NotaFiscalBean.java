package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.NotaFiscal;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = NotaFiscal.class, beanName = "notaFiscalBean")
public class NotaFiscalBean {
}
