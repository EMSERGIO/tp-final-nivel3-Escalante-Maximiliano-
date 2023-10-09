<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ArticulosListar.aspx.cs" Inherits="TPFinalC_Nivel3.ArticulosListar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Listado de Articulos</h1>

    <asp:ScriptManager runat="server" />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:GridView ID="dgvArticulos" runat="server" CssClass="table table-info" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Código" DataField="Codigo" />
                    <asp:BoundField HeaderText="Precio" DataField="Precio" />
                    <asp:BoundField HeaderText="Marca" DataField="Marcas.Descripcion" />
                    <asp:CommandField HeaderText="Accion" ShowSelectButton="true" SelectText="📝" />
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
    <a href="..." class="btn btn-primary">Agregar</a>

</asp:Content>
