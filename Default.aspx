<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

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
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="menubar" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
&nbsp; |&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="menubar" NavigateUrl="~/contact.aspx">Contact</asp:HyperLink>
        </p>
     </div>
    <div id="greidview">
    
        <asp:SqlDataSource ID="sql_hw6" runat="server" ConnectionString="<%$ ConnectionStrings:db_hw6 %>" DeleteCommand="DELETE FROM [sxiao4_hw6] WHERE [recipe_name] = @recipe_name" InsertCommand="INSERT INTO [sxiao4_hw6] ([recipe_name], [submit_name], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preparation], [notes]) VALUES (@recipe_name, @submit_name, @ingredient1, @ingredient2, @ingredient3, @ingredient4, @ingredient5, @preparation, @notes)" SelectCommand="SELECT [recipe_name], [submit_name], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preparation], [notes] FROM [sxiao4_hw6]" UpdateCommand="UPDATE [sxiao4_hw6] SET [submit_name] = @submit_name, [ingredient1] = @ingredient1, [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, [ingredient5] = @ingredient5, [preparation] = @preparation, [notes] = @notes WHERE [recipe_name] = @recipe_name">
            <DeleteParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submit_name" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="submit_name" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipe_name" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="recipe_name" DataSourceID="sql_hw6" CellPadding="3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" CssClass="greidview1" HorizontalAlign="Center" ViewStateMode="Disabled" Width="592px">
            <Columns>
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name" ReadOnly="True" SortExpression="recipe_name" />
                <asp:BoundField DataField="submit_name" HeaderText="Submitted By" SortExpression="submit_name" />
                <asp:HyperLinkField DataNavigateUrlFields="recipe_name" DataNavigateUrlFormatString="details_view.aspx?recipe_name={0}" HeaderText="Submitted By" Text="Details View" />
            </Columns>
            
         
              <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            
         
              <HeaderStyle BackColor="#FFFF99" Font-Bold="True" ForeColor="#696969" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#F08080" ForeColor="white" />
          
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
          
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
            
         
        </asp:GridView>
    
        <br />
    
    </div>
    </form>
</body>
</html>

