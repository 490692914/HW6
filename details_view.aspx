<%@ Page Language="VB" AutoEventWireup="false" CodeFile="details_view.aspx.vb" Inherits="detailsView" %>

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
    <div id="detailview">
    
        <asp:SqlDataSource ID="detailDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_hw6 %>" DeleteCommand="DELETE FROM [sxiao4_hw6] WHERE [recipe_name] = @recipe_name" InsertCommand="INSERT INTO [sxiao4_hw6] ([recipe_name], [submit_name], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preparation], [notes]) VALUES (@recipe_name, @submit_name, @ingredient1, @ingredient2, @ingredient3, @ingredient4, @ingredient5, @preparation, @notes)" SelectCommand="SELECT * FROM [sxiao4_hw6] WHERE ([recipe_name] = @recipe_name)" UpdateCommand="UPDATE [sxiao4_hw6] SET [submit_name] = @submit_name, [ingredient1] = @ingredient1, [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, [ingredient5] = @ingredient5, [preparation] = @preparation, [notes] = @notes WHERE [recipe_name] = @recipe_name">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="recipe_name" QueryStringField="recipe_name" Type="String" />
            </SelectParameters>
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
        <asp:Label ID="lbl_delete" runat="server" CssClass="deleteRecipe"></asp:Label>
        <br />

        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipe_name" DataSourceID="detailDataSource">
            <EditItemTemplate>
               <table>
                   <col style="background-color: coral; color: #ffffff" />
                    <col span="2" style="background-color: white; color: #ffffff;" />
                    <tr>
                        <td style="text-align:right;">
                              Recipe Name
                        </td>
                  <td style="text-align:left;">
                <asp:Label ID="recipe_nameLabel1" runat="server" Text='<%# Eval("recipe_name") %>' />
                    </td>
                    </tr>
                
                     <tr>
                        <td style="text-align:right;">
                              submitted By
                        </td>
                  <td style="text-align:left;">
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("submit_name") %>' />
                    </td>
                    </tr>

                      <tr>
                        <td style="text-align:right;">
                              Ingredient #1
                        </td>
                  <td style="text-align:left;">
                <asp:TextBox ID="ingredient1TextBox" runat="server" Text='<%# Bind("ingredient1") %>' />
                    </td>
                    </tr>

                      <tr>
                        <td style="text-align:right;">
                              Ingredient #2
                        </td>
                  <td style="text-align:left;">
                 <asp:TextBox ID="ingredient2TextBox" runat="server" Text='<%# Bind("ingredient2") %>' />
                    </td>
                    </tr>

                      <tr>
                        <td style="text-align:right;">
                              Ingredient #3
                        </td>
                  <td style="text-align:left;">
                <asp:TextBox ID="ingredient3TextBox" runat="server" Text='<%# Bind("ingredient3") %>' />
                    </td>
                    </tr>

                      <tr>
                        <td style="text-align:right;">
                              Ingredient #4
                        </td>
                  <td style="text-align:left;">
               <asp:TextBox ID="ingredient4TextBox" runat="server" Text='<%# Bind("ingredient4") %>' />
                    </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                              Ingredient #5
                        </td>
                  <td style="text-align:left;">
               <asp:TextBox ID="ingredient5TextBox" runat="server" Text='<%# Bind("ingredient5") %>' />
                    </td>
                    </tr>
                       <tr>
                        <td style="text-align:right;">
                              Preparation
                        </td>
                  <td style="text-align:left;">
                <asp:TextBox ID="preparationTextBox" runat="server" Text='<%# Bind("preparation") %>' />
                    </tr>
                       <tr>
                        <td style="text-align:right;">
                             Notes
                        </td>
                  <td style="text-align:left;">
               <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                    </td>
                    </tr>
             
          
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                   
               </table>
            </EditItemTemplate>
            <InsertItemTemplate>
                
            </InsertItemTemplate>
            <ItemTemplate>
                recipe_name:
                <asp:Label ID="recipe_nameLabel" runat="server" Text='<%# Eval("recipe_name") %>' />
                <br />
                submit_name:
                <asp:Label ID="submit_nameLabel" runat="server" Text='<%# Bind("submit_name") %>' />
                <br />
                ingredient1:
                <asp:Label ID="ingredient1Label" runat="server" Text='<%# Bind("ingredient1") %>' />
                <br />
                ingredient2:
                <asp:Label ID="ingredient2Label" runat="server" Text='<%# Bind("ingredient2") %>' />
                <br />
                ingredient3:
                <asp:Label ID="ingredient3Label" runat="server" Text='<%# Bind("ingredient3") %>' />
                <br />
                ingredient4:
                <asp:Label ID="ingredient4Label" runat="server" Text='<%# Bind("ingredient4") %>' />
                <br />
                ingredient5:
                <asp:Label ID="ingredient5Label" runat="server" Text='<%# Bind("ingredient5") %>' />
                <br />
                preparation:
                <asp:Label ID="preparationLabel" runat="server" Text='<%# Bind("preparation") %>' />
                <br />
                notes:
                <asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
           
            </ItemTemplate>
        </asp:FormView>
        <br />
    
    </div>
    </form>
</body>
</html>
