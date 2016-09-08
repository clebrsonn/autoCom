package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.Usuario;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Usuario.class)
public class UsuarioConverter implements Converter {
}
