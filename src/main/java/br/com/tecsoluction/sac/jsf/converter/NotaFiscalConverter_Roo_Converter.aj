// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.tecsoluction.sac.jsf.converter;

import br.com.tecsoluction.sac.NotaFiscal;
import br.com.tecsoluction.sac.jsf.converter.NotaFiscalConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.FacesConverter;

privileged aspect NotaFiscalConverter_Roo_Converter {
    
    declare @type: NotaFiscalConverter: @FacesConverter("br.com.tecsoluction.sac.jsf.converter.NotaFiscalConverter");
    
    public Object NotaFiscalConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Long id = Long.parseLong(value);
        return NotaFiscal.findNotaFiscal(id);
    }
    
    public String NotaFiscalConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof NotaFiscal ? ((NotaFiscal) value).getId().toString() : "";
    }
    
}
