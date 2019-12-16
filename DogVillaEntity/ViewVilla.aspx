<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewVilla.aspx.cs" Inherits="DogVillaEntity.ViewVilla" %>
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
		 	    
						<h2>All Vila Information </h2>

             <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
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
                             <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                         </td>
                         <td>
                             <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
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
                             <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
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
                             <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                         </td>
                         <td>
                             <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' />
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
                             <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                         </td>
                         <td>
                             <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
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
                                         <th runat="server">Price</th>
                                         <th runat="server">Size</th>
                                     </tr>
                                     <tr id="itemPlaceholder" runat="server">
                                     </tr>
                                 </table>
                             </td>
                         </tr>
                         <tr runat="server">
                             <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                 <asp:DataPager ID="DataPager1" runat="server">
                                     <Fields>
                                         <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                     </Fields>
                                 </asp:DataPager>
                             </td>
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
                             <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                         </td>
                         <td>
                             <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
                         </td>
                     </tr>
                 </SelectedItemTemplate>
                        </asp:ListView>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DogVillaConnectionString2 %>" DeleteCommand="DELETE FROM [VillaRecord] WHERE [id] = @id" InsertCommand="INSERT INTO [VillaRecord] ([Name], [Price], [Size]) VALUES (@Name, @Price, @Size)" SelectCommand="SELECT * FROM [VillaRecord] ORDER BY [id] DESC" UpdateCommand="UPDATE [VillaRecord] SET [Name] = @Name, [Price] = @Price, [Size] = @Size WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Price" Type="Int32" />
                                <asp:Parameter Name="Size" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Price" Type="Int32" />
                                <asp:Parameter Name="Size" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

             </div>
          </div>
         </div>
         </div>
</asp:Content>
