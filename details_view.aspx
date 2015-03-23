<%@ Page Language="VB" AutoEventWireup="false" CodeFile="details_view.aspx.vb" Inherits="detailsView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="Sql_HW6dataView" runat="server" ConnectionString="<%$ ConnectionStrings:db_hw6 %>" DeleteCommand="DELETE FROM [sxiao4_hw6] WHERE [recipe_name] = @recipe_name" InsertCommand="INSERT INTO [sxiao4_hw6] ([recipe_name], [submit_name], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preparation], [notes]) VALUES (@recipe_name, @submit_name, @ingredient1, @ingredient2, @ingredient3, @ingredient4, @ingredient5, @preparation, @notes)" SelectCommand="SELECT * FROM [sxiao4_hw6] WHERE ([recipe_name] = @recipe_name)" UpdateCommand="UPDATE [sxiao4_hw6] SET [submit_name] = @submit_name, [ingredient1] = @ingredient1, [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, [ingredient5] = @ingredient5, [preparation] = @preparation, [notes] = @notes WHERE [recipe_name] = @recipe_name">
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
   <br />
         <span class="deleteRecipe"> <asp:Label ID="lbl_delete" runat="server"></asp:Label></span>
        <asp:DetailsView ID="dataView" runat="server" AutoGenerateRows="False" DataKeyNames="recipe_name" DataSourceID="Sql_HW6dataView" Height="50px" Width="290px">
            <Fields>
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name" ReadOnly="True" SortExpression="recipe_name" />
                <asp:BoundField DataField="submit_name" HeaderText="Submitted By" SortExpression="submit_name" />
                <asp:BoundField DataField="ingredient1" HeaderText="Ingredient #1" SortExpression="ingredient1" />
                <asp:BoundField DataField="ingredient2" HeaderText="Ingredient #2" SortExpression="ingredient2" />
                <asp:BoundField DataField="ingredient3" HeaderText="Ingredient #3" SortExpression="ingredient3" />
                <asp:BoundField DataField="ingredient4" HeaderText="Ingredient #4" SortExpression="ingredient4" />
                <asp:BoundField DataField="ingredient5" HeaderText="Ingredient #5" SortExpression="ingredient5" />
                <asp:BoundField DataField="preparation" HeaderText="Preparation" SortExpression="preparation" />
                <asp:BoundField DataField="notes" HeaderText="Notes" SortExpression="notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
    </div>
    </form>
</body>
</html>
