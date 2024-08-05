<%@ Page Title="" Language="C#" MasterPageFile="~/AnaTemplate.Master" AutoEventWireup="true" CodeBehind="karakterekleme.aspx.cs" Inherits="BBS635_Demo1.karakterekleme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./Content/PageContent/karakterekleme.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource
        ID="SqlDataSourceKarakterEkleme"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:rickandmortyConnectionString %>"
        ProviderName="<%$ ConnectionStrings:rickandmortyConnectionString.ProviderName %>"
        SelectCommand="SELECT [id], [name], [status], [species], [type], [gender], [image], [episode] FROM [karakterlistesi] ORDER BY [name]"
        InsertCommand="INSERT INTO [karakterlistesi] ([name], [status], [species], [type], [gender], [image], [episode]) VALUES (@name, @status, @species, @type, @gender, @image, @episode)">
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="species" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="episode" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>

    <div class="form-container">
        <asp:FormView ID="FormViewKarakterEkleme" runat="server" DataSourceID="SqlDataSourceKarakterEkleme" DefaultMode="Insert" BorderStyle="Solid" BorderWidth="1px" BorderColor="#33CC33">
        <InsertItemTemplate>
            Name: <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' /><br />
            Status: <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' /><br />
            Species: <asp:TextBox ID="speciesTextBox" runat="server" Text='<%# Bind("species") %>' /><br />
            Type: <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' /><br />
            Gender: <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' /><br />
            Image: <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' /><br />
            Episode: <asp:TextBox ID="episodeTextBox" runat="server" Text='<%# Bind("episode") %>' /><br />
            <div class="button-form">
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Karakteri Ekle" />
            </div>
            
        </InsertItemTemplate>
    </asp:FormView>
        </div>
</asp:Content>
