
Partial Class detailsView
    Inherits System.Web.UI.Page



    Protected Sub dataView_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles dataView.ItemDeleted
        ' Dim deletedRecipe As String
        'deletedRecipe = e.Values("recipe_name").ToString()
        'lbl_delete.Text = deletedRecipe & "has been deleted from the database."
        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")

    End Sub



    Protected Sub dataView_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles dataView.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub
End Class
