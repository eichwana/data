<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="data.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        #form2 {
            text-align: center;
        }
        #newForm {
            text-align: center;
        }
        #noForm {
            text-align: center;
        }
        #yesForm {
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="startForm" runat="server">
        <div class="auto-style1">
            <asp:Label ID="askLabel" runat="server" Font-Size="Large" Text="Is this your first time here?" style="position:absolute;"></asp:Label>
            
            <asp:Button ID="yesButton" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Height="100px" OnClick="yesButton_Click" Text="Yes!" Width="100px" style="position:relative;top:50px;right:20px;"/>

            <asp:Button ID="noButton" runat="server" Font-Bold="True" Font-Size="Medium" Height="100px" OnClick="noButton_Click" Text="No!" Width="100px" TabIndex="1" style="position:relative;top:50px;left:20px;"/>

            <br />
            <br />
            <br />
            <br />
            
            <br />
            <asp:Label ID="openLabel" runat="server" Visible="False" ></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="nameBox" runat="server" Visible="False" TabIndex="2"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="submitButton" runat="server" OnClick="submitButton_Click" Text="Submit" Visible="False" TabIndex="3" />
        </div>
    </form>
    <form id="yesForm" runat="server" visible="False">
        <asp:Panel ID="Panel1" runat="server"></asp:Panel>
        
            <asp:Label ID="entryLabel" runat="server"></asp:Label>
            <br />
        <br />
        <asp:Label ID="numLabel1" runat="server">1. </asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            &nbsp;&nbsp;
            <asp:Button ID="insButton" runat="server" Text="Done!" OnClick="insButton_Click" />
            <br />
            <br />
        <asp:Label ID="numLabel2" runat="server">2. </asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            
            <br />
            <br />
        <asp:Label ID="numLabel3" runat="server">3. </asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            
            <br />
            <br />
        <asp:Label ID="numLabel4" runat="server">4. </asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            
            <br />
            <br />
        <asp:Label ID="numLabel5" runat="server">5. </asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            
            <br />
        <br />
        <asp:Label ID="lblmsg" runat="server"></asp:Label>

            
            <br />
            <br />

    </form>
    
    <form id="noForm" runat="server" visible="False">
        <asp:Label ID="recallLabel" runat="server"></asp:Label>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" SelectCommand="SELECT [name], [entry1], [entry2], [entry3], [entry4], [entry5] FROM [DataStore]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True" DataSourceID="SqlDataSource1" Width="700px">
            
        </asp:GridView>
        <br />

        
        <br />
        <asp:Button ID="editButton" runat="server" Text="Edit" />
        </form>
</body>
</html>
