<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TPFinalC_Nivel3.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="d-flex justify-content-center align-items-center vh 100">
        <div class="bg-black p-5 rounded-5 text-secondary" style="width: 25rem">
            <div class="d-flex justify-content-center">
                <img src="https://cdn.pixabay.com/photo/2016/11/14/17/39/person-1824144_960_720.png" alt="Login-icon"
                    style="height: 6rem" />
            </div>
            <div class="text-center fs-1 fw-semibold">Login</div>

            <div class="input-group mt-2">
                <div class="input-group-text">
                    <img src="https://vectorified.com/images/login-logo-icon-4.jpg" alt="User-icon" style="height: 1.5rem" />
                </div>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail"  REQUIRED  placeholder="Email" />
                <%--<asp:RegularExpressionValidator ErrorMessage="Formato de email incorrecto" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ControlToValidate="txtEmail" runat="server" />--%>
            </div>

            <div class="input-group mt-1">
                <div class="input-group-text">
                    <img src="https://img2.gratispng.com/20180423/zvw/kisspng-password-manager-computer-icons-password-strength-chang-5add8b6a512740.0074379815244685863324.jpg" 
                        alt="Pass-icon" style="height: 1.5rem" />
                </div>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" REQUIRED TextMode="Password" placeholder="Password" />
            </div>

            <div>
                <div class="mt-3">
                    <asp:Button Text="Login" runat="server" CssClass=" btn btn-primary w-100 fw-semibold" ID="btnLogin" OnClick="btnLogin_Click" />
                </div>
            </div>
            <div class="bg-whith d-flex gap-1 justify-content-center mt-2">
                <div>No tienes cuanta todavia?</div>
                <a href="Registro.aspx" class="fw-semibold">Registrar</a>
            </div>
            <div class="p-3">
                <div class="border-bottom text-center" style="height:0.9rem">
                    <span class="bg-black px-3">O</span>
                </div>
            </div>
            <div class="btn d-flex gap-2 justify-content-center mt-3">
                <img src="https://cdn.icon-icons.com/icons2/729/PNG/512/google_icon-icons.com_62736.png" alt="Google-icon" style="height: 1.3rem" />
                <div class="fw-semibold text-secondary">Continue con Google</div>
            </div>
        </div>
    </div>

</asp:Content>
