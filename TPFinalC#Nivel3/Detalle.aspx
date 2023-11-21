<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="TPFinalC_Nivel3.Detalle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="card mb-3" style="max-width: 800px;">
        <div class="row g-4">
            <div class="col-md-6">
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
            <div class="col-md-6">
                <div class="card-20>
                    <div class="col-md-2">
                        <asp:TextBox runat="server" ID="txtNombre" class="btn fs-5" Columns="30" />
                        <asp:TextBox runat="server" ID="txtDescripcion" TextMode="MultiLine" class="btn fs-6" Columns="41" Rows="4" />
                        <asp:TextBox runat="server" ID="txtPrecio" class="btn fs-3" />
                    </div>
                </div>
                <div class="card-text">
                    <div class="d-grid gap-1 col-20 mx-auto">
                        <a href="/" class="btn btn-outline-info btn-sm">↩️ Volver al Home</a>
                        <a href="Compra.aspx" class="btn btn-outline-danger btn-sm">&#x1F6D2; Comprar</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
