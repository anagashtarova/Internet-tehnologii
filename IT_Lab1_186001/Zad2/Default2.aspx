<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="Lab1Zad2.Default2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div>

        <div>
           
                <table runat="server" style ="width:100%;height:100%;text-align:center; vertical-align:middle">
                <tr><td>
                <asp:Panel ID="pnlPanela" runat="server" Font-Names="Arial" BackColor="#FF66CC">
              
                <asp:TextBox ID="txtOperand1" runat="server" EnableViewState="False"></asp:TextBox><br />
                <asp:TextBox ID="txtOperand2" runat="server" AutoPostBack="True" OnTextChanged="txtOperand2_TextChanged"></asp:TextBox><br />
              
                <asp:Label ID="lblRezultat" runat="server" Text="Label" EnableViewState="False"></asp:Label><br />
                <asp:Button ID="btnSoberi" runat="server" Text="Soberi" OnClick="btnSoberi_Click" />
              
                </asp:Panel>
                </td></tr>
                </table>
            
        </div>

        <div class="text-center">
            <asp:CheckBox ID="chbVidlivo" runat="server" Text="Видливо" OnCheckedChanged="chbVidlivo_CheckedChanged" AutoPostBack="True" Checked="True" />
        </div>

    </div>


</asp:Content>
