using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Configuration;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for Conclass
/// </summary>
public class Conclass
{
	public string returncon( )
	{
        return ConfigurationManager.ConnectionStrings["shoedbcon"].ToString();
	}
}