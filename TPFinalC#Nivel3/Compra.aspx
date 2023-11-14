<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Compra.aspx.cs" Inherits="TPFinalC_Nivel3.Compra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>LLevate tu producto al mejor precio...</h2>
    <p>Pronto estara habilitada esta session para ti...</p>

<%--        <asp:ScriptManager runat="server" />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:GridView ID="dgvCompra" runat="server" DataKeyNames="Id"
                CssClass="table" AutoGenerateColumns="false"
                OnSelectedIndexChanged="dgvCompra_SelectedIndexChanged"
                OnPageIndexChanging="dgvCompra_PageIndexChanging">
                <Columns>
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Código" DataField="Codigo" />
                    <asp:BoundField HeaderText="Precio" DataField="Precio" />
                    <asp:BoundField HeaderText="Marca" DataField="Marcas.Descripcion" />
                    <asp:CommandField HeaderText="Editar" ShowSelectButton="true" SelectText="✍️" />
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>--%>

</asp:Content>
