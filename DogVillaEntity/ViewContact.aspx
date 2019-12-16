 <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewContact.aspx.cs" Inherits="DogVillaEntity.ViewContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        table, tr, td, th {
            padding:20px;
            font-size:30px;
            margin:10px;
            
        }
        th {
        background-color:greenyellow;
        font-size:1.5em;

        }
    </style>
    
    <div class="main">
 	<div class="top-box">
	  <div class="wrap">
		 <div class="content-top">
		 	    
						<h2>Contact Display </h2>
						
                     <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">
                         <AlternatingItemTemplate>
                             <tr style="background-color: #FFFFFF;color: #284775;">
                                 <td>
                                     <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                     <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                 </td>
                                 <td>
                                     <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                 </td>
                                 <td>
                                     <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                 </td>
                                 <td>
                                     <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                 </td>
                                 <td>
                                     <asp:Label ID="MsgLabel" runat="server" Text='<%# Eval("Msg") %>' />
                                 </td>
                             </tr>
                         </AlternatingItemTemplate>
                         <EditItemTemplate>
                             <tr style="background-color: #999999;">
                                 <td>
                                     <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                     <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                 </td>
                                 <td>
                                     <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                                 </td>
                                 <td>
                                     <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                 </td>
                                 <td>
                                     <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                 </td>
                                 <td>
                                     <asp:TextBox ID="MsgTextBox" runat="server" Text='<%# Bind("Msg") %>' />
                                 </td>
                             </tr>
                         </EditItemTemplate>
                         <EmptyDataTemplate>
                             <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                 <tr>
                                     <td>No data was returned.</td>
                                 </tr>
                             </table>
                         </EmptyDataTemplate>
                         <InsertItemTemplate>
                             <tr style="">
                                 <td>
                                     <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                     <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                 </td>
                                 <td>&nbsp;</td>
                                 <td>
                                     <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                 </td>
                                 <td>
                                     <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                 </td>
                                 <td>
                                     <asp:TextBox ID="MsgTextBox" runat="server" Text='<%# Bind("Msg") %>' />
                                 </td>
                             </tr>
                         </InsertItemTemplate>
                         <ItemTemplate>
                             <tr style="background-color: #E0FFFF;color: #333333;">
                                 <td>
                                     <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                     <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                 </td>
                                 <td>
                                     <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                 </td>
                                 <td>
                                     <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                 </td>
                                 <td>
                                     <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                 </td>
                                 <td>
                                     <asp:Label ID="MsgLabel" runat="server" Text='<%# Eval("Msg") %>' />
                                 </td>
                             </tr>
                         </ItemTemplate>
                         <LayoutTemplate>
                             <table runat="server">
                                 <tr runat="server">
                                     <td runat="server">
                                         <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                             <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                                 <th runat="server"></th>
                                                 <th runat="server">id</th>
                                                 <th runat="server">Name</th>
                                                 <th runat="server">Email</th>
                                                 <th runat="server">Message</th>
                                             </tr>
                                             <tr id="itemPlaceholder" runat="server">
                                             </tr>
                                         </table>
                                     </td>
                                 </tr>
                                 <tr runat="server">
                                     <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                                 </tr>
                             </table>
                         </LayoutTemplate>
                         <SelectedItemTemplate>
                             <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                                 <td>
                                     <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                     <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                 </td>
                                 <td>
                                     <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                 </td>
                                 <td>
                                     <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                 </td>
                                 <td>
                                     <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                 </td>
                                 <td>
                                     <asp:Label ID="MsgLabel" runat="server" Text='<%# Eval("Msg") %>' />
                                 </td>
                             </tr>
                         </SelectedItemTemplate>
                        </asp:ListView>
						
						
					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DogVillaConnectionString %>" DeleteCommand="DELETE FROM [ContactRecord] WHERE [id] = @id" InsertCommand="INSERT INTO [ContactRecord] ([Name], [Email], [Msg]) VALUES (@Name, @Email, @Msg)" SelectCommand="SELECT * FROM [ContactRecord] ORDER BY [id] DESC" UpdateCommand="UPDATE [ContactRecord] SET [Name] = @Name, [Email] = @Email, [Msg] = @Msg WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Msg" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Msg" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
						
						
					</div>
				
				
				
		   </div>
	   </div>
	</div>


</asp:Content>
