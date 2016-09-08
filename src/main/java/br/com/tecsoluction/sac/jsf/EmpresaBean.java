package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.Empresa;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Empresa.class, beanName = "empresaBean")
public class EmpresaBean {
}
