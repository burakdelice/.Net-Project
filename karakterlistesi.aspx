<%@ Page Title="" Language="C#" MasterPageFile="~/AnaTemplate.Master" AutoEventWireup="true" CodeBehind="karakterlistesi.aspx.cs" Inherits="BBS635_Demo1.karakterlistesi" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./Content/PageContent/karakterlistesi.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="table-container">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:usersConnectionString %>" ProviderName="<%$ ConnectionStrings:usersConnectionString.ProviderName %>" SelectCommand="SELECT [USERNAME], [USERPASS] FROM [USERS]"></asp:SqlDataSource>
        <table class="login-table">
            <tr>
                <td style="width:60px;">Username</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş" Width="100%" />
                </td>
                <td></td>
            </tr>
        </table>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label2" runat="server" Text="Karakter Detay Tablosu"></asp:Label>
    <asp:Label ID="Label1" runat="server" Text="Karakter Detay Tablosu"></asp:Label>
    <asp:Panel ID="CharacterListPanel" runat="server" Visible="false">
        <asp:GridView class="gridview" runat="server" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged" DataSourceID="SqlDataSource2" ID="ctl01" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" Font-Names="Georgia" BackColor="#33CC33" BorderColor="Red">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id"></asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status"></asp:BoundField>
                <asp:BoundField DataField="species" HeaderText="species" SortExpression="species"></asp:BoundField>
                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type"></asp:BoundField>
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender"></asp:BoundField>
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image"></asp:BoundField>
                <asp:BoundField DataField="episode" HeaderText="episode" SortExpression="episode"></asp:BoundField>
            </Columns>
        </asp:GridView>

        <div class="image-container">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <div>
                        <div class="image-box">
                            <h4><%# Eval("name") %></h4>
                            <img src="<%# Eval("image") %>" style="height:150px; width:150px;" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:rickandmortyConnectionString %>" ProviderName="<%$ ConnectionStrings:rickandmortyConnectionString.ProviderName %>" SelectCommand="SELECT [id], [name], [status], [species], [type], [gender], [image], [episode] FROM [karakterlistesi] ORDER BY [name]"></asp:SqlDataSource>
    </asp:Panel>
</asp:Content>
