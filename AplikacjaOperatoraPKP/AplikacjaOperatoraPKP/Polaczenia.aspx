<%@ Page Title="Operator PKP - połączenia" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
CodeBehind="Polaczenia.aspx.cs" Inherits="AplikacjaOperatoraPKP.Polaczenia" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Połączenia
    </h2>
    <p>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="SqlDataSource5" Width="821px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                    SortExpression="id" />
                <asp:BoundField DataField="id_stacja_start" HeaderText="id_stacja_start" 
                    SortExpression="id_stacja_start" />
                <asp:BoundField DataField="id_stacja_koniec" HeaderText="id_stacja_koniec" 
                    SortExpression="id_stacja_koniec" />
                <asp:BoundField DataField="id_data_odjazdu" HeaderText="id_data_odjazdu" 
                    SortExpression="id_data_odjazdu" />
                <asp:BoundField DataField="godzina_odjazdu" HeaderText="godzina_odjazdu" 
                    SortExpression="godzina_odjazdu" />
                <asp:BoundField DataField="id_przewoznik" HeaderText="id_przewoznik" 
                    SortExpression="id_przewoznik" />
                <asp:BoundField DataField="id_odleglosc" HeaderText="id_odleglosc" 
                    SortExpression="id_odleglosc" />
                <asp:BoundField DataField="cena" HeaderText="cena" SortExpression="cena" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:baza_pkpConnectionString %>" 
            DeleteCommand="DELETE FROM [T_Pkp_Polaczenie] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [T_Pkp_Polaczenie] ([id], [id_stacja_start], [id_stacja_koniec], [id_data_odjazdu], [godzina_odjazdu], [id_przewoznik], [id_odleglosc], [cena]) VALUES (@id, @id_stacja_start, @id_stacja_koniec, @id_data_odjazdu, @godzina_odjazdu, @id_przewoznik, @id_odleglosc, @cena)" 
            SelectCommand="SELECT [id], [id_stacja_start], [id_stacja_koniec], [id_data_odjazdu], [godzina_odjazdu], [id_przewoznik], [id_odleglosc], [cena] FROM [T_Pkp_Polaczenie]" 
            UpdateCommand="UPDATE [T_Pkp_Polaczenie] SET [id_stacja_start] = @id_stacja_start, [id_stacja_koniec] = @id_stacja_koniec, [id_data_odjazdu] = @id_data_odjazdu, [godzina_odjazdu] = @godzina_odjazdu, [id_przewoznik] = @id_przewoznik, [id_odleglosc] = @id_odleglosc, [cena] = @cena WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="id_stacja_start" Type="Int32" />
                <asp:Parameter Name="id_stacja_koniec" Type="Int32" />
                <asp:Parameter Name="id_data_odjazdu" Type="Int32" />
                <asp:Parameter DbType="Time" Name="godzina_odjazdu" />
                <asp:Parameter Name="id_przewoznik" Type="Int32" />
                <asp:Parameter Name="id_odleglosc" Type="Int32" />
                <asp:Parameter Name="cena" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id_stacja_start" Type="Int32" />
                <asp:Parameter Name="id_stacja_koniec" Type="Int32" />
                <asp:Parameter Name="id_data_odjazdu" Type="Int32" />
                <asp:Parameter DbType="Time" Name="godzina_odjazdu" />
                <asp:Parameter Name="id_przewoznik" Type="Int32" />
                <asp:Parameter Name="id_odleglosc" Type="Int32" />
                <asp:Parameter Name="cena" Type="Decimal" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label3" runat="server" Text=" " Width="73px" Height="16px"></asp:Label>
        <asp:TextBox ID="txtPolId" runat="server" Width="16px"></asp:TextBox>
        <asp:TextBox ID="txtPolStart" runat="server" Width="90px"></asp:TextBox>
        <asp:TextBox ID="txtPolKoniec" runat="server" Width="110px"></asp:TextBox>
        <asp:TextBox ID="txtPolData" runat="server" Width="110px"></asp:TextBox>
        <asp:TextBox ID="txtPolGodzina" runat="server" Width="113px"></asp:TextBox>
        <asp:TextBox ID="txtPolPrzewoznik" runat="server" Width="95px"></asp:TextBox>
        <asp:TextBox ID="txtPolOdleglosc" runat="server" Width="83px"></asp:TextBox>
        <asp:TextBox ID="txtPolCena" runat="server" Width="42px"></asp:TextBox>
        <asp:Button ID="ButtonPolaczenia" runat="server" Text="Dodaj rekord" 
            onclick="ButtonPolaczenia_Click" />
    </p>
</asp:Content>