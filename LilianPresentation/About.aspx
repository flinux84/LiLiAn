<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>StoredProcedures</h2>
    <p>Rooms with available beds</p>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Font-Size="X-Small">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital_LiLiAnConnectionString %>" SelectCommand="spAllAvailableRooms" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <p>Hospitalized patients without current diagnose or treatment</p>
        <asp:GridView ID="GridView2" runat="server" Font-Size="X-Small" DataSourceID="HospitalizedButNoDiagnose">
        </asp:GridView>

    <asp:SqlDataSource ID="HospitalizedButNoDiagnose" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital_LiLiAnConnectionString %>" SelectCommand="spHospitalizedNoDiagnoseOrTreatment" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <p>&nbsp;</p>
</asp:Content>
