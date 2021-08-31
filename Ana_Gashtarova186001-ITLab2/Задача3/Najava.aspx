<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="Lab2Zad3.Najava" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        Korisnik <asp:TextBox ID="txtKorisnik" runat="server"></asp:TextBox> <br />
        Lozinka <asp:TextBox ID="txtLozinka" runat="server" TextMode="Password"></asp:TextBox> <br />
        <asp:Button ID="btnPodnesi" runat="server" Text="Podnesi" OnClick="btnPodnesi_Click" />

        <asp:Label ID="lblObidi" runat="server" Text="Label"></asp:Label>
    
    </div>


</asp:Content>
