using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlServerCe;
using System.Data;

public partial class   Reserves : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadGrid();
        }
    }

    private void LoadGrid()
    {
        SqlCeConnection con = new SqlCeConnection(@"DataSource='|DataDirectory|\restauranteuoc.sdf'");
        con.Open();
        SqlCeCommand command = new SqlCeCommand("SELECT * FROM reservas", con);
        SqlCeDataReader reader = command.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(reader);
        con.Close();

        CustomersGridView.DataSource = dt;
        CustomersGridView.DataBind();
    }

    public void NovaReserva(object sender, EventArgs e)
    {
        Response.Redirect("Modificainou.aspx");
    }

    protected void RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "EditReserva")
        {
            var id = int.Parse(e.CommandArgument.ToString());
            Response.Redirect("Modificainou.aspx?id=" + id);
        }

        if (e.CommandName == "DetallsReserva")
        {
            var id = int.Parse(e.CommandArgument.ToString());
            Response.Redirect("Details.aspx?id=" + id);
        }

        if (e.CommandName == "EliminarReserva")
        {
            var ide = int.Parse(e.CommandArgument.ToString());

            SqlCeConnection con = new SqlCeConnection(@"DataSource='|DataDirectory|\restauranteuoc.sdf'");
            con.Open();
            SqlCeCommand command = new SqlCeCommand("DELETE FROM reservas WHERE id=@ide", con);
            command.Parameters.AddWithValue("@ide", ide);
            command.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Reserves.aspx");

        }
    }
}