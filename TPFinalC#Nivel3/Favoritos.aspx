<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"  CodeBehind="Favoritos.aspx.cs" Inherits="TPFinalC_Nivel3.Favoritos" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Productos Favoritos</h2>
    <br />
    <div class="row row-cols-1 row-cols-md-5 g-6">
        <asp:Repeater runat="server" ID="repRepetidor2">
            <ItemTemplate>
                <div class="col">
                    <div class="card h-100">
                        <img src="<%#Eval("UrlImagen")%>" class="card-img-top" alt="...">
                        <div class="text-center">
                            <h5 class="card-title"><%#Eval("Nombre")%></h5>
                            <p class="card-text"><%#Eval("Descripcion")%></p>
                            <small class="text-body-secondary">Precio $<%#Eval("Precio")%></small>
                        </div>
                        <div class="card-footer">
                            <div class="text-center">
                                <div class="cols-md-3">
                                    <a href="Detalle.aspx?id=<%#Eval("Id")%>" cssclass="btn-active-box-shadow">Ver Detalle</a>
                                    <asp:Button Text="Comprar" class="btn btn-danger" CssClass="btn-active-box-shadow" runat="server" />
                                    <asp:Button ID="btnEliminarFav" CssClass="btn" runat="server" Text="❌"
                                        CommandName="ArticuloId" CommandArgument='<%#Eval("Id")%>' OnClick="btnEliminarFav_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <br />
    <a href="Default.aspx" class="btn btn-primary">Volver</a>
</asp:Content>
