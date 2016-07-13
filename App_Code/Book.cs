using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Books
/// </summary>
public class Books
{
    public String Temp;
    private string isbn;

    public string Isbn
    {
        get { return isbn; }
        set { isbn = value; }
    }
    private string title;

    public string Title
    {
        get { return title; }
        set { title = value; }
    }
    private string author;

    public string Author
    {
        get { return author; }
        set { author = value; }
    }
    private string buyprice;

    public string Buyprice
    {
        get { return buyprice; }
        set { buyprice = value; }
    }
    public Books(string p1, string p2, string p3, string p4)
    {
        // TODO: Complete member initialization
        this.isbn = p1;
        this.title = p2;
        this.author = p3;
        this.buyprice = p4;
    }

    public Books()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void SetIsbn(string isbn)
    {
        this.isbn = isbn;
    }

    public void SetTitle(string title)
    {
        this.title = title;
    }

    public void SetAuthor(string author)
    {
        this.author = author;
    }

    public void SetBuyPrice(string buyprice)
    {
        this.buyprice = buyprice;
    }
}
