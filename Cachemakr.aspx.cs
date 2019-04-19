using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Text;
using System.Text;


public partial class Cachemakr : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Bitmap objBMP = new Bitmap(180, 51);
        Graphics objGraphics = Graphics.FromImage(objBMP);
        objGraphics.Clear(Color.Aqua);
        objGraphics.TextRenderingHint = TextRenderingHint.AntiAlias;

        Font objfont = new Font("arial", 30, FontStyle.Regular);
        string randomstr = generatepassword();
        Session["randomstr"] = randomstr;
        objGraphics.DrawString(randomstr, objfont, Brushes.Gray, 2, 2);
        Response.ContentType = "image/GIF";
        objBMP.Save(Response.OutputStream, ImageFormat.Gif);
        objfont.Dispose();
        objGraphics.Dispose();
        objBMP.Dispose();
    }
    public string generatepassword()
    {
        string allowedchars = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z";
        allowedchars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z";
        allowedchars += "2,3,4,5,6,7,8,9";

        char[] sep = { ',' };
        string[] arr = allowedchars.Split(sep);
        string passwordstring = "";
        string temp;
        Random rand = new Random();
        for (int i = 0; i < 6; i++)
        {
            temp = arr[rand.Next(0, arr.Length)];
            passwordstring += temp;
        }
        return passwordstring;
    }
}