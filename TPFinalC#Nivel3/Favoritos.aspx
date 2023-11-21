<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Favoritos.aspx.cs" Inherits="TPFinalC_Nivel3.Favoritos" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>❤️Productos Favoritos</h2>
    <br />
    <div class="row row-cols-1 row-cols-md-5 g-2">
        <asp:Repeater runat="server" ID="repRepetidor2">
            <ItemTemplate>
                <div class="col">
                    <div class="card h-100">
                        <img src="<%#Eval("UrlImagen")%>" class="card-img-top" alt="...">

                        <br />
                        <div class="card-body">
                            <h6 class="card-text"><%#Eval("Marcas")%></h6>
                            <h5 class="card-title"><%#Eval("Nombre")%></h5>
                            <p class="card-text"><%#Eval("Descripcion")%></p>
                        </div>
                        <div class="card-text">
                            <div class="text-center">
                                <h3 class="text-body-secondary">$<%#Eval("Precio")%></h3>
                            </div>
                            <div class="text-center">
                                <a href="Detalle.aspx?id=<%#Eval("Id")%>" class="badge text-bg-success">Ver Detalle</a>
                                <div class="row-cols-3">
                                    <a href="Compra.aspx?id=<%#Eval("Id")%>" class="btn" data-bs-toggle="">&#x1F6D2;</a>
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
