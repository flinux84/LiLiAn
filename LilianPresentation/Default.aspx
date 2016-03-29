<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>

            <h2>
                <asp:DropDownList runat="server" ID="ddlDb" AutoPostBack="True" OnSelectedIndexChanged="ddlDb_SelectedIndexChanged">
            <asp:ListItem Text="-- Select --" Value=""></asp:ListItem>
                <asp:ListItem Text="Patients" Value="Patient"></asp:ListItem>
                <asp:ListItem Text="Doctors" Value="Doctor"></asp:ListItem>
                    <asp:ListItem Text="Nurses" Value="Nurse"></asp:ListItem>
                    <asp:ListItem Text="Departments" Value="Department"></asp:ListItem>
                    <asp:ListItem Text="Farmaceuticals" Value="Farmaceutical"></asp:ListItem>
                    <asp:ListItem Text="Diagnoses" Value="Diagnose"></asp:ListItem>
                    <asp:ListItem Text="Treatments" Value="Treatment"></asp:ListItem>
            </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital_LiLiAnConnectionString %>" SelectCommand="spListDepartments" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <asp:GridView ID="GridView2" runat="server" Font-Size="X-Small">
                </asp:GridView>
            </h2>
         
    </div>

</asp:Content>
