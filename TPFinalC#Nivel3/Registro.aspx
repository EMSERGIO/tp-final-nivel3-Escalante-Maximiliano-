<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TPFinalC_Nivel3.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .validacion {
            color: red;
            font-size: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="d-flex justify-content-center align-items-center vh 100">
        <div class="bg-black p-5 rounded-5 text-secondary" style="width: 25rem">
            <div class="text-center fs-1 fw-semibold">Registro</div>
            <div class="input-group mt-2">
                <div class="input-group-text">
                    <img src="https://vectorified.com/images/login-logo-icon-4.jpg" alt="User-icon" style="height: 1.5rem" />
                </div>
                <asp:TextBox runat="server" CssClass="form-control" REQUIRED ID="txtEmail" placeholder="Email" />
                <%--<asp:RegularExpressionValidator ErrorMessage="Formato de email incorrecto..." CssClass="validacion" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ControlToValidate="txtEmail" runat="server" />--%>
            </div>
            <div class="input-group mt-1">
                <div class="input-group-text">
                    <img src="https://img2.gratispng.com/20180423/zvw/kisspng-password-manager-computer-icons-password-strength-chang-5add8b6a512740.0074379815244685863324.jpg"
                        alt="Pass-icon" style="height: 1.5rem" />
                </div>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" REQUIRED TextMode="Password" placeholder="Password" />
                <%--                <asp:RangeValidator ErrorMessage="Contraseña fuera de rango. Maximo 8 caracteres..." CssClass="validacion" type="string" MinimumValue="1" MaximumValue="8"  ControlToValidate="txtPassword" runat="server" />--%>
            </div>
            <div>
                <div class="mt-3">
                    <asp:Button Text="Registrarse" runat="server" CssClass="btn btn-primary w-100 fw-semibold" ID="btnRegistrarse" OnClick="btnRegistrarse_Click" />
                </div>
            </div>
            <div>
                <div class="mt-4">
                    <a href="/" class="btn btn-outline-danger w-100 fw-semibold">Cancelar</a>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
