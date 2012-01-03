<%@ Page Title="Operator PKP - stacje" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
CodeBehind="Stacje.aspx.cs" Inherits="AplikacjaOperatoraPKP.Stacje" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Stacje
    </h2>
    <p>

        <asp:GridView ID="GridViewStacje" runat="server" 
            DataSourceID="SqlDataSourceStacje" Width="595px" 
            AutoGenerateColumns="False" DataKeyNames="id">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                    SortExpression="id" />
                <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSourceStacje" runat="server" 
            ConnectionString="<%$ ConnectionStrings:baza_pkpConnectionString %>" 
            DeleteCommand="DELETE FROM [Stacja] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [Stacja] ([id], [nazwa]) VALUES (@id, @nazwa)" 
            SelectCommand="SELECT [id], [nazwa] FROM [Stacja]" 
            UpdateCommand="UPDATE [Stacja] SET [nazwa] = @nazwa WHERE [id] = @id">
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

        <asp:Label ID="LabelStacje" runat="server" Text=" " Width="238px" Height="16px"></asp:Label>

        <asp:TextBox ID="txtStacjeId" runat="server" Width="43px"></asp:TextBox>
        <asp:TextBox ID="txtStacjeNazwa" runat="server" Width="295px"></asp:TextBox>
        <asp:Button ID="ButtonStacje" runat="server" onclick="ButtonStacje_Click" 
            Text="Dodaj rekord" />

    </p>
</asp:Content>