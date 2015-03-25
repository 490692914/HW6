<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AboutUs.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="~/css/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
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
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="menubar">About Us</asp:HyperLink>
&nbsp; |&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="menubar" NavigateUrl="~/contact.aspx">Contact</asp:HyperLink>
        </p>
     </div>
    <div id="aboutus">
    
        <p>
    
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquet, tellus sit amet feugiat euismod, velit lectus pellentesque nisi, non eleifend quam ipsum at arcu. Sed semper mi a tristique porttitor. Morbi rhoncus diam dui, a ultricies eros mollis sed. Donec facilisis blandit elit ut ultrices. Nullam laoreet volutpat dolor in convallis. Ut ornare mollis odio at luctus. Morbi nec blandit justo. Donec porta sagittis euismod. Cras quis congue dui. Nunc at lorem ac diam vestibulum placerat quis eu nibh. In hac habitasse platea dictumst. Etiam vel lorem nec justo suscipit ornare. Sed risus urna, gravida nec convallis eu, viverra nec sem. Sed eget mauris magna. Sed vulputate tortor in tempus fringilla. Donec in commodo tellus. Ut laoreet ut lectus ac vehicula. Duis velit nulla, suscipit ut urna ac, facilisis elementum sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut dui quam, imperdiet ornare est non, accumsan vulputate justo. Vestibulum sit amet erat a nunc 
        consectetur pellentesque. Aenean imperdiet tellus nec augue eleifend condimentum.<br />
    
        <br />
    </p>
    </div>
    </form>
</body>
</html>

