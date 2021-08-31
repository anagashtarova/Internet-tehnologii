<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab1Zad2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div>
        <asp:Label ID="lblVreme1" runat="server" Text="Kонтрола за приказ на време" Font-Names="Arial" Font-Size="Medium" ForeColor="Navy"></asp:Label>
     </div>

        <div>
            <asp:Label ID="lblVreme2" runat="server" Text="Kонтрола за приказ на време" Font-Names="Arial" Font-Size="Medium" ForeColor="Navy"></asp:Label>
           </div>
           
        <div>
            <asp:Button ID="btnVreme" runat="server" Text="Прикажи" Font-Names="Arial" Font-Size="Medium" ForeColor="Navy" OnClick="btnVreme_Click" />
        </div>

        <div>
            <asp:HyperLink ID="hlSledno" runat="server" NavigateUrl="~/Default2.aspx">Navigate to Default2</asp:HyperLink>
        </div>
    </div>

</asp:Content>
