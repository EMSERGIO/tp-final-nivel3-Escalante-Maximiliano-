﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalC_Nivel3
{
    public partial class Correcto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCorrecto.Text = Session["correcto"].ToString();
        }
    }
}