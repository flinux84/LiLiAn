<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
            <h2>Tabell avdelningar<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital_LiLiAnConnectionString %>" SelectCommand="spListDepartments" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </h2>
         
    </div>

</asp:Content>
