<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPFinalC_Nivel3.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="text-center">
        <h1>Electro Max</h1>
        <p>¡El producto que buscas al mejor precio!</p>
    </div>

    <br />
    <div class="row">
        <div class="col-3">
            <div class="mb-3">
                <asp:CheckBox Text="Buscar por Campos"
                     ID="ckdFiltroCampo" runat="server"
                    AutoPostBack="true"
                    OnCheckedChanged="ckbAvanzado_CheckedChanged" 
                    class="btn btn-outline-primary btn-sm" for="btn-check-outlined" />
            </div>

        </div>
    </div>
    <%if (FiltroAvanzadoCampo)
        {%>
    <div class="row">
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="Campo" ID="txtCampo" Font-Size="Smaller" runat="server" />
                <asp:DropDownList runat="server" AutoPostBack="true" CssClass="form-control" ID="ddlCampo" OnSelectedIndexChanged="ddlCampo_SelectedIndexChanged">
                    <asp:ListItem Text="Nombre" />
                    <asp:ListItem Text="Precio" />
                    <asp:ListItem Text="Marcas" />
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="Criterio" Font-Size="Smaller" runat="server" />
                <asp:DropDownList runat="server" ID="ddlCriterio" CssClass="form-control"></asp:DropDownList>
            </div>
        </div>
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="Filtro" Font-Size="Smaller" runat="server" />
                <asp:TextBox runat="server" ID="txtFiltroAvanzado" CssClass="form-control" />
            </div>
        </div>
    </div>

    <div class="row">
        <div class="btn-group" role="group" aria-label="Basic mixed styles example">
            <div class="col-3">
                <asp:Button Text="Buscar" class="btn btn-outline-primary btn-sm" ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" />
                <asp:Button Text="Limpiar" class="btn btn-outline-danger btn-sm" ID="Button2" runat="server" OnClick="btnLimpiarFiltro_Click" />
            </div>
        </div>
    </div>
    <% }%>

    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <asp:CheckBox Text="Buscar por Categorias"
                    ID="ckbAvanzado" runat="server"
                    AutoPostBack="true"
                    OnCheckedChanged="ckbAvanzado_CheckedChanged"
                    class="btn btn-outline-danger btn-sm" for="btn-check-outlined"/>
            </div>
            <%if (FiltroAvanzadoCategoria)
                {%>
            <div class="mb-3">
                <asp:Button Text="Televisores" class="btn btn-outline-primary btn-sm" ID="btnTelevisores" OnClick="btnTelevisores_Click" runat="server" />
                <asp:Button Text="Celulares" class="btn btn-outline-danger btn-sm" ID="btnCelulares" OnClick="btnCelulares_Click" runat="server" />
                <asp:Button Text="Audio" class="btn btn-outline-primary btn-sm" ID="btnAudio" OnClick="btnAudio_Click" runat="server" />
                <asp:Button Text="Media" class="btn btn-outline-danger btn-sm" ID="btnMedia" OnClick="btnMedia_Click" runat="server" />
                <asp:Button Text="Todas" class="btn btn btn-success btn-sm" ID="btnTodas" OnClick="btnLimpiarFiltro_Click" runat="server" />
            </div>
            <% }%>
        </div>
    </div>

    <asp:ScriptManager runat="server" />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row row-cols-1 row-cols-md-4 g-3">
                <asp:Repeater runat="server" ID="repRepetidor">
                    <ItemTemplate>
                        <div class="col">
                            <div class="card h-100">
                                <img src="<%#Eval("UrlImagen")%>" class="img-fluid rounded-start" alt="Error">
                                <br />
                                <div class="card-body">
                                    <h6 class="text-body-secondary"><%#Eval("Marcas")%></h6>
                                    <h5 class="text-body-secondary"><%#Eval("Nombre")%></h5>
                                </div>
                                <div class="card-text">
                                    <div class="text-center">
                                        <h3 class="text-body-secondary">$<%#Eval("Precio")%></h3>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="text-center">
                                        <a href="Detalle.aspx?id=<%#Eval("Id")%>" class="btn btn-success btn-sm">Ver Detalle</a>
                                        <a href="Compra.aspx?id=<%#Eval("Id")%>" class="btn" data-bs-toggle="">&#x1F6D2;</a>
                                        <%if (Negocio.Seguridad.sessionActiva(Session["cliente"]))
                                            {%>
                                        <a href="Favoritos.aspx?id=<%#Eval("Id")%>" class="btn" data-bs-toggle="">❤️</a>
                                        <%} %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
















