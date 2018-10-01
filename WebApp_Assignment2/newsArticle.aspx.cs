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

            newsData target = new newsData();
            List<newsData> news = new List<newsData>();
            using (StreamReader r = new StreamReader(Server.MapPath("~/ ") + "/json/news.json"))
            {
                string json = r.ReadToEnd();
                news = JsonConvert.DeserializeObject<List<newsData>>(json);
            }
            List<newsData> uNews = new List<newsData>();
            using (StreamReader r = new StreamReader(Server.MapPath("~/ ") + "/json/updatableNews.json"))
            {
                string json = r.ReadToEnd();
                uNews = JsonConvert.DeserializeObject<List<newsData>>(json);
            }

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

   /*          HtmlGenericControl myDiv2 = new HtmlGenericControl("div class=\"articleBody\"");
            myDiv.ID = "myDiv2";

            myDiv2.InnerHtml += "<div class=\"title\">" + title + "</div>";
            myDiv2.InnerHtml += "<div class=\"text\">" + target.Text + "</div>";

            PlaceHolder1.Controls.Add(myDiv2); */


/*            form1.InnerHtml += "<h1>" + title + "</h1>";
            form1.InnerHtml += "<p>" + target.Text + "</p>";
            form1.InnerHtml += "<img src=\"" + target.Image + "\" />"; */
        }
    }
}