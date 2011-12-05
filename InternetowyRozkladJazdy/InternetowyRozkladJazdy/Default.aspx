<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="InternetowyRozkladJazdy._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="wrap container content">

<div class="wrap container content">

            <!-- Cols start -->
            <ul class="cols clearfix">
                <li>
                    <h2>Wyszukaj połączenie:</h2>
                    <ul>
                        <li><asp:Label ID="Label1" runat="server" Width="227px" Height="21px" Font-Bold="true" Text="Z:"></asp:Label></li>
                        <li><asp:Label ID="Label2" runat="server" Width="227px" Height="21px" Font-Bold="true" Text="Do:"></asp:Label></li>
                        <li><asp:Label ID="Label3" runat="server" Width="227px" Height="21px" Font-Bold="true" Text="Data odjazdu:"></asp:Label></li>
                        <li><asp:Label ID="Label4" runat="server" Width="227px" Height="21px" Font-Bold="true" Text="Godzina odjazdu:"></asp:Label></li>
                    </ul>
                </li>
                <li class="center">
                    <h2>&nbsp;</h2>
                    <ul>
                        <li>
                            <asp:TextBox ID="TextBox1" runat="server" Width="227px"></asp:TextBox>
                        </li>
                        <li>
                            <asp:TextBox ID="TextBox2" runat="server" Width="227px"></asp:TextBox>
                        </li>
                        <li>
                            <asp:TextBox ID="TextBox3" runat="server" Width="227px"></asp:TextBox>
                        </li>
                        <li>
                            <asp:TextBox ID="TextBox4" runat="server" Width="227px"></asp:TextBox>
                        </li>
                    </ul>
                </li>
                <li>
                    <h2>&nbsp;</h2>
                    <table height="90px"></table>
                    <asp:HyperLink id="hyperlink1" 
                                   NavigateUrl="~/ShowResults.aspx"
                                   Text="Wyszukaj połączenie"
                                   ImageUrl="~/Images/send.jpg"
                                   Target="_self"
                                   runat="server"/>       
                </li>
            </ul>
            <!-- cols end -->

        </div>

        <!-- Footer start -->
        <p class="footer">
            <span class="floatLeft"><a href="#">Internetowy Rozkład Jazdy</a> - Michał Kowalczyk, Piotr Stęplewski</span>
        </p>
        <!-- Footer end -->

        </div>
</asp:Content>
