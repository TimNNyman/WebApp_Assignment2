using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Assignment2
{
    public partial class addNews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            List<newsData> _data = new List<newsData>();

            _data.Add(new newsData()
            {
                Title = Title.Value,
                Image = "images/raptor2.jpg",
                Text = Content.Value
            });
            using (StreamWriter file = File.CreateText(Server.MapPath("~/ ") + "/json/updatableNews.json"))
            {
                JsonSerializer serializer = new JsonSerializer();
                //serialize object directly into file stream
                serializer.Serialize(file, _data);
            }

            Response.Redirect("default.aspx");
        }
    }
}