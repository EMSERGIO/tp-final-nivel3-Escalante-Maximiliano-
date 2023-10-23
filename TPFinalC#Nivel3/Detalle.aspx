<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="TPFinalC_Nivel3.Detalle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="center">
        <div class="row-center">
            <div class="col-6">
                <div class="mb-3">
                    <label for="txtNombre" class="form-label">Nombre:</label>
                    <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <label for="txtPrecio" class="form-label">Precio:</label>
                    <asp:TextBox runat="server" ID="txtPrecio" CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <label for="txtDescripcion" class="form-label">Descripcion:</label>
                    <asp:TextBox runat="server" TextMode="MultiLine" ID="txtDescripcion" CssClass="form-control" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
