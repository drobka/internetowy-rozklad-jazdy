<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowResults.aspx.cs" Inherits="InternetowyRozkladJazdy.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="content-language" content="cs" />
    <meta name="robots" content="all,follow" />
    <link href="Styles/screen.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <link href="Styles/print.css" type="text/css" rel="stylesheet" media="print" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/cufon.js" type="text/javascript"></script>
    <script src="Scripts/cufon-config.js" type="text/javascript"></script>
    <script src="Scripts/font.js" type="text/javascript"></script>
    <title>Wyszukaj połączenie - Internetowy Rozkład Jazdy</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="wrap container clearfix">
            
            <div class="content">
                <h1>Wyszukaj połączenia</h1><br />
                <p>
                <asp:Label ID="LabelData" runat="server" Text="" CssClass="bold" Font-Underline="true" Font-Size="Medium"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="595px">
                        <Columns>
                            <asp:BoundField DataField="column1" HeaderText="St. początkowa" 
                                SortExpression="column1" />
                            <asp:BoundField DataField="column2" HeaderText="St. końcowa" 
                                SortExpression="column2" />
                            <asp:BoundField DataField="column3" HeaderText="Godz. odjazdu" 
                                SortExpression="column3" />
                            <asp:BoundField DataField="Data" HeaderText="Legenda" 
                                SortExpression="Data" />
                            <asp:BoundField DataField="Odległość" HeaderText="Odległość" 
                                SortExpression="Odległość" />
                            <asp:BoundField DataField="Przewoźnik" HeaderText="Przewoźnik" 
                                SortExpression="Przewoźnik" />
                            <asp:BoundField DataField="Cena" HeaderText="Cena" 
                                SortExpression="Cena" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:baza_zbiorczaConnectionString %>" 
                        
                        SelectCommand="SELECT [St. początkowa] AS column1, [St. końcowa] AS column2, [Data], [Godz. odjazdu] AS column3, [Odległość], [Przewoźnik], [Cena] FROM [Zest_unia_st] WHERE (([St. początkowa] = @column1) AND ([St. końcowa] = @column2))">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="column1" QueryStringField="Start" 
                                Type="String" />
                            <asp:QueryStringParameter Name="column2" QueryStringField="Stop" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </p> 
                <p>
                    <asp:HyperLink id="hyperlink1" 
                    NavigateUrl="./"
                    Text="Wyszukaj połączenie"
                    ImageUrl="~/Images/send.jpg"
                    Target="_self"
                    runat="server"/>       
                
                </p>

            </div>

            <div class="sidebar">
                <img src="Images/crash.jpg" alt="image" class="floatRight" />
            </div>
            
        </div>
        
        <hr class="noscreen" />

        <div id="header">
            <div class="wrap">
                <!-- Logo start -->
                <a id="logo" href="./" title="nature">Internetowy Rozkład Jazdy<span>.</span></a>
                <!-- Logo end -->
        
                <hr class="noscreen noprint" />
        
                <!-- Navigation start -->
                <strong class="noscreen noprint">Navigation:</strong>
                    <ul id="nav">
                      <li><a href="./" title="Home">Strona główna</a></li>
                      <li><a href="About.html" title="O projekcie">O projekcie</a></li>
                      <li><a href="Contact.html" title="Kontakt">Kontakt</a></li>
                    </ul>
                <!-- Navigation end -->
            </div>
        </div>
        
        <hr class="noscreen" />
  
        <!-- Footer start -->
        <p class="footer">
            <span class="floatLeft"><a href="#">Internetowy Rozkład Jazdy</a> - Michał Kowalczyk, Piotr Stęplewski</span>
        </p>
        <!-- Footer end -->
    </div>
    </form>
</body>
</html>
