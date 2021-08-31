<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebFormLab2.aspx.cs" Inherits="Lab2.WebFormLab2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div>
           Име <asp:TextBox ID="ime" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Внеси име!" ControlToValidate="ime" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>


        <div>
            Презиме <asp:TextBox ID="prezime" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Внеси презиме!" ControlToValidate="prezime" ForeColor="Red"></asp:RequiredFieldValidator>
   
        </div>
   
        
        <div>
          ФИНКИ ID  <asp:TextBox ID="id" runat="server"></asp:TextBox> @finki.ukim.mk
         <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Внеси ID!" ControlToValidate="id" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator Display="None" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Неправилен формат на ID!" ControlToValidate="id"
                ValidationExpression="[A-Z]*\d*(_\d\d\d*){0,1}"
                ></asp:RegularExpressionValidator>
        </div>

        <div>
        Лозинка <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>
       <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Внеси пасворд!" ControlToValidate="pass" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>


        <div>
        Потврда <asp:TextBox ID="pass2" runat="server" TextMode="Password"></asp:TextBox>
         <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Внеси го повторно пасвордот!" ControlToValidate="pass2" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator Display="None" ID="CompareValidator1" runat="server" ErrorMessage="Различни лозинки!" ForeColor="Red" ControlToValidate="pass2" ControlToCompare="pass"></asp:CompareValidator>
        </div>

        <div>
            <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
        </div>
 
        <div>
           Адреса <asp:TextBox ID="adresa" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Внеси адреса!" ControlToValidate="adresa" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>


        <div>
           Тел <asp:TextBox ID="tel" runat="server"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Внеси телефон!" ControlToValidate="tel" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ValidationExpression="\+389 7[15678] \d{3} \d{3}|\+389 2 \d{4} \d{3}" ID="RegularExpressionValidator2" runat="server" ControlToValidate="tel" ErrorMessage="Неправилен формат!" ForeColor="Red"></asp:RegularExpressionValidator>
        </div>

        <div>
           Пол <asp:RadioButtonList ID="pol" runat="server">
                <asp:ListItem>М</asp:ListItem>
                <asp:ListItem>Ж</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Избери пол!" ControlToValidate="pol" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

        <div>
           Датум на раѓање <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
       </div>

        <div>
           Занимање <asp:DropDownList ID="zanimanje" runat="server">
                <asp:ListItem>-занимање-</asp:ListItem>
                <asp:ListItem>Професор</asp:ListItem>
                <asp:ListItem>Лекар</asp:ListItem>
                <asp:ListItem>Архитект</asp:ListItem>
                <asp:ListItem>Адвокат</asp:ListItem>
            </asp:DropDownList>
          <asp:RequiredFieldValidator InitialValue="-занимање-" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Избери занимање!" ControlToValidate="zanimanje" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
  
        <div>
           Години на вршење на избраната дејност <asp:TextBox ID="godini" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Внеси години!" ControlToValidate="godini" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator2" ControlToValidate="godini" ValueToCompare="5" Operator="GreaterThan" Type="Integer" runat="server" ErrorMessage="Недозволена вредност!" ForeColor="Red"></asp:CompareValidator>
        </div>

        <div>
            <asp:Button ID="kopce" runat="server" Text="Поднеси" OnClick="kopce_Click" />
        </div>

        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>

    </div>


</asp:Content>
