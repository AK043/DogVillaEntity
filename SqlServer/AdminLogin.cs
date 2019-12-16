using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlServer
{
    public class AdminLogin:sqlConnection
    {
        String Name;
        String Password;


        public void setName(String Name) {
            this.Name = Name;
        }
        public String getName() {
            return Name;
        }
        public void setPassword(String Password) {
            this.Password = Password;
        }

        public String getPassword() {
            return Password;
        }


        public AdminLogin(String Name, String Password) {
            setName(Name);
            setPassword(Password);

        }

        public int Verify() {
            
            String cmd = "select * from LoginRecord where Name='" + getName() + "' and Password='" + getPassword()+"'";
            DataTable tbl = new DataTable();
            tbl = SearchRecord(cmd);
            if (tbl.Rows.Count > 0)
            {
                return 1;
            }
            else {
                return 0;
            }
        }



    }
}
