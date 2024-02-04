using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls;

namespace Modelo
{
    public class ClientesM
    {
        ConexionBD conectar;

        // Funcion Para Registrar Clientes
        public int crear(string tipo_id, int identficacion, string nombre, string apellido, string telefono, int edad, string ciudad)
        {
            int n_registro = 0;
            conectar = new ConexionBD();
            conectar.Abrirconexion();
            string consulta = string.Format("INSERT INTO Cliente (tipo_id,identficacion,nombre,apellido,telefono,edad,ciudad) VALUES ('{0}',{1},'{2}','{3}','{4}',{5},'{6}');", tipo_id, identficacion, nombre, apellido, telefono, edad, ciudad);
            MySqlCommand query = new MySqlCommand(consulta, conectar.conectar);
            query.Connection = conectar.conectar;
            n_registro = query.ExecuteNonQuery();
            conectar.CerrarConexion();
            return n_registro;


        }
    }
}
