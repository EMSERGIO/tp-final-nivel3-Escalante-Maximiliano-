<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Mi Perfil.aspx.cs" Inherits="TPFinalC_Nivel3.Mi_Perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .validacion {
            color: red;
            font-size: 12px;
        }
    </style>
    <script>
        function validar() {
            const txtNombre = document.getElementById("txtNombre");
            const txtApellido = document.getElementById("txtApellido");
            if (txtNombre.value == "") {
                txtNombre.classList.add("is-invalid");
                txtNombre.classList.remove("is-valid");
                txtApellido.classList.add("is-valid");
                return false;
            }
            txtNombre.classList.remove("is-invalid");
            txtNombre.classList.add("is-valid");
            return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="d-flex justify-content-center align-items-center vh 100">
        <div class="bg-black p-5 rounded-5 text-secondary" style="width: 25rem">
            <div class="text-center fs-1 fw-semibold">Crea tu perfil</div>
            <div class="d-flex justify-content-center mt-3">
                <asp:Image ID="imgNuevoPerfil" ImageUrl="https://img2.freepng.es/20180603/jx/kisspng-user-interface-design-computer-icons-default-stephen-salazar-photography-5b1462e1b19d70.1261504615280626897275.jpg"
                    runat="server" CssClass="img-fluid mb-3" Style="height: 10rem" />
            </div>
           <div class="w-100 fw-semibold mt-2">
                <div class="">
                    <label class="form-label">Email</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" placeholder="Email" />
                </div>
                <div class="w-100 fw-semibold mt-2">
                    <label class="form-label">Nombre</label>
                    <asp:TextBox runat="server" CssClass="form-control" ClientIDMode="Static" ID="txtNombre" />

                </div>
                <div class="w-100 fw-semibold mt-2">
                    <label class="form-label">Apellido</label>
                    <asp:TextBox runat="server" CssClass="form-control" ClientIDMode="Static" ID="txtApellido" />
                </div>
               <div class="w-100 fw-semibold mt-2">
                    <label class="form-label">Imagen Perfil</label>
                    <input type="file" id="txtImagen" runat="server" class="form-control" />
                </div>
            </div>
            <div class="text-center mt-5">
                <asp:Button Text="Guardar" CssClass="btn btn-primary fw-semibold" ID="btnGuardar" OnClientClick="return validar()" OnClick="btnGuardar_Click" runat="server" />
                <a href="/" class="btn btn-outline-danger fw-semibold">Regresar</a>
            </div>
        </div>
    </div>

</asp:Content>
