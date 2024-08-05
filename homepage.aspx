<%@ Page Title="Ana Sayfa" Language="C#" MasterPageFile="~/AnaTemplate.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" ValidateRequest="false"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./Content/PageContent/homepage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="homepage-container">
        
            <h1>Rick ve Morty Karakter Yönetim Sistemi</h1>
            <p>Bu, Rick ve Morty karakter bilgilerini yönetmek için basit bir sistemdir. Karakter listesine yeni karakterler ekleyebilir, yanlış bilgilerini düzeltebilir ve bir karakteri silebilirsiniz.</p>
           <div class="card-container">
                <div class="card">
                    <img src="img/1.jpg" alt="Sahne 1" />
                </div>
                <div class="card">
                    <img src="img/2.jpg" alt="Sahne 2" />
                </div>
                <div class="card">
                    <img src="img/3.jpg" alt="Sahne 3" />
                </div>
                <div class="card">
                    <img src="img/4.jpg" alt="Sahne 4" />
                </div>
            </div>  
         </div>
</asp:Content>

