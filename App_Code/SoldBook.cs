using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

class SoldBook
{
    private string isbnNumber;
    private string title;
    private string soldDate;

    public string IsbnNumber
    {
        get { return isbnNumber; }
        set { isbnNumber = value; }
    }

    public string Title
    {
        get { return title; }
        set { title = value; }
    }

    public string SoldDate
    {
        get { return soldDate; }
        set { soldDate = value; }
    }

    public SoldBook(string a, string b, string c)
    {
        this.isbnNumber = a;
        this.title = b;
        this.soldDate = c;
    }
}

