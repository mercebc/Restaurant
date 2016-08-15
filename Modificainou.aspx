<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modificainou.aspx.cs" Inherits="Modificainou" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Modifica o introdueix una nova reserva</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      
        <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
        <asp:TextBox ID="IdReserva" runat="server" Enabled="false"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Nom"></asp:Label>
        <asp:TextBox ID="NomReserva" runat="server"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Text="Cognoms"></asp:Label>
        <asp:TextBox ID="CognomsReserva" runat="server"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Telefon"></asp:Label>
        <asp:TextBox ID="TelefonReserva" runat="server"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text="Data de reserva"></asp:Label>
        <asp:TextBox ID="DataReserva" runat="server"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Text="Comensals"></asp:Label>
        <asp:TextBox ID="ComensalsReserva" runat="server"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Text="Comentari"></asp:Label>
        <asp:TextBox ID="ComentariReserva" runat="server"></asp:TextBox>
        <asp:Button ID="ButtonGuardar" runat="server" Text="Guardar" OnClick="GuardarReserva"/>
        <asp:Button ID="Button1" runat="server" Text="Cancelar" OnClick="CancelarReserva"/>

    </div>
    </form>
</body>
</html>
