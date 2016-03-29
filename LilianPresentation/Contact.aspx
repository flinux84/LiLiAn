<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p><asp:SqlDataSource ID="countTreatments" runat="server"></asp:SqlDataSource>
        <asp:TextBox ID="TextBox" runat="server" ReadOnly="True" OnDataBinding="Page_Load" Height="241px" TextMode="MultiLine" Width="759px"></asp:TextBox>
    </p>

</asp:Content>
