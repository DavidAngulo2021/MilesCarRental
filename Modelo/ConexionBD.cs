using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;

namespace Modelo
{

    //Conexion a la base de datos Mysql
    public class ConexionBD
    {
        private string cadena = "server=localhost;database=MilesCar; user=root; password=admin";
        public MySqlConnection conectar = new MySqlConnection();
        public void Abrirconexion()
        {

            try
            {
                conectar.ConnectionString = cadena;
                conectar.Open();
                System.Diagnostics.Debug.WriteLine("Conexion Exitosa");
            }
            catch(Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
                
            }

        }

        public void CerrarConexion(){

            try
            {   
                if(conectar.State == ConnectionState.Open)
                {
                    conectar.Close();
                    System.Diagnostics.Debug.WriteLine("Cerrar conexion");

                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);

            }

        }

    
    }
}
