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
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            articles.InnerHtml += getNewsAsHtmlString();
        }

        private string getNewsAsHtmlString()
        {
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
            string retString = "";

            for (int i = 0; i < uNews.Count; i++)
            {
                retString += createUpdatableNewsElement(uNews[i]);
            }

            for (int i = 0; i < news.Count; i++)
            {
                retString += createNewsElement(news[i]);
            }

            return retString;
        }

        private string createNewsElement(newsData e)
        {
            return string.Format("<div class=\"container\"><a href=\"{0}\"><img src =\"{1}\" class=\"image\"/><div class=\"overlay\" ><div class=\"title\">{2}</div><div class=\"text\">{3}</div></div></a></div>"
                , createNewsLink(e.Title), e.Image, e.Title, e.Text);
        }

        private string createUpdatableNewsElement(newsData e)
        {
            return string.Format("<div class=\"updatableNews\"><a href=\"{0}\"><img src =\"{1}\" class=\"image\"/><div class=\"textContent\" ><div class=\"title\">{2}</div><div class=\"text\">{3}</div></div></a></div>"
                , createNewsLink(e.Title), e.Image, e.Title, e.Text);
        }

        private string createNewsLink(string title)
        {
            return "newsArticle.aspx?title=" + title;
        }
    }
}