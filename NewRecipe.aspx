<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="detailsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="~/css/StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="Sql_HW6dataView" runat="server" ConnectionString="<%$ ConnectionStrings:db_hw6 %>" DeleteCommand="DELETE FROM [sxiao4_hw6] WHERE [recipe_name] = @recipe_name" InsertCommand="INSERT INTO [sxiao4_hw6] ([recipe_name], [submit_name], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preparation], [notes]) VALUES (@recipe_name, @submit_name, @ingredient1, @ingredient2, @ingredient3, @ingredient4, @ingredient5, @preparation, @notes)" SelectCommand="SELECT * FROM [sxiao4_hw6]" UpdateCommand="UPDATE [sxiao4_hw6] SET [submit_name] = @submit_name, [ingredient1] = @ingredient1, [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, [ingredient5] = @ingredient5, [preparation] = @preparation, [notes] = @notes WHERE [recipe_name] = @recipe_name">
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipe_name" DataSourceID="Sql_HW6dataView" DefaultMode="Insert" Width="529px">
            <EditItemTemplate>
             </EditItemTemplate>
            <InsertItemTemplate>
                <table>
                    <tr>
                        <td style="text-align:right;">
                            Recipe Name
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_recipeName" runat="server" Text='<%# Bind("recipe_name") %>' />
                        </td>
                         <td style="text-align:left;">
                             <asp:RequiredFieldValidator ID="rfv_recipeName" runat="server" ErrorMessage="Please enter the receipe name" CssClass="validatorError" ControlToValidate="tb_recipeName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Submitted By
                        </td>
                        <td style="text-align:left;">
                             <asp:TextBox ID="tb_submitName" runat="server" Text='<%# Bind("submit_name") %>' />
                        </td>
                        <td style="text-align:left;">
                             <asp:RequiredFieldValidator ID="rfv_submitName" runat="server" ErrorMessage="Please enter the submit name" CssClass="validatorError" ControlToValidate="tb_submitName"></asp:RequiredFieldValidator>
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
                        </td>
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
                        <td style="text-align:right;">
                            <asp:Button ID="Btn_Insert" runat="server" causeValidation="True" commandName="Insert" Text="Insert" />
                        </td>
                        <td style="text-align:right;">
                            <asp:Button ID="Btn_cancelInsert" runat="server" causeValidation="False" commandName="Cancel" Text="Cancel" />
                        </td>
                    </tr>
                </table>
             
            </InsertItemTemplate>
            <ItemTemplate>
            </ItemTemplate>
        </asp:FormView>
        <br />
    
    </div>
    </form>
</body>
</html>
