<%@ Page Title="Videolar" Language="C#" MasterPageFile="~/AnaTemplate.Master" AutoEventWireup="true" CodeBehind="videolar.aspx.cs" Inherits="BBS635_Demo1.videolar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="./Content/PageContent/videolar.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="video-container" runat="server" id="videoContainer">
       <iframe width="1236" height="695" src="https://www.youtube.com/embed/ornXZGEFcds" title="Rick and Morty Exquisite Corpse | Rick and Morty | Adult Swim" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
           <iframe width="1236" height="695" src="https://www.youtube.com/embed/EBYsx1QWF9A" title="Rick and Morty x Run The Jewels: Oh Mama | Adult Swim" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
       <iframe width="1236" height="695" src="https://www.youtube.com/embed/7JXomLN8YUU" title="Evil Morty&#39;s Dark Backstory | Rick and Morty | adult swim" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>


</div>
</asp:Content>
