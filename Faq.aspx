<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Faq.aspx.cs" Inherits="Faq" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FAQ</title>
    <style type="text/css">
    body{
        background-image:url("images/bck.jpg");
    }
    book_joint{
         width: 1321px;
            height: 148px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="background">
         <div id="book_joint">
                <img  src="Images/bookiejoint.jpg" style="width: 1355px; height: 219px" />
            </div>
        <div id="contact">
    <b>FAQ</b>
        <br />
       
        Below are some of our frequently asked questions. If you still can not find an answer you are looking for please <a href="contactus.aspx">contact us</a>
      
        <br />
        <br />
        <a href="#isbn"><b>ISBN's</b></a>
        <br />
        <ul>
            <li><a href="#isbn">What is an ISBN?</a></li>
            <li><a href="#find_isbn">Where can I find the ISBN of my book?</a></li>
            <li><a href="#isbn_look">What does an ISBN look like?</a></li>
        </ul>
        <a href="#types_of_books"><b>Types of Books</b></a>
          <br />
        <ul>
            <li><a href="#books_buy">What types of books do you buy?</a></li>
            <li><a href="#books_not_buy">What types of books do you NOT buy?</a></li>
            <li><a href="#books_resale">Do you buy items marked Not For Resale?</a></li>
            <li><a href="#books_quantity">Will you buy large quantities of books?</a></li>
            <li><a href="#books_copies">Will you buy several copies of a given book</a></li>
        </ul>
         <a href="#book_condition"><b>Book Condition</b></a>
        <br />
        <ul>
            <li><a href="#book_condition">What sort of physical condition should the book be in?</a></li>
            <li><a href="#books_accept_more">Do you accept books that include CDs?</a></li>
        </ul>
        <a href="#getting_paid"><b>Getting Paid</b></a>
        <br />
        <ul>
            <li><a href="#get_paid">When and how do I get paid?</a></li>
            <li><a href="#paid_long">Do you accept books that include CDs?</a></li>
        </ul>
         <a href="#shipping"><b>Shipping</b></a>
        <br />
        <ul>
            <li><a href="#shopping_pay">Does Sell Back Your Book Pay For Shipping?</a></li>
            <li><a href="#shopping_carrier">What if I Want To Ship My Books Using UPS, FederalExpress or the UPS Postal Service using First Class Mail?</a></li>
            <li><a href="#shopping_insurance">Should I pay for tracking and insurance on my package of books?</a></li>
            <li><a href="#shopping_slip">What happens if I don't include some of the books on the packing slip?</a></li>
            <li><a href="#shopping_receive">What happens if I don't receive my books?</a></li>
        </ul>

         <div id="faqcontent">
          </div>
        
        <br />
        <br />
        <br />
        <br />
        <div id="isbn_details">
        <a name="isbn">
           <b>ISBN</b>
            </a>

            <b>
        <br />
        <a name="isbn">
           What is an ISBN?</a>
        </b>
        <a name="isbn">
            <p>ISBN is an abbreviation for “International Standard Book Number”. It's the standardized identification system for books and other media.</p>
        </a>

        <a name="find_isbn">
            <b>Where can I find the ISBN of my book?</b>
            <p>Publishers typically puts the ISBN on the back cover of the book, usually above or near the barcode. They are also shown on the copyright information page within the first few pages of the book. If the item is a single volume and part of a set, this would be a good place to look, as it shows the ISBN of each volume.</p>
        </a>

        <a name="isbn_look">
            <b>What does an ISBN look like?</b>
            <p>Usually the letters ISBN will be printed followed by a number with sections separated by hyphens, e.g. ISBN 0-89123-145-2</p>
        </a>

        <a name="types_of_books">
            <b>Types of Books</b>
        </a>

         <a name="books_buy">
             <b>What types of books do you buy?</b>
            <p>We buy books that meet our condition standards, are available for resale and have at least a little market value. Our pricing page will tell you whether we are buying a specific book once you've entered the ISBN. Items that we typically do not buy are: Older books, books without ISBNs, encyclopedia sets, magazines, music books, comic books, books that are marked as “not for resale,” books that are in poor condition, outdated text books, etc.</p>
        </a>
         
        <a name="books_buy">
            <b>What types of books do you NOT buy?</b>
            <p>We do not buy
                <ul>
                    <li>International Edition Textbooks</li>
                    <li>Instructor Edition Textbooks</li>
                    <li>Examination copies</li>
                    <li>Teacher's Edition</li>
                    <li>Advanced Readers Copy (ARC)</li>
                    <li>Items without an ISBN printed on the book</li>
                    <li>Items that are sexually explicit and/or offensive</li>
                    <li>Non book items such as Calendars and board games (even though they may have an ISBN)</li>
                    <li>Encyclopedia Sets</li>
               </ul></p>
        </a>   

        <a name="books_resale">
            <b>Do you buy items marked Not for Resale?</b>
            <p>No we do not buy any items marked not for resale, for example, but not limited to advanced readers copies, international editions, instructors editions, and examination copies. This information is often hidden by heavy use of tape and stickers, so be cautious. They will be rejected upon arrival.</p>
        </a>

        <a name="books_quantity">
            <b>Will you buy large quantities of books?</b>
            <p>We do buy books in bulk. Please contact us about letting us know the books that you have and amount you are interested in selling. Include the ISBN of each title and quantity of each title - if you could put the information into a table such as Microsoft Excel (MS Excel 2007 or earlier) that would be appreciated. We will let you know if we are willing to buy the items and how many.</p>
        </a>

        <a name="books_quantity">
            <b>Will you buy large quantities of books?</b>
            <p>We do buy books in bulk. Please contact us about letting us know the books that you have and amount you are interested in selling. Include the ISBN of each title and quantity of each title - if you could put the information into a table such as Microsoft Excel (MS Excel 2007 or earlier) that would be appreciated. We will let you know if we are willing to buy the items and how many.</p>
        </a>

       <a name="books_copies">
            <b>Will you buy several copies of a given book?</b>
            <p>We do buy multiple copies of the same book. How many depends on the demands of our buyers. If you have more than one copy of any book, please email us to see if we are buying them and how many. Include in the email the title, the ISBN and the quantity of each title. Also, if you already have an order number created, include that as well.</p>
        </a>
       
        <a name="book_condition">
            <b>Types of Books</b>
        </a>
        <a name="book_condition">
            <b>What sort of physical condition should the books be in?</b>
            <p>Books must be in very good condition which means that books must meet the following criteria:</p>
            <ul>
                <li>No tears and minimal wear to the cover, or pages.</li>
                <li>Corners of covers should not be bent, dented or frayed</li>
                <li>Minimal wear to the binding - pages should be firmly attached to the binding - bindings cannot be broken</li>
                <li>A small amount of writing, underlining or highlighting of pages is okay, as long as it is on fewer than 30% of the book's pages. However, workbooks and study guides must be clean and unwritten in (no answers filled in already)</li>
                <li>No missing pages</li>
                <li>No liquid damage – warped, wavy pages are a sign of liquid damage</li>
                <li>No fire or smoke damage</li>
                <li>No strong odor of any kind (including musty or cigarette odor, for example)</li>
                <li>If book originally came with a CD-Rom, the original CD-Rom must accompany the book when shipped to us. The CD must be in working condition</li>
                <li>No advance reading copies, uncorrected proofs, and/or promotional or screener copies of books</li>
                <li>No partial sets (ie, only sending volume 1 of a 2 volume set). Please make sure you use the correct ISBN if it is a single volume and/or full set! This is a common error!</li>
                <li>No items with the access code exposed. This includes standalone items (for example an item that is an access code for online class like Mathlab) as well as items which include a supplementary access code (for example a textbook packaged with an associated access code for an accompanying online class).</li>
            </ul>
            <p>Items we receive that do not meet these requirements are not eligible for payment. The quote will be deducted from the total amount - so please make good judgment when assessing your items and please pack your books carefully.</p>
        </a>

        <a name="books_accept_more">
            <b>What happens if you do not accept one or more of my books?</b>
            <p>We will inform you immediately of any issues via email. Issues will put your payment on hold until they are resolved by your response. We will either recycle the item and deduct the quote from the total, or send the item(s) back for a return processing fee of $3.99. This fee can be deducted directly from your total quote, or sent via PayPal.</p>
            <p>To ensure that books are not damaged please follow these guidelines:</p>
            <ul>
                <li>Use a sturdy box. Thin boxes (e.g., cereal boxes) may not protect your books in shipment.</li>
                <li>Do not use packing peanuts for packing material. Packing peanuts shift during transit, damage pages and often become crushed by the weight of the books during shipment! A large amount of shipments we've received using packing peanuts result in several damaged books.</li>
                <li>Choose the right size of box. Huge boxes of books nearly always result in damaged books</li>
                <li>Keep the weight of each box and books under 35lbs. Heavy boxes nearly always result in damaged books</li>
                <li>Use wadded up newspaper to fill gaps. Newspaper can be wadded up tightly and provide protection</li>
            </ul>
        </a>

        <a name="getting_paid">
            <b>Getting Paid</b>
        </a>

        <a name="get_paid">
            <b>When and how do I get paid?</b>
            <p>When we receive the box of books and confirm its contents against the order, we process your payment in our next PayPal or check run (usually within 2 business days after the order is processed)</p>
        </a>

        <a name="paid_long">
            <b>How long does it take to get paid?</b>
            <p>Since we are unable to pay you until we receive your items, the real variable in the amount of time to get paid is the transit times. If you choose to ship using our FedEx Service we will receive your items in 2-5 days. If you choose the USPS media mail option we will receive your items in 7-21 days. We attempt to check in all books within two business days of arrival, although this may take longer depending on the number of orders we receive at any given time. For quickest payment use PayPal! </p>
        </a>

        <a name="shopping">
            <b>Shopping</b>
        </a>

        <a name="shopping_pay">
            <b>Who pays for Shipping?</b>
            <p>Shipping is always 100% free when you use one the shipping label provided after checkout!</p>
        </a>

        <a name="shopping_carrier">
            <b>What if I want to ship my items through a different carrier?</b>
            <p>We will gladly accept your packages no matter how you decide to ship them to us. However if you decide not to use our free shipping label, you will be responsible for the shipping costs.</p>
        </a>

       <a name="shopping_insurance">
            <b>Should I pay for insurance on my package of books?</b>
            <p>Insurance is included with our pre-paid shipping label up to $100 dollars.</p>
        </a>

        <a name="shopping_slip">
            <b>What happens if I don't include some of the books on the packing slip?</b>
            <p>We'll contact you via email to confirm that the books were not shipped. If you purchased insurance and your package is missing books we will work with you to recover the cost of the books from the postal service. Only the sender of items (in this case, you) can recover the cost from the postal service. We will help you by providing an accurate accounting of the value.</p>
        </a>

        <a name="shopping_receive">
            <b>What happens if you don't receive my books?</b>
            <p>If we can verify that you shipped out the items and you used our Free label - we will file a claim on your behalf with the shipping carrier. </p>
        </a>
        </div>
        </div>
         </div>
          </div>
    </form>
</body>
</html>
