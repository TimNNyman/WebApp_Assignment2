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
            if ((string)Session["loggedIn"] != "true")
            {
                Response.Redirect("default.aspx");
            }
        }

        protected void Btn_Click(object sender, EventArgs e)
        {

            if (FileUploadControl.HasFile)
            {
                string filename;
                try
                {
                    filename = Path.GetFileName(FileUploadControl.FileName);
                    FileUploadControl.SaveAs(Server.MapPath("~/images/") + filename);
                    StatusLabel.Text = "Upload status: File uploaded!";
                }
                catch (Exception ex)
                {
                    StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                    return;
                }

                List<newsData> _data = new List<newsData>();

                _data.Add(new newsData()
                {
                    Title = Title.Value,
                    Image = "images/" + filename,
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
}