<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
  <head runat="server">
    <title>Detalls de la reserva</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
        <asp:TextBox ID="IdReserva" runat="server" Enabled="false"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Nom"></asp:Label>
        <asp:TextBox ID="NomReserva" runat="server" Enabled="false"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Text="Cognoms"></asp:Label>
        <asp:TextBox ID="CognomsReserva" runat="server" Enabled="false"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Telefon"></asp:Label>
        <asp:TextBox ID="TelefonReserva" runat="server" Enabled="false"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text="Data de reserva"></asp:Label>
        <asp:Textbox ID="DataReserva" runat="server" Enabled="false"></asp:Textbox>
        <asp:Label ID="Label5" runat="server" Text="Comensals"></asp:Label>
        <asp:TextBox ID="ComensalsReserva" runat="server" Enabled="false"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Text="Comentaris"></asp:Label>
        <asp:TextBox ID="ComentariReserva" runat="server" Enabled="false"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Cancelar" OnClick="CancelarReserva"/>
    
    </div>
    </form>
  </body>
</html>
