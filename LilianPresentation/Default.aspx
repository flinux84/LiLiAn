<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>

            <h2>Hospital LiLiAn</h2>
        <p>
            Hospital Lilian is the central medical facility south of the badlands! We need to keep track of personel, name, age etc + records of our customers and what diagnose has been determined, if any. The hospital have several departments with several rooms and we also need to be able to list all rooms with available beds.</p>
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
                
                <asp:GridView ID="GridView2" runat="server" Font-Size="Small" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="20">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
    </div>

</asp:Content>
