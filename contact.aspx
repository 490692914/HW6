<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Web Contact Form</title>
    <link rel="stylesheet" type="text/css" href="~/css/StyleSheet.css" />
</head>

<body>
     <div id="top">
        <p>
            <br />
            <asp:Label ID="Header1" runat="server" Text="Wicked Easy Recipes"></asp:Label>
         </p>
        <p>  
            <asp:Label ID="Header2" runat="server" Text="Using 5 Ingredients or Less!"></asp:Label>
        </p>

        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="menubar" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
&nbsp; |&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="menubar" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
&nbsp;|&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="menubar" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
&nbsp; |&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="menubar" NavigateUrl="~/contact.aspx">Contact</asp:HyperLink>
        </p>
     </div>
    <div id="contact">
    <form id="form1" runat="server" class="form1" style="border: thin solid #FF5050; font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: small;">

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your name:<br />
        <asp:TextBox ID="senderName" runat="server" placeholder="First and last name" ></asp:TextBox>
        <br />
        <br />

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server" placeholder="Preferred email address" ></asp:TextBox>
        <br />
        <br />
       
        Your subject:<br />
        <asp:TextBox ID="senderSubject" runat="server"></asp:TextBox>
        <br />
        <br />

         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" placeholder="Please enter your message." ></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>

    </form>
        </div>
</body>
</html>
