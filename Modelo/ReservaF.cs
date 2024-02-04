using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls;
using System.Data;

namespace Modelo
{
    public class ReservaF
    {

        ConexionBD conectar;

        private DataTable drop_vehiculos() {  // Metodo para mostrar una consulta de Mysql
           DataTable dt = new DataTable();
            conectar = new ConexionBD();
            conectar.Abrirconexion();
            string consulta = string.Format("select idVehiculo,nvehiculo from vehiculo;");
            MySqlDataAdapter query = new MySqlDataAdapter(consulta, conectar.conectar);
            query.Fill(dt);
            conectar.CerrarConexion();

            return dt;
        }

        public void drop_vehiculos(DropDownList drop) //para poblar un control DropDownList con datos de vehículos
        {
            drop.ClearSelection();
            drop.Items.Clear();
            drop.AppendDataBoundItems = true;
            drop.Items.Add("Selecciona su auto");
            drop.Items[0].Value = "0";
            drop.DataSource = drop_vehiculos();
            drop.DataTextField = "nvehiculo";
            drop.DataValueField = "idVehiculo";
            drop.DataBind();
        }

        //Metodo para crear alquiler del auto
        public int crear_reserva(int r_idCliente, int v_idVehiculo, DateTime fechaInicio, DateTime fechaFin, int numeroDias, int valorReserva, string estadoReserva, string metodopago)
        {
            int n_registro = 0;
            conectar = new ConexionBD();
            conectar.Abrirconexion();
            string consulta = string.Format("INSERT INTO Reserva (r_idCliente, v_idVehiculo, fechaInicio, fechaFin, numeroDias, valorReserva, estadoReserva, metodopago) VALUES ({0},{1},'{2}','{3}',{4},{5},'{6}','{7}');",r_idCliente,v_idVehiculo,fechaInicio,fechaFin,numeroDias,valorReserva,estadoReserva,metodopago);
            MySqlCommand query = new MySqlCommand(consulta, conectar.conectar);
            query.Connection = conectar.conectar;
            n_registro = query.ExecuteNonQuery();
            conectar.CerrarConexion();
            return n_registro;


        }

    }
}
