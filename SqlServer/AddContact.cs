using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlServer
{
    public  class AddContact:sqlConnection
    {
          String Name;
          String Email;
          String Msg;


        public  void setName(String Name) {
            this.Name = Name;
        }


        public String getName() {
            return Name;
        }

        public void setEmail(String Email)
        {
            this.Email = Email;
        }


        public String getEmail()
        {
            return Email;
        }


        public void setMsg(String Mssg)
        {
            this.Msg = Mssg;
        }


        public String getMssg()
        {
            return Msg;
        }


        public AddContact(String Name,String Email,String Msg) {
            setName(Name);
            setEmail(Email);
            setMsg(Msg);
            String cmd = "insert into ContactRecord(Name,Email,Msg) values('"+getName()+"','"+getEmail()+"','"+getMssg()+"')";
            AddDelUpdate(cmd);

        }



    }
}
