<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="TPFinalC_Nivel3.Detalle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="text-center">
        <h3>h3. Bootstrap heading</h3>
        <img src="<%#Eval("UrlImagen")%>" class="rounded" alt="...">
    </div>
</asp:Content>
