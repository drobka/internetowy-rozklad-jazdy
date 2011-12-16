<%@ Page Title="Operator PKS - data odjazdu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataOdjazdu.aspx.cs" Inherits="AplikacjaOperatoraPKS.DataOdjazdu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Data odjazdu
    </h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="595px"
            DataKeyNames="id" DataSourceID="SqlDataSourceDataOdjazdu">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                    SortExpression="id" />
                <asp:BoundField DataField="opis" HeaderText="opis" SortExpression="opis" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceDataOdjazdu" runat="server" 
            ConnectionString="<%$ ConnectionStrings:baza_pksConnectionString %>" 
            DeleteCommand="DELETE FROM [T_Pks_DataOdjazdu] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [T_Pks_DataOdjazdu] ([id], [opis]) VALUES (@id, @opis)" 
            SelectCommand="SELECT [id], [opis] FROM [T_Pks_DataOdjazdu]" 
            UpdateCommand="UPDATE [T_Pks_DataOdjazdu] SET [opis] = @opis WHERE [id] = @id">
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
        <asp:Label ID="LabelDataOdjazdu" runat="server" Height="16px" Text=" " 
            Width="184px"></asp:Label>
        <asp:TextBox ID="txtIdData" runat="server" Width="44px"></asp:TextBox>
        <asp:TextBox ID="txtOpisData" runat="server" Width="348px"></asp:TextBox>
        <asp:Button ID="ButtonData" runat="server" onclick="ButtonData_Click" 
            Text="Dodaj rekord" />
    </p>
</asp:Content>