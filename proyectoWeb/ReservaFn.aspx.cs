using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoWeb
{
    public partial class ReservaFn : System.Web.UI.Page
    {
        ReservaF reserva;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                reserva = new ReservaF();
                reserva.drop_vehiculos(DropVehiculos);

                

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            //reserva = new ReservaF();
            //if (reserva.crear_reserva(1, Convert.ToInt32(DropVehiculos.Text), Convert.ToDateTime(calFechaInicio.Value), Convert.ToDateTime(calFechaFin.Value), Convert.ToInt32(txtCantidadDias.Text), Convert.ToInt32(lblTotal.Text), "Activo", DropDownList2.Text) > 0)
            //{

            //    //lblmensaje.Text = "Registro Exitoso...";

            Response.Redirect("~/Default.aspx");
            //}


        }
    }
}