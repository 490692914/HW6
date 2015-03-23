
Partial Class detailsView
    Inherits System.Web.UI.Page

  
    

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        dataView.Focus()
    End Sub

    Protected Sub dataView_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles dataView.ItemInserted
        Response.Redirect("~/Default.aspx")
    End Sub
End Class
