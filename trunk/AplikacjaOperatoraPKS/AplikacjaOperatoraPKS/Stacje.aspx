<%@ Page Title="Operator PKS - stacje" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Stacje.aspx.cs" Inherits="AplikacjaOperatoraPKS.Stacje" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Stacje
    </h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="SqlDataSourceStacje" Width="595px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                    SortExpression="id" />
                <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceStacje" runat="server" 
            ConnectionString="<%$ ConnectionStrings:baza_pksConnectionString %>" 
            DeleteCommand="DELETE FROM [T_Pks_Stacja] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [T_Pks_Stacja] ([id], [nazwa]) VALUES (@id, @nazwa)" 
            SelectCommand="SELECT [id], [nazwa] FROM [T_Pks_Stacja]" 
            UpdateCommand="UPDATE [T_Pks_Stacja] SET [nazwa] = @nazwa WHERE [id] = @id">
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
        <asp:Label ID="LabelStacje" runat="server" Height="16px" Text=" " Width="239px"></asp:Label>
        <asp:TextBox ID="txtStacjeId" runat="server" Width="57px"></asp:TextBox>
        <asp:TextBox ID="txtStacjeNazwa" runat="server" Width="282px"></asp:TextBox>
        <asp:Button ID="ButtonStacje" runat="server" onclick="ButtonStacje_Click" 
            Text="Dodaj rekord" />
    </p>
</asp:Content>