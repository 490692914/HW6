﻿
Partial Class detailsView
    Inherits System.Web.UI.Page

  
    
    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
        
        lbl_delete.Text = "The Recipe has been deleted from the database."
        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")

    End Sub



    Protected Sub detailFormView_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub
End Class
