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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipe_name" DataSourceID="detailDataSource" CssClass="detailviewField">
            <EditItemTemplate>
               <table>
                   <col style="background-color: #F08080; color: #ffffff" />
                    <col span="2" style="background-color: white; color: #ffffff;" />
                    <tr>
                        <td style="text-align:right;">
                              Recipe Name
                        </td>
                  <td style="text-align:left;">
                <asp:Label ID="recipe_nameLabel1" runat="server" Text='<%# Eval("recipe_name") %>' />
                    </td>
                         <td style="text-align:left;">
                             <asp:RequiredFieldValidator ID="rfv_recipeName1" runat="server" ErrorMessage="Please enter the receipe name" CssClass="validatorError" ControlToValidate="recipe_nameLabel1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                
                     <tr>
                        <td style="text-align:right;">
                              submitted By
                        </td>
                  <td style="text-align:left;">
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("submit_name") %>' />
                    </td>
                         <td style="text-align:left;">
                             <asp:RequiredFieldValidator ID="rfv_submitName" runat="server" ErrorMessage="Please enter the submit name" CssClass="validatorError" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                      <tr>
                        <td style="text-align:right;">
                              Ingredient #1
                        </td>
                  <td style="text-align:left;">
                <asp:TextBox ID="ingredient1TextBox" runat="server" Text='<%# Bind("ingredient1") %>' />
                    </td>
                           <td style="text-align:left;">
                             <asp:RequiredFieldValidator ID="rfv_ingredient1" runat="server" ErrorMessage="Please enter the first ingredient" CssClass="validatorError" ControlToValidate="ingredient1TextBox"></asp:RequiredFieldValidator>
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
                      <td style="text-align:left;">
                             <asp:RequiredFieldValidator ID="rfv_preparation" runat="server" ErrorMessage="Please enter the preparation" CssClass="validatorError" ControlToValidate="preparationTextBox"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                       <tr>
                        <td style="text-align:right;">
                             Notes
                        </td>
                  <td style="text-align:left;">
               <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                    </td>
                    </tr>
             
          <tr>
              <td style="background-color: white;text-align:right;">
                <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                  </td>
              <td style="text-align:right;">
                &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />  
                  </td>   
              </tr>
               </table>
            </EditItemTemplate>
            <InsertItemTemplate>
                
            </InsertItemTemplate>
            <ItemTemplate>
                <table>
                   <col style="background-color: #F08080; color: #ffffff" />
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
                    <tr>
                       <td style="background-color: white;text-align:right;">
                <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                           </td>
                         <td style="text-align:right;">
                &nbsp;<asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                             </td>
           </table>
            </ItemTemplate>
        </asp:FormView>
        <br />
    
    </div>
    </form>
</body>
</html>
