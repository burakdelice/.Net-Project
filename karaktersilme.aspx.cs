using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBS635_Demo1
{
    public partial class karaktersilme : Page
    {
        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            try
            {
                string name = ((TextBox)FormViewKarakterSilme2.FindControl("nameTextBox"))?.Text;

                if (string.IsNullOrEmpty(name))
                {
                    ResultLabel.Text = "Lütfen bir karakter adı girin.";
                    return;
                }

                SqlDataSource sqlDataSource = SqlDataSourceKarakterSilme;

                // Parametre değerini ayarla
                sqlDataSource.DeleteParameters["name"].DefaultValue = name;

                // Silme işlemini başlat ve etkilenen satır sayısını al
                int affectedRows = sqlDataSource.Delete();

                // Sonucu kontrol et ve kullanıcıya bildir
                if (affectedRows > 0)
                {
                    ResultLabel.Text = $"Karakter '{name}' başarıyla silindi.";
                }
                else
                {
                    ResultLabel.Text = "Silme işlemi gerçekleştirilemedi.";
                }
            }
            catch (Exception ex)
            {
                ResultLabel.Text = $"Bir hata oluştu: {ex.ToString()}";
            }
        }

    }

}