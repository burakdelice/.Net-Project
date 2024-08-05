<%@ Page Title="" Language="C#" MasterPageFile="~/AnaTemplate.Master" AutoEventWireup="true" CodeBehind="karaktersilme.aspx.cs" Inherits="BBS635_Demo1.karaktersilme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./Content/PageContent/karaktersilme.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource
        ID="SqlDataSourceKarakterSilme"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:rickandmortyConnectionString %>"
        ProviderName="<%$ ConnectionStrings:rickandmortyConnectionString.ProviderName %>"
        SelectCommand="SELECT [name] FROM [karakterlistesi] ORDER BY [name]"
        DeleteCommand="DELETE FROM [karakterlistesi] WHERE [name] = @name">
        <DeleteParameters>
            <asp:Parameter Name="name" Type="String" />
        </DeleteParameters>
    </asp:SqlDataSource>
    <div class="delete-page">
    <div class="form-container">
        <asp:FormView ID="FormViewKarakterSilme2" runat="server" DataSourceID="SqlDataSourceKarakterSilme" DefaultMode="Insert">
            <InsertItemTemplate>
                <div class="form-group">
                    <label for="nameTextBox">Name:</label>
                    <asp:TextBox ID="nameTextBox" runat="server" />
                </div>
                <div class="form-group">
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Karakteri Sil" CssClass="button-form" OnClick="DeleteButton_Click" />
                </div>
            </InsertItemTemplate>
        </asp:FormView>
        <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
    </div>
        </div>
</asp:Content>