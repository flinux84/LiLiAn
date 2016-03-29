<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <h2>StoredProcedures</h2>
        <p>Rooms with available beds</p>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Font-Size="Small" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital_LiLiAnConnectionString %>" SelectCommand="spAllAvailableRooms" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <p>Hospitalized patients without current diagnose or treatment</p>
        <asp:GridView ID="GridView2" runat="server" Font-Size="Small" DataSourceID="HospitalizedButNoDiagnose" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>

    <asp:SqlDataSource ID="HospitalizedButNoDiagnose" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital_LiLiAnConnectionString %>" SelectCommand="spHospitalizedNoDiagnoseOrTreatment" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <p>

        <asp:TextBox ID="BornAfterTxt" runat="server" TextMode="Date"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

    </p>
        <div></div>
    <p>
        <p>Doctors sorted by date of birth</p>
        <asp:GridView ID="GridView3" runat="server" DataSourceID="DoctorsBorn" AllowSorting="True" CellPadding="4" AllowPaging="True" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="DoctorsBorn" runat="server" ConnectionString="<%$ ConnectionStrings:Hospital_LiLiAnConnectionString %>" SelectCommand="spDoctorsBornAfter" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="BornAfterTxt" DefaultValue="1960-01-01" Name="bornAfterDate" PropertyName="Text" Type="DateTime" />
            </SelectParameters>
        </asp:SqlDataSource>

    </p>
</asp:Content>
