using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlServerCe;

public partial class Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var ide = Request.QueryString["id"];
            if (!string.IsNullOrWhiteSpace(ide))
            {
                LoadReserva(int.Parse(ide));
            }
        }
    }

    private void LoadReserva(int ide)
    {
        SqlCeConnection con = new SqlCeConnection(@"DataSource='|DataDirectory|\restauranteuoc.sdf'");
        con.Open();
        SqlCeCommand command = new SqlCeCommand("SELECT * FROM reservas WHERE id=@ide", con);
        IdReserva.Text = ide.ToString();
        command.Parameters.AddWithValue("@ide", ide);
        command.ExecuteNonQuery();
        SqlCeDataReader reader = command.ExecuteReader();
        reader.Read();

        NomReserva.Text = reader["nombre"].ToString();
        CognomsReserva.Text = reader["apellidos"].ToString();
        TelefonReserva.Text = reader["telefono"].ToString();
        DataReserva.Text = reader["fecha"].ToString();
        ComensalsReserva.Text = reader["comensales"].ToString();
        ComentariReserva.Text = reader["comentarios"].ToString();


        reader.Close();
        con.Close();
    }

    public void CancelarReserva(object sender, EventArgs e)
    {
        Response.Redirect("Reserves.aspx");
    }

}