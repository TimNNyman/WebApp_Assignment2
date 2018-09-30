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

            form1.InnerHtml += "<h1>" + title + "</h1>";
            form1.InnerHtml += "<p>" + target.Text + "</p>";
            form1.InnerHtml += "<img src=\"" + target.Image + "\" />";
        }
    }
}