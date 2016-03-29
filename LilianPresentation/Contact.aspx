<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p><asp:SqlDataSource ID="countTreatments" runat="server"></asp:SqlDataSource>
        <asp:TextBox ID="TextBox" runat="server" ReadOnly="True" OnDataBinding="Page_Load" Height="241px" TextMode="MultiLine" Width="759px"></asp:TextBox>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="spDataSourceDoctorsAge">
        </asp:GridView>
    </p>
    <p>&nbsp;</p>

    <asp:SqlDataSource ID="spDataSourceDoctorsAge" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital_LiLiAnConnectionString %>" OnSelecting="spDataSourceDoctorsAge_Selecting" SelectCommand="spDoctorsBornAfter" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:FormParameter DefaultValue="1980-02-02" FormField="bornAfterDate" Name="bornAfterDate" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
    <input id="Text1" type="text" />

</asp:Content>
