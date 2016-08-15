<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reserves.aspx.cs" Inherits="Reserves" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Reserves</title>
</head>
<body>
        <h3>Reserves</h3>
        <form id="form1" runat="server">
    
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <div>
       
        <asp:GridView ID="CustomersGridView" runat="server" OnRowCommand="RowCommand">
            <Columns>
                <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="details" Text="Detalls" runat="server" CausesValidation="false"
                                    CommandName="DetallsReserva" CommandArgument='<%# Eval("ID") %>'
                                    />
                            </ItemTemplate>
                    </asp:TemplateField>
                <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="edit" Text="Modificar" runat="server" CausesValidation="false"
                              CommandName="EditReserva" CommandArgument='<%# Eval("id") %>'
                               />
                            </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                            <ItemTemplate>
                                  <asp:Button ID="delete" Text="Eliminar" runat="server" CausesValidation="false"
                              CommandName="EliminarReserva" CommandArgument='<%# Eval("id") %>'
                               />
                               </ItemTemplate>
                        </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Nova Reserva" OnClick="NovaReserva"/>
          
    </div>
    </ContentTemplate>
    </asp:UpdatePanel>

    </form>      

</body>
</html>