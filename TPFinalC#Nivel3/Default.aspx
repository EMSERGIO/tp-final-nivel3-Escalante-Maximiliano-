<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPFinalC_Nivel3.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Hola</h1>
    <p>LLegaste a buscar tu articulo?</p>
    <br />
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <asp:Repeater runat="server" ID="repRepetidor">
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
                                    <a href="Detalle.aspx?id=<%#Eval("Id")%>" class="btn btn-outline-info">Ver Detalle</a>
                                    <a href="Compra.aspx?id=<%#Eval("Id")%>" class="btn" data-bs-toggle="">&#x1F6D2;</a>
                                    <%if (Negocio.Seguridad.sessionActiva(Session["cliente"]))
                                        {%>
                                    <a href="Favoritos.aspx?id=<%#Eval("Id")%>" class="btn" data-bs-toggle="">❤️</a>
                                    <% }%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
















