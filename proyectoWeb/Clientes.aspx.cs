using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoWeb
{
    public partial class Clientes : System.Web.UI.Page
    {
        ClientesM cliente;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            // Verificar si algún campo está vacío
            if (string.IsNullOrWhiteSpace(txtIdentificacion.Text) ||
                string.IsNullOrWhiteSpace(txtNombre.Text) ||
                string.IsNullOrWhiteSpace(txtApellido.Text) ||
                string.IsNullOrWhiteSpace(txtTelefono.Text) ||
                string.IsNullOrWhiteSpace(txtEdad.Text))
            {
                lblmensaje.Text = "Por favor complete todos los campos.";
                return;
            }
            else
            {

                cliente = new ClientesM();

                if (cliente.crear(ddlTipoIdentificacion.Text, Convert.ToInt32(txtIdentificacion.Text), txtNombre.Text, txtApellido.Text, txtTelefono.Text, Convert.ToInt32(txtEdad.Text), DropDownList2.Text) > 0)
                {
                    lblmensaje.Text = "Registro Exitoso...";

                    Response.Redirect("~/Reserva.aspx");
                }

            }

        }
    }
}