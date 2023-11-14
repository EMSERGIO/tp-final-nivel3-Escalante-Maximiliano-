<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="TPFinalC_Nivel3.Detalle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row g-0 bg-body-secondary position-relative">
        <div class="col-md-6 mb-md-0 p-md-4">
            <asp:ScriptManager runat="server" />
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:TextBox runat="server" ID="txtUrlImagen" Visible="false"
                        AutoPostBack="true" OnTextChanged="txtUrlImagen_TextChanged" />
                    <asp:Image ImageUrl="http://img2.wikia.nocookie.net/__cb20140518072131/towerofsaviors/images/4/47/Placeholder.png"
                        runat="server" ID="imgArticulos" class="img-fluid rounded-start" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="col-md-6 p-4 ps-md-0">
            <div class="md-6">
                <asp:TextBox runat="server" ID="txtNombre" class="btn" Columns="27" Font-Size="XX-Large" Font-Italic="true" />
            </div>
            <br />
            <div class="md-6">
                <asp:TextBox runat="server" ID="txtDescripcion" Columns="58" Rows="4" TextMode="MultiLine" class="btn" />
                <asp:TextBox runat="server" ID="txtPrecio" Columns="25" class="btn" Font-Size="XX-Large" />
            </div>
            <br />
            <div class="row g-0 bg-body-secondary position-relative">
                <a href="/" class="btn btn-outline-info btn-sm">↩️ Volver al Home</a>
                <a href="Compra.aspx" class="btn btn-outline-danger btn-sm">&#x1F6D2; Comprar</a>
            </div>
        </div>
    </div>

</asp:Content>
