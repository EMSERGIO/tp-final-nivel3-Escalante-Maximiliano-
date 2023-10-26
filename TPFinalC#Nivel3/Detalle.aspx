<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="TPFinalC_Nivel3.Detalle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container text-center">
        <div class="col">
            <asp:ScriptManager runat="server" />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:TextBox runat="server" ID="txtUrlImagen" Visible="false" CssClass="form-control"
                        AutoPostBack="true" OnTextChanged="txtUrlImagen_TextChanged" />
                    <asp:Image ImageUrl="http://img2.wikia.nocookie.net/__cb20140518072131/towerofsaviors/images/4/47/Placeholder.png"
                        runat="server" ID="imgArticulos" Width="30%" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="col">
            <div class="mb-3">
                <asp:TextBox runat="server" ID="txtNombre" CssClass="text-center" />
            </div>
            <div class="mb-3">
                <asp:TextBox runat="server" ID="txtPrecio" CssClass="text-center" />
            </div>
            <div class="mb-3">
                <asp:TextBox runat="server" ID="txtDescripcion" class="" CssClass="text-center" />
            </div>
            <div class="mb-3">
                <a href="/" class="btn btn-primary" >Volver</a>
            </div>
        </div>
    </div>


</asp:Content>
