using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBS635_Demo1
{
    public partial class AnaTemplate : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // İlk yüklenme durumunda kullanılır
            {
             
            }
        }

      
    }
}
