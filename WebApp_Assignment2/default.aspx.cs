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
            List<newsData> items = new List<newsData>();
            using (StreamReader r = new StreamReader(Server.MapPath("~/ ")+"/json/news.json"))
            {
                string json = r.ReadToEnd();
                items = JsonConvert.DeserializeObject<List<newsData>>(json);
            }
            string retString = "";

            for (int i = 0; i < items.Count; i++)
            {
                retString += createContainerElement(items[i]);
            }

            return retString;
        }

        private string createContainerElement(newsData e)
        {
            return string.Format("<div class=\"{0}\"><a href=\"{4}\"><img src =\"{1}\" class=\"image\"/><div class=\"{5}\" ><div class=\"title\">{2}</div><div class=\"text\">{3}</div></div></a></div>"
                , e.Type, e.Image, e.Title, e.Text, ".aspx/" + e.Title, e.Type == "container" ? "overlay" : "textContent");
        }
    }

    public class newsData
    {
        public string Title { get; set; }
        public string Image { get; set; }
        public string Text { get; set; }
        public string Type { get; set; }

    }
}