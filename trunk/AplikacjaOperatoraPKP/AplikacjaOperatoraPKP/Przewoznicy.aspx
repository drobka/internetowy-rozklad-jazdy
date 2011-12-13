<%@ Page Title="Operator PKP - przewoźnicy" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="Przewoznicy.aspx.cs" Inherits="AplikacjaOperatoraPKP.Przewoznicy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Przewoźnicy
    </h2>
    <p>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="SqlDataSource3" Width="595px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                    SortExpression="id" />
                <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:baza_pkpConnectionString %>" 
            DeleteCommand="DELETE FROM [T_Pkp_Przewoznik] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [T_Pkp_Przewoznik] ([id], [nazwa]) VALUES (@id, @nazwa)" 
            SelectCommand="SELECT [id], [nazwa] FROM [T_Pkp_Przewoznik]" 
            UpdateCommand="UPDATE [T_Pkp_Przewoznik] SET [nazwa] = @nazwa WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="nazwa" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nazwa" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label3" runat="server" Text=" " Width="192px"></asp:Label>
        <asp:TextBox ID="txtId3" runat="server" Width="43px"></asp:TextBox>
        <asp:TextBox ID="txtNazwa3" runat="server" Width="340px"></asp:TextBox>
        <asp:Button ID="DodajRekord3" runat="server" onclick="DodajRekord3_Click" 
            Text="Dodaj rekord" />
    </p>
</asp:Content>
