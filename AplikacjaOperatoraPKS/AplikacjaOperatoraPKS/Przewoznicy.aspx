<%@ Page Title="Operator PKS - przewoźnicy" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Przewoznicy.aspx.cs" Inherits="AplikacjaOperatoraPKS.Przewoznicy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Przewoźnicy
    </h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="595px" 
            DataSourceID="SqlDataSourcePrzewoznicy" DataKeyNames="id">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" 
                    ReadOnly="True" />
                <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourcePrzewoznicy" runat="server" 
            ConnectionString="<%$ ConnectionStrings:baza_pksConnectionString %>" 
            DeleteCommand="DELETE FROM [T_Pks_Przewoznik] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [T_Pks_Przewoznik] ([id], [nazwa]) VALUES (@id, @nazwa)" 
            SelectCommand="SELECT [id], [nazwa] FROM [T_Pks_Przewoznik]" 
            UpdateCommand="UPDATE [T_Pks_Przewoznik] SET [nazwa] = @nazwa WHERE [id] = @id">
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
        <asp:TextBox ID="txtIdPrzewoznicy" runat="server" style="margin-left: 16px" 
            Width="37px"></asp:TextBox>
        <asp:TextBox ID="txtNazwaPrzewoznicy" runat="server" style="margin-left: 5px" 
            Width="323px"></asp:TextBox>
        <asp:Button ID="DodajRekordPrzewoznicy" runat="server" 
            onclick="DodajRekord3_Click" Text="Dodaj rekord" />
    </p>
</asp:Content>