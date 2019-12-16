using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlServer
{
   public class Villa:sqlConnection
    {

        String Name;
        int Price;
        String Size;

        public void setName(String Name) {
            this.Name = Name;
        }


        public String getName() {
            return Name;
        }

        public void setSize(String Size)
        {
            this.Size = Size;
        }


        public String getSize()
        {
            return Size;
        }

        public void setPrice(int Price)
        {
            this.Price = Price;
        }


        public int getPrice()
        {
            return Price;
        }



        public Villa(String Name,int Price,String Size) {
            setName(Name);
            setPrice(Price);
            setSize(Size);

            String cmd = "insert into VillaRecord(Name,Price,Size) values('"+Name+"',"+Price+",'"+Size+"')";

            AddDelUpdate(cmd);



        }



    }
}
