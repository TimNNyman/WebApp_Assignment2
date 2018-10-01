using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace WebApp_Assignment2
{
    public partial class newsArticle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string title = Request.QueryString["title"];

            if (title == null)
            {
                Response.Redirect("default.aspx");
            }

            newsData target = new newsData();

            List<newsData> news = DatabaseConnector.Inst.readNewsData(Server.MapPath("~/ ") + "/json/news.json");
            List<newsData> uNews = DatabaseConnector.Inst.readNewsData(Server.MapPath("~/ ") + "/json/updatableNews.json");

            news = news.Concat(uNews).ToList(); ;

            for (int i = 0; i < news.Count; i++)
            {
                if(news[i].Title == title)
                {
                    target = news[i];
                    break;
                }
            }

 
            HtmlGenericControl myDiv = new HtmlGenericControl("div");
            myDiv.ID = "myDiv";

            myDiv.InnerHtml += "<div class=\"image\">" + "<img src=\"" + target.Image + "\" />" + "</div>";

            myDiv.InnerHtml += "<div class=\"title\">" + title + "</div>";
            myDiv.InnerHtml += "<div class=\"text\">" + target.Text + "</div>";

            PlaceHolder1.Controls.Add(myDiv);
        }
    }
}