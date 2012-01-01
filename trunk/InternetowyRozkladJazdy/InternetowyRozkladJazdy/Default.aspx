<%@ Page Title="Internetowy Rozkład Jazdy - wyszukaj połączenie" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="InternetowyRozkladJazdy._Default" %>

<%@ Register assembly="obout_ComboBox" namespace="Obout.ComboBox" tagprefix="cc1" %>
<%@ Register assembly="obout_Calendar2_Net" namespace="OboutInc.Calendar2" tagprefix="obout" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit"%>

<%@ Register assembly="obout_Window_NET" namespace="OboutInc.Window" tagprefix="owd" %>

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
                        <li><asp:Label ID="Label3" runat="server" Width="227px" Height="21px" Font-Bold="true" Text="Data i godzina odjazdu:"></asp:Label></li>
                    </ul>
                </li>
                <li class="center">
                    <h2>&nbsp;</h2>
                    <ul>
                        <li>
                            <asp:DropDownList ID="DropDownListStart" runat="server" Height="16px" 
                                Width="230px" DataSourceID="SqlDataSourceStart" DataTextField="nazwa" 
                                DataValueField="nazwa">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceStart" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:baza_zbiorczaConnectionString %>" 
                                SelectCommand="SELECT [nazwa], [id] FROM [Stacja]"></asp:SqlDataSource>
                        </li>
                        <li>
                            <asp:DropDownList ID="DropDownListStop" runat="server" Height="16px" 
                                Width="230px" DataSourceID="SqlDataSourceStart" DataTextField="nazwa" 
                                DataValueField="nazwa">
                            </asp:DropDownList>
                        </li>
                        <li>

                            <mark:DateTimePicker ID="DataTimePicker" runat="server" ShowClearButton="true" UseImageButtons="true" PickerCssClass="Picker" ShowTimePicker="true" Width="190" />

                        </li>
                    </ul>
                </li>
                <li>
                    <h2>&nbsp;</h2>
                    <table style="height:50px"></table>
                    <asp:ImageButton ID="ButtonWyszukaj" runat="server" 
                        ImageUrl="~/Images/send.jpg" onclick="ButtonWyszukaj_Click" />
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
