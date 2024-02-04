<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="proyectoWeb.Clientes" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Registro</h1>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }

        #formContainer {
            width: 400px;
            margin: 0 auto;
            text-align: left;
            border: 1px solid #ccc;
            padding: 60px;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input[type="text"],
        .form-group input[type="number"] {
            width: calc(100% - 40px);
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
            margin-top: 5px;
        }

        .form-group-Button input[type="submit"] {
            background-color: #4f9cfa;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }


        .form-group input[type="submit"]:hover {
            background-color: #45a049;
        }

        .form-group input[type="reset"] {
            background-color: #f44336;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            margin-left: 10px;
        }

        .form-group input[type="reset"]:hover {
            background-color: #da190b;
        }
    .auto-style1 {
        display: block;
        font-size: 1rem;
        font-weight: 400;
        line-height: 1.5;
        color: #212529;
        background-clip: padding-box;
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        border-radius: 0.375rem;
        transition: none;
        border: 1px solid #ced4da;
        background-color: #fff;
    }
    </style>

     <div id="formContainer">
        <div class="form-group">
            <label for="ddlTipoIdentificacion">Tipo de Identificación:</label>
            <asp:DropDownList ID="ddlTipoIdentificacion" runat="server" CssClass="auto-style1" Height="51px" Width="240px">
                <asp:ListItem Text="Cedula " Value="Cedula"></asp:ListItem>
                <asp:ListItem Text="Pasaporte" Value="Pasaporte"></asp:ListItem>
                <asp:ListItem Text="Cedula de Extranjería" Value="Carnet de Extranjería"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <label for="txtIdentificacion">Identificación:</label>
            <asp:TextBox ID="txtIdentificacion" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtNombre">Nombre:</label>
            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtApellido">Apellido:</label>
            <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtTelefono">Teléfono:</label>
            <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtEdad">Edad:</label>
            <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control" type="number"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtCiudad">Ciudad:</label>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style1" Height="51px" Width="240px">
            <asp:ListItem Text="Bogota" Value="Bogota"></asp:ListItem>
            <asp:ListItem Text="Cali" Value="Cali"></asp:ListItem>
            <asp:ListItem Text="Cartagena" Value="Cartagena"></asp:ListItem>
            <asp:ListItem Text="Barranquilla" Value="Barranquilla"></asp:ListItem>
            <asp:ListItem Text="Medellin" Value="Medellin"></asp:ListItem>
        </asp:DropDownList>
        </div>
        <div class="form-group-Button">
            <asp:Button ID="btnGuardar" runat="server" Text="Ver Disponible" Width="257px" OnClick="btnGuardar_Click" />
        </div>
          <div class="form-group-Button2">
              <asp:Label ID="lblmensaje" runat="server" Text=""></asp:Label>
     </div>
    </div>
</asp:Content>
