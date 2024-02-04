<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReservaFn.aspx.cs" Inherits="proyectoWeb.ReservaFn" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
       
    <h1>Alquiler De Autos</h1>
   <script>
       function calcular() {
           // Calcular de precio total
           var precioPorDia = parseFloat(document.getElementById('<%= txtPrecioPorDia.ClientID %>').value);
           var cantidadDias = parseInt(document.getElementById('txtNumeroDias').value);
           var totalPrecio = precioPorDia * cantidadDias;

       document.getElementById('<%= lblTotal.ClientID %>').innerText = totalPrecio.toFixed(0);

           // Calcular días
           var fechaInicio = new Date(document.getElementById('calFechaInicio').value);
           var fechaFin = new Date(document.getElementById('calFechaFin').value);

           if (fechaInicio && fechaFin && fechaFin >= fechaInicio) {
               var diferencia = fechaFin.getTime() - fechaInicio.getTime();
               var numeroDias = Math.ceil(diferencia / (1000 * 60 * 60 * 24));

               document.getElementById('txtNumeroDias').value = numeroDias;
           } else {
               document.getElementById('txtNumeroDias').value = '';
           }
       }
   </script>

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

    .form-group-Button2 input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        margin-top: 20px;
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
    .auto-style2 {
        width: 240px;
    }
    .auto-style3 {
        width: 236px;
    }
</style>

    

 <div id="formContainer">

      <div class="form-group">
      <label for="MetodoPago">Seleccione Su Auto</label>
      <asp:DropDownList ID="DropVehiculos" runat="server" CssClass="auto-style1" Height="51px" Width="240px">
      <asp:ListItem Text="Efectivo" Value="Efectivo"></asp:ListItem>
      <asp:ListItem Text="Tarjeta de Credito" Value="Tarjeta de Credito"></asp:ListItem>
      <asp:ListItem Text="Cali" Value="Cali"></asp:ListItem>
      </asp:DropDownList>
      </div>

    <div class="form-group">
        <label for="calFechaInicio">Fecha de Inicio:</label>
        <input type="date" id="calFechaInicio" onchange="calcular()" class="auto-style2" >

    </div>
    <div class="form-group">
        <label for="calFechaFin">Fecha de Fin:</label>
        <input type="date" id="calFechaFin"  onchange="calcular()" class="auto-style3">
    </div>
    <div class="form-group">
        <label for="txtNumeroDias">Número de Días:</label>
        <input type="text" id="txtNumeroDias" onchange="calcular()">
    </div>
    <div class="form-group" style="display: none;">
        <label for="txtCantidadDias">Cantidad de Días:</label>
        <asp:TextBox ID="txtCantidadDias" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
       <label for="txtPrecioPorDia">Precio por Día:</label>
       <asp:TextBox ID="txtPrecioPorDia" runat="server" onchange="calcular()"></asp:TextBox>
    </div>

     <div class="form-group">
   <label for="MetodoPago">Metodo de Pago:</label>
   <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style1" Height="51px" Width="240px">
   <asp:ListItem Text="Efectivo" Value="Efectivo"></asp:ListItem>
   <asp:ListItem Text="Tarjeta de Credito" Value="Tarjeta de Credito"></asp:ListItem>
   <asp:ListItem Text="Pago en Destino" Value="Pago en Destino"></asp:ListItem>
   </asp:DropDownList>
   </div>

    <div class="form-group">
        <label for="lblTotal">Precio Total:</label>
        <asp:Label ID="lblTotal" runat="server"></asp:Label>
    </div>
    
    <div class="form-group-Button">
        <asp:Button ID="btnGuardar" runat="server" Text="Alquilar Auto" Width="257px" OnClick="btnGuardar_Click"/>
    </div>
      
</div>
</asp:Content>
