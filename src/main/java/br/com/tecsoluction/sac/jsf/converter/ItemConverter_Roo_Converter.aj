// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.tecsoluction.sac.jsf.converter;

import br.com.tecsoluction.sac.Item;
import br.com.tecsoluction.sac.jsf.converter.ItemConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.FacesConverter;

privileged aspect ItemConverter_Roo_Converter {
    
    declare @type: ItemConverter: @FacesConverter("br.com.tecsoluction.sac.jsf.converter.ItemConverter");
    
    public Object ItemConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Long id = Long.parseLong(value);
        return Item.findItem(id);
    }
    
    public String ItemConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof Item ? ((Item) value).getId().toString() : "";
    }
    
}
