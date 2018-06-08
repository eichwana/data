using System;
using System.Data;
using System.Data.SqlClient;

namespace data
{
    public partial class Default : System.Web.UI.Page
    {

        
        int numnum = 1;

        protected void Page_Init(object sender, EventArgs e)
        {
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void yesButton_Click(object sender, EventArgs e)
        {
            openLabel.Visible = true;
            openLabel.Text = "What is your name?";
            noButton.Enabled = false;
            nameBox.Visible = true;
            submitButton.Visible = true;
        }

        protected void noButton_Click(object sender, EventArgs e)
        {
            openLabel.Visible = true;
            openLabel.Text = "What name did you use previously?";
            yesButton.Enabled = false;
            nameBox.Visible = true;
            submitButton.Visible = true;
        }
        
        protected void submitButton_Click(object sender, EventArgs e)
        {
            string userName = nameBox.Text;
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Windows\source\repos\data\data\App_Data\Database1.mdf;Integrated Security=True;Persist Security Info=True;Column Encryption Setting=Disabled");
                SqlCommand cmd = new SqlCommand("sp_insert", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("name", userName.Trim());
                con.Open();
                int k = cmd.ExecuteNonQuery();
               // if (k != 0)
               // {
                //    lblmsg.Text = "Saved!";
               // }
                con.Close();

            }
            if (yesButton.Enabled == true)
            {
                
                startForm.Visible = false;
                yesForm.Visible = true;
                entryLabel.Text = "Hi " + userName.Trim() + ", type your entries here";
                numLabel1.Text = numnum + ".";
                
            }
            else
            {
                startForm.Visible = false;
                noForm.Visible = true;
                recallLabel.Text = "Hi " + userName.Trim() + ", here is what you saved last time";
            }
        }

        protected void insButton_Click(object sender, EventArgs e)
        {
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Windows\source\repos\data\data\App_Data\Database1.mdf;Integrated Security=True;Persist Security Info=True;Column Encryption Setting=Disabled");
                
                SqlCommand cmd = new SqlCommand("sp_insert", con);
                cmd.CommandType = CommandType.StoredProcedure;
                
                cmd.Parameters.AddWithValue("entry1", TextBox1.Text);
                cmd.Parameters.AddWithValue("entry2", TextBox2.Text);
                cmd.Parameters.AddWithValue("entry3", TextBox3.Text);
                cmd.Parameters.AddWithValue("entry4", TextBox4.Text);
                cmd.Parameters.AddWithValue("entry5", TextBox5.Text);
                con.Open();
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    lblmsg.Text = "Saved!";
                }
                con.Close();
            }
        }



        /*   protected void addButton_Click(object sender, EventArgs e)
           {


               for (int i = 0; i < 10; i++)
               {
                   TextBox box = new TextBox();
                   Label txt = new Label();
                   Button btn = new Button();
                   numnum++;
                   txt.Style["position"] = "relative";
                   txt.Style["top"] = "10px";
                   txt.Style["right"] = "45px";
                   txt.Text = numnum + ".";
                   box.Style["position"] = "relative";
                   box.Style["top"] = "10px";
                   box.Style["right"] = "41px";
                   btn.Style["position"] = "relative";
                   btn.Style["top"] = "10px";
                   btn.Style["right"] = "25px";
                   btn.Text = "Add another";
                   btn.ID = "add" + numnum + "Button";
                   txt.ID = "numLabel" + numnum;
                   box.ID = "entryBox" + numnum;
                   newForm.Controls.Add(txt);
                   newForm.Controls.Add(box);
                   newForm.Controls.Add(btn);
               }



           }*/





    }
}