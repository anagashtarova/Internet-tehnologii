<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rezervacija.aspx.cs" Inherits="Lab2.Rezervacija" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div class="col-md-6">
            <div>
            Име <asp:TextBox ID="txtIme" runat="server"></asp:TextBox><br />
            </div>

            <div>
            Презиме <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox><br />
            </div>

            <div>   
            Од <asp:DropDownList ID="ddlOd" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Берлин</asp:ListItem>
                    <asp:ListItem>Солун</asp:ListItem>
                    <asp:ListItem>Амстердам</asp:ListItem>
                    <asp:ListItem>Рим</asp:ListItem>
                </asp:DropDownList>
            </div> 
            
            <div>
            До <asp:DropDownList ID="ddlDo" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Скопје</asp:ListItem>
                    <asp:ListItem>Милано</asp:ListItem>
                    <asp:ListItem>Прага</asp:ListItem>
                    <asp:ListItem>Лондон</asp:ListItem>
                </asp:DropDownList>
            </div>
        
            <div>
            Датум на тргање 
            <asp:DropDownList ID="ddlDen" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="ddlMesec" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="ddlGodina" runat="server"></asp:DropDownList>
            
            </div>

            <div>
            Време на тргање 
            <asp:DropDownList ID="ddlVreme" runat="server"></asp:DropDownList>
            </div>
            
            <div>
            Превозно средство
                <asp:ListBox ID="lstSredstvo" runat="server"></asp:ListBox>
            </div>
            
            <div>
            Зона
                <asp:RadioButtonList ID="rblZona" runat="server"></asp:RadioButtonList>
            </div>
            
            <div>
            Класа
                <asp:RadioButtonList ID="rblKlasa" runat="server"></asp:RadioButtonList>
            </div>
            
            <div>
                Послуга <asp:CheckBoxList ID="cblPosluga" runat="server"></asp:CheckBoxList>
            </div>
           
            <div>
                <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="btnPodnesi_Click" />
            </div>
       
        </div>


        <div class="col-md-6">
            <asp:Panel ID="pnlPanela1" runat="server">
                Почитуван патнику<br />
                <asp:Label ID="lblPatnik" runat="server" Text="Label"></asp:Label><br />
                Издадена ви е карта за<br />
                <asp:Label ID="lblSredstvo" runat="server" Text="Label"></asp:Label><br />
                со почетна дестинација<br />
                <asp:Label ID="lblOd" runat="server" Text="Label"></asp:Label><br />
                и крајна дестинација<br />
                <asp:Label ID="lblDo" runat="server" Text="Label"></asp:Label><br />
                Времето на поаѓање е<br />
                <asp:Label ID="lblVreme" runat="server" Text="Label"></asp:Label><br />
                
                <br />
                
                Вашето место за седење ќе биде во зоната за
                <asp:Label ID="lblZona" runat="server" Text="Label"></asp:Label>
                во
                <asp:Label ID="lblKlasa" runat="server" Text="Label"></asp:Label>
                класа и во текот на патувањето ќе бидете послужени со
                <asp:Label ID="lblPosluga" runat="server" Text="Label"></asp:Label><br />
                
                <asp:Image ID="imgSlika" runat="server" />
                <br />
                Ви благодариме на довербата и Ви посакуваме среќен пат!
            </asp:Panel>
        </div>

    </div>

</asp:Content>
