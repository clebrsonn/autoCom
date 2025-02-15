// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.tecsoluction.sac.jsf;

import br.com.tecsoluction.sac.DevolucaoCompra;
import br.com.tecsoluction.sac.Item;
import br.com.tecsoluction.sac.PedidoCompra;
import br.com.tecsoluction.sac.jsf.DevolucaoCompraBean;
import br.com.tecsoluction.sac.jsf.converter.ItemConverter;
import br.com.tecsoluction.sac.jsf.converter.PedidoCompraConverter;
import br.com.tecsoluction.sac.jsf.util.MessageFactory;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.PostConstruct;
import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.UISelectItems;
import javax.faces.component.html.HtmlOutputText;
import javax.faces.component.html.HtmlPanelGrid;
import javax.faces.context.FacesContext;
import javax.faces.convert.DateTimeConverter;
import org.primefaces.component.autocomplete.AutoComplete;
import org.primefaces.component.calendar.Calendar;
import org.primefaces.component.inputtext.InputText;
import org.primefaces.component.message.Message;
import org.primefaces.component.outputlabel.OutputLabel;
import org.primefaces.component.selectmanymenu.SelectManyMenu;
import org.primefaces.context.RequestContext;
import org.primefaces.event.CloseEvent;

privileged aspect DevolucaoCompraBean_Roo_ManagedBean {
    
    declare @type: DevolucaoCompraBean: @ManagedBean(name = "devolucaoCompraBean");
    
    declare @type: DevolucaoCompraBean: @SessionScoped;
    
    private String DevolucaoCompraBean.name = "DevolucaoCompras";
    
    private DevolucaoCompra DevolucaoCompraBean.devolucaoCompra;
    
    private List<DevolucaoCompra> DevolucaoCompraBean.allDevolucaoCompras;
    
    private boolean DevolucaoCompraBean.dataVisible = false;
    
    private List<String> DevolucaoCompraBean.columns;
    
    private HtmlPanelGrid DevolucaoCompraBean.createPanelGrid;
    
    private HtmlPanelGrid DevolucaoCompraBean.editPanelGrid;
    
    private HtmlPanelGrid DevolucaoCompraBean.viewPanelGrid;
    
    private boolean DevolucaoCompraBean.createDialogVisible = false;
    
    private List<Item> DevolucaoCompraBean.selectedItens;
    
    @PostConstruct
    public void DevolucaoCompraBean.init() {
        columns = new ArrayList<String>();
        columns.add("datacompra");
        columns.add("status");
    }
    
    public String DevolucaoCompraBean.getName() {
        return name;
    }
    
    public List<String> DevolucaoCompraBean.getColumns() {
        return columns;
    }
    
    public List<DevolucaoCompra> DevolucaoCompraBean.getAllDevolucaoCompras() {
        return allDevolucaoCompras;
    }
    
    public void DevolucaoCompraBean.setAllDevolucaoCompras(List<DevolucaoCompra> allDevolucaoCompras) {
        this.allDevolucaoCompras = allDevolucaoCompras;
    }
    
    public String DevolucaoCompraBean.findAllDevolucaoCompras() {
        allDevolucaoCompras = DevolucaoCompra.findAllDevolucaoCompras();
        dataVisible = !allDevolucaoCompras.isEmpty();
        return null;
    }
    
    public boolean DevolucaoCompraBean.isDataVisible() {
        return dataVisible;
    }
    
    public void DevolucaoCompraBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid DevolucaoCompraBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void DevolucaoCompraBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid DevolucaoCompraBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void DevolucaoCompraBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid DevolucaoCompraBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void DevolucaoCompraBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid DevolucaoCompraBean.populateCreatePanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel datacompraCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        datacompraCreateOutput.setFor("datacompraCreateInput");
        datacompraCreateOutput.setId("datacompraCreateOutput");
        datacompraCreateOutput.setValue("Datacompra:");
        htmlPanelGrid.getChildren().add(datacompraCreateOutput);
        
        Calendar datacompraCreateInput = (Calendar) application.createComponent(Calendar.COMPONENT_TYPE);
        datacompraCreateInput.setId("datacompraCreateInput");
        datacompraCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{devolucaoCompraBean.devolucaoCompra.datacompra}", Date.class));
        datacompraCreateInput.setNavigator(true);
        datacompraCreateInput.setEffect("slideDown");
        datacompraCreateInput.setPattern("dd/MM/yyyy");
        datacompraCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(datacompraCreateInput);
        
        Message datacompraCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        datacompraCreateInputMessage.setId("datacompraCreateInputMessage");
        datacompraCreateInputMessage.setFor("datacompraCreateInput");
        datacompraCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(datacompraCreateInputMessage);
        
        OutputLabel pedidocompraCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        pedidocompraCreateOutput.setFor("pedidocompraCreateInput");
        pedidocompraCreateOutput.setId("pedidocompraCreateOutput");
        pedidocompraCreateOutput.setValue("Pedidocompra:");
        htmlPanelGrid.getChildren().add(pedidocompraCreateOutput);
        
        AutoComplete pedidocompraCreateInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        pedidocompraCreateInput.setId("pedidocompraCreateInput");
        pedidocompraCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{devolucaoCompraBean.devolucaoCompra.pedidocompra}", PedidoCompra.class));
        pedidocompraCreateInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{devolucaoCompraBean.completePedidocompra}", List.class, new Class[] { String.class }));
        pedidocompraCreateInput.setDropdown(true);
        pedidocompraCreateInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "pedidocompra", String.class));
        pedidocompraCreateInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{pedidocompra.datapedidocompra} #{pedidocompra.total}", String.class));
        pedidocompraCreateInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{pedidocompra}", PedidoCompra.class));
        pedidocompraCreateInput.setConverter(new PedidoCompraConverter());
        pedidocompraCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(pedidocompraCreateInput);
        
        Message pedidocompraCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        pedidocompraCreateInputMessage.setId("pedidocompraCreateInputMessage");
        pedidocompraCreateInputMessage.setFor("pedidocompraCreateInput");
        pedidocompraCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(pedidocompraCreateInputMessage);
        
        OutputLabel statusCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        statusCreateOutput.setFor("statusCreateInput");
        statusCreateOutput.setId("statusCreateOutput");
        statusCreateOutput.setValue("Status:");
        htmlPanelGrid.getChildren().add(statusCreateOutput);
        
        InputText statusCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        statusCreateInput.setId("statusCreateInput");
        statusCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{devolucaoCompraBean.devolucaoCompra.status}", String.class));
        statusCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(statusCreateInput);
        
        Message statusCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        statusCreateInputMessage.setId("statusCreateInputMessage");
        statusCreateInputMessage.setFor("statusCreateInput");
        statusCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(statusCreateInputMessage);
        
        OutputLabel itensCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        itensCreateOutput.setFor("itensCreateInput");
        itensCreateOutput.setId("itensCreateOutput");
        itensCreateOutput.setValue("Itens:");
        htmlPanelGrid.getChildren().add(itensCreateOutput);
        
        SelectManyMenu itensCreateInput = (SelectManyMenu) application.createComponent(SelectManyMenu.COMPONENT_TYPE);
        itensCreateInput.setId("itensCreateInput");
        itensCreateInput.setConverter(new ItemConverter());
        itensCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{devolucaoCompraBean.selectedItens}", List.class));
        UISelectItems itensCreateInputItems = (UISelectItems) application.createComponent(UISelectItems.COMPONENT_TYPE);
        itensCreateInputItems.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{itemBean.allItems}", List.class));
        itensCreateInput.setRequired(false);
        itensCreateInputItems.setValueExpression("var", expressionFactory.createValueExpression(elContext, "item", String.class));
        itensCreateInputItems.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{item}", String.class));
        itensCreateInputItems.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{item}", Item.class));
        itensCreateInput.getChildren().add(itensCreateInputItems);
        htmlPanelGrid.getChildren().add(itensCreateInput);
        
        Message itensCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        itensCreateInputMessage.setId("itensCreateInputMessage");
        itensCreateInputMessage.setFor("itensCreateInput");
        itensCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(itensCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid DevolucaoCompraBean.populateEditPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel datacompraEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        datacompraEditOutput.setFor("datacompraEditInput");
        datacompraEditOutput.setId("datacompraEditOutput");
        datacompraEditOutput.setValue("Datacompra:");
        htmlPanelGrid.getChildren().add(datacompraEditOutput);
        
        Calendar datacompraEditInput = (Calendar) application.createComponent(Calendar.COMPONENT_TYPE);
        datacompraEditInput.setId("datacompraEditInput");
        datacompraEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{devolucaoCompraBean.devolucaoCompra.datacompra}", Date.class));
        datacompraEditInput.setNavigator(true);
        datacompraEditInput.setEffect("slideDown");
        datacompraEditInput.setPattern("dd/MM/yyyy");
        datacompraEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(datacompraEditInput);
        
        Message datacompraEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        datacompraEditInputMessage.setId("datacompraEditInputMessage");
        datacompraEditInputMessage.setFor("datacompraEditInput");
        datacompraEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(datacompraEditInputMessage);
        
        OutputLabel pedidocompraEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        pedidocompraEditOutput.setFor("pedidocompraEditInput");
        pedidocompraEditOutput.setId("pedidocompraEditOutput");
        pedidocompraEditOutput.setValue("Pedidocompra:");
        htmlPanelGrid.getChildren().add(pedidocompraEditOutput);
        
        AutoComplete pedidocompraEditInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        pedidocompraEditInput.setId("pedidocompraEditInput");
        pedidocompraEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{devolucaoCompraBean.devolucaoCompra.pedidocompra}", PedidoCompra.class));
        pedidocompraEditInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{devolucaoCompraBean.completePedidocompra}", List.class, new Class[] { String.class }));
        pedidocompraEditInput.setDropdown(true);
        pedidocompraEditInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "pedidocompra", String.class));
        pedidocompraEditInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{pedidocompra.datapedidocompra} #{pedidocompra.total}", String.class));
        pedidocompraEditInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{pedidocompra}", PedidoCompra.class));
        pedidocompraEditInput.setConverter(new PedidoCompraConverter());
        pedidocompraEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(pedidocompraEditInput);
        
        Message pedidocompraEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        pedidocompraEditInputMessage.setId("pedidocompraEditInputMessage");
        pedidocompraEditInputMessage.setFor("pedidocompraEditInput");
        pedidocompraEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(pedidocompraEditInputMessage);
        
        OutputLabel statusEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        statusEditOutput.setFor("statusEditInput");
        statusEditOutput.setId("statusEditOutput");
        statusEditOutput.setValue("Status:");
        htmlPanelGrid.getChildren().add(statusEditOutput);
        
        InputText statusEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        statusEditInput.setId("statusEditInput");
        statusEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{devolucaoCompraBean.devolucaoCompra.status}", String.class));
        statusEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(statusEditInput);
        
        Message statusEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        statusEditInputMessage.setId("statusEditInputMessage");
        statusEditInputMessage.setFor("statusEditInput");
        statusEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(statusEditInputMessage);
        
        OutputLabel itensEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        itensEditOutput.setFor("itensEditInput");
        itensEditOutput.setId("itensEditOutput");
        itensEditOutput.setValue("Itens:");
        htmlPanelGrid.getChildren().add(itensEditOutput);
        
        SelectManyMenu itensEditInput = (SelectManyMenu) application.createComponent(SelectManyMenu.COMPONENT_TYPE);
        itensEditInput.setId("itensEditInput");
        itensEditInput.setConverter(new ItemConverter());
        itensEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{devolucaoCompraBean.selectedItens}", List.class));
        UISelectItems itensEditInputItems = (UISelectItems) application.createComponent(UISelectItems.COMPONENT_TYPE);
        itensEditInputItems.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{itemBean.allItems}", List.class));
        itensEditInput.setRequired(false);
        itensEditInputItems.setValueExpression("var", expressionFactory.createValueExpression(elContext, "item", String.class));
        itensEditInputItems.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{item}", String.class));
        itensEditInputItems.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{item}", Item.class));
        itensEditInput.getChildren().add(itensEditInputItems);
        htmlPanelGrid.getChildren().add(itensEditInput);
        
        Message itensEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        itensEditInputMessage.setId("itensEditInputMessage");
        itensEditInputMessage.setFor("itensEditInput");
        itensEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(itensEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid DevolucaoCompraBean.populateViewPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        HtmlOutputText datacompraLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        datacompraLabel.setId("datacompraLabel");
        datacompraLabel.setValue("Datacompra:");
        htmlPanelGrid.getChildren().add(datacompraLabel);
        
        HtmlOutputText datacompraValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        datacompraValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{devolucaoCompraBean.devolucaoCompra.datacompra}", Date.class));
        DateTimeConverter datacompraValueConverter = (DateTimeConverter) application.createConverter(DateTimeConverter.CONVERTER_ID);
        datacompraValueConverter.setPattern("dd/MM/yyyy");
        datacompraValue.setConverter(datacompraValueConverter);
        htmlPanelGrid.getChildren().add(datacompraValue);
        
        HtmlOutputText pedidocompraLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        pedidocompraLabel.setId("pedidocompraLabel");
        pedidocompraLabel.setValue("Pedidocompra:");
        htmlPanelGrid.getChildren().add(pedidocompraLabel);
        
        HtmlOutputText pedidocompraValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        pedidocompraValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{devolucaoCompraBean.devolucaoCompra.pedidocompra}", PedidoCompra.class));
        pedidocompraValue.setConverter(new PedidoCompraConverter());
        htmlPanelGrid.getChildren().add(pedidocompraValue);
        
        HtmlOutputText statusLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        statusLabel.setId("statusLabel");
        statusLabel.setValue("Status:");
        htmlPanelGrid.getChildren().add(statusLabel);
        
        HtmlOutputText statusValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        statusValue.setId("statusValue");
        statusValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{devolucaoCompraBean.devolucaoCompra.status}", String.class));
        htmlPanelGrid.getChildren().add(statusValue);
        
        HtmlOutputText itensLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        itensLabel.setId("itensLabel");
        itensLabel.setValue("Itens:");
        htmlPanelGrid.getChildren().add(itensLabel);
        
        SelectManyMenu itensValue = (SelectManyMenu) application.createComponent(SelectManyMenu.COMPONENT_TYPE);
        itensValue.setId("itensValue");
        itensValue.setConverter(new ItemConverter());
        itensValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{devolucaoCompraBean.selectedItens}", List.class));
        UISelectItems itensValueItems = (UISelectItems) application.createComponent(UISelectItems.COMPONENT_TYPE);
        itensValue.setReadonly(true);
        itensValue.setDisabled(true);
        itensValueItems.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{devolucaoCompraBean.devolucaoCompra.itens}", Set.class));
        itensValueItems.setValueExpression("var", expressionFactory.createValueExpression(elContext, "item", String.class));
        itensValueItems.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{item}", String.class));
        itensValueItems.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{item}", Item.class));
        itensValue.getChildren().add(itensValueItems);
        htmlPanelGrid.getChildren().add(itensValue);
        
        return htmlPanelGrid;
    }
    
    public DevolucaoCompra DevolucaoCompraBean.getDevolucaoCompra() {
        if (devolucaoCompra == null) {
            devolucaoCompra = new DevolucaoCompra();
        }
        return devolucaoCompra;
    }
    
    public void DevolucaoCompraBean.setDevolucaoCompra(DevolucaoCompra devolucaoCompra) {
        this.devolucaoCompra = devolucaoCompra;
    }
    
    public List<PedidoCompra> DevolucaoCompraBean.completePedidocompra(String query) {
        List<PedidoCompra> suggestions = new ArrayList<PedidoCompra>();
        for (PedidoCompra pedidoCompra : PedidoCompra.findAllPedidoCompras()) {
            String pedidoCompraStr = String.valueOf(pedidoCompra.getDatapedidocompra() +  " "  + pedidoCompra.getTotal());
            if (pedidoCompraStr.toLowerCase().startsWith(query.toLowerCase())) {
                suggestions.add(pedidoCompra);
            }
        }
        return suggestions;
    }
    
    public List<Item> DevolucaoCompraBean.getSelectedItens() {
        return selectedItens;
    }
    
    public void DevolucaoCompraBean.setSelectedItens(List<Item> selectedItens) {
        if (selectedItens != null) {
            devolucaoCompra.setItens(new HashSet<Item>(selectedItens));
        }
        this.selectedItens = selectedItens;
    }
    
    public String DevolucaoCompraBean.onEdit() {
        if (devolucaoCompra != null && devolucaoCompra.getItens() != null) {
            selectedItens = new ArrayList<Item>(devolucaoCompra.getItens());
        }
        return null;
    }
    
    public boolean DevolucaoCompraBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void DevolucaoCompraBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String DevolucaoCompraBean.displayList() {
        createDialogVisible = false;
        findAllDevolucaoCompras();
        return "devolucaoCompra";
    }
    
    public String DevolucaoCompraBean.displayCreateDialog() {
        devolucaoCompra = new DevolucaoCompra();
        createDialogVisible = true;
        return "devolucaoCompra";
    }
    
    public String DevolucaoCompraBean.persist() {
        String message = "";
        if (devolucaoCompra.getId() != null) {
            devolucaoCompra.merge();
            message = "message_successfully_updated";
        } else {
            devolucaoCompra.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "DevolucaoCompra");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllDevolucaoCompras();
    }
    
    public String DevolucaoCompraBean.delete() {
        devolucaoCompra.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "DevolucaoCompra");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllDevolucaoCompras();
    }
    
    public void DevolucaoCompraBean.reset() {
        devolucaoCompra = null;
        selectedItens = null;
        createDialogVisible = false;
    }
    
    public void DevolucaoCompraBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}
