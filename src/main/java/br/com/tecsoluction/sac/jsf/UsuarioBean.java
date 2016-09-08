package br.com.tecsoluction.sac.jsf;
import br.com.tecsoluction.sac.Usuario;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Usuario.class, beanName = "usuarioBean")
public class UsuarioBean {
}
