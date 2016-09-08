package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.Empresa;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Empresa.class)
public class EmpresaConverter implements Converter {
}
