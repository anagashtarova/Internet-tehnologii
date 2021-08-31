<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default3.aspx.cs" Inherits="Lab1Zad2.Default3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="text-center">
        <div>
    <asp:TextBox ID="txtLozinka" runat="server" TextMode="Password"></asp:TextBox><br />
    <asp:TextBox ID="txtPoraka" runat="server" TextMode="MultiLine" Rows="5" ReadOnly="True" OnTextChanged="txtPoraka_TextChanged" AutoPostBack="True"></asp:TextBox><br />

            </div>
        <div>
           <asp:Button ID="btnProveri" runat="server" Text="Proveri" OnClick="btnProveri_Click" /><br />
            <asp:Button ID="btnPrvaStrana" runat="server" Text="Vrati se na Default" Enabled="False" PostBackUrl="~/Default.aspx" />
    
        </div>

    </div>

</asp:Content>
