// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.tecsoluction.sac.jsf.converter;

import br.com.tecsoluction.sac.Composto;
import br.com.tecsoluction.sac.jsf.converter.CompostoConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.FacesConverter;

privileged aspect CompostoConverter_Roo_Converter {
    
    declare @type: CompostoConverter: @FacesConverter("br.com.tecsoluction.sac.jsf.converter.CompostoConverter");
    
    public Object CompostoConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Long id = Long.parseLong(value);
        return Composto.findComposto(id);
    }
    
    public String CompostoConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof Composto ? ((Composto) value).getId().toString() : "";
    }
    
}
