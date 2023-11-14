<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TPFinalC_Nivel3.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        .validacion{
            color: red;
            font-size: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-4">
            <h2>Creá tu perfil</h2>
            <div class="mb-3">
                <label class="form-label">Email</label>
                <asp:TextBox runat="server" CssClass="form-control" REQUIRED ID="txtEmail" />
                 <asp:RegularExpressionValidator ErrorMessage="Formato de email incorrecto..." CssClass="validacion" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ControlToValidate="txtEmail" runat="server" />
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" REQUIRED TextMode="Password" />
<%--                <asp:RangeValidator ErrorMessage="Contraseña fuera de rango. Maximo 8 caracteres..." CssClass="validacion" type="string" MinimumValue="1" MaximumValue="8"  ControlToValidate="txtPassword" runat="server" />--%>
            </div>
            <asp:Button Text="Registrarse" runat="server" CssClass=" btn btn-primary" ID="btnRegistrarse" OnClick="btnRegistrarse_Click" />
            <a href="/" class="btn btn-outline-danger">Cancelar</a>
        </div>
    </div>

</asp:Content>
