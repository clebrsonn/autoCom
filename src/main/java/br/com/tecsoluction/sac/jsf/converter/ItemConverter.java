package br.com.tecsoluction.sac.jsf.converter;
import br.com.tecsoluction.sac.Item;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Item.class)
public class ItemConverter implements Converter {
}
