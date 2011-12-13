<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataOdjazdu.aspx.cs" Inherits="AplikacjaOperatoraPKP.DataOdjazdu" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Połączenia
    </h2>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="SqlDataSource2" Width="595px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                    SortExpression="id" />
                <asp:BoundField DataField="opis" HeaderText="opis" SortExpression="opis" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:baza_pkpConnectionString %>" 
            DeleteCommand="DELETE FROM [T_Pkp_DataOdjazdu] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [T_Pkp_DataOdjazdu] ([id], [opis]) VALUES (@id, @opis)" 
            SelectCommand="SELECT [id], [opis] FROM [T_Pkp_DataOdjazdu]" 
            UpdateCommand="UPDATE [T_Pkp_DataOdjazdu] SET [opis] = @opis WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="opis" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="opis" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label ID="LabelDataOdjazdu" runat="server" Text=" " Width="184px" 
            Height="16px"></asp:Label>
        <asp:TextBox ID="txtIdData" runat="server" Width="44px"></asp:TextBox>
        <asp:TextBox ID="txtOpisData" runat="server" Width="348px"></asp:TextBox>
        <asp:Button ID="ButtonData" runat="server" onclick="ButtonData_Click" 
            Text="Dodaj rekord" />
    </p>
</asp:Content>