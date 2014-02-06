/<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KassaKvitto.Default" ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KASSAKVITTO</title>
    <link href="~/Content/bj.css" rel="stylesheet" type="text/css" />
</head>
<body>

    <!--Enter-knappen-->
    <form id="form1" runat="server" defaultbutton="Button">
       
        <div id="header">
        <h1>Kassakvitto</h1>
        </div>


        <div id="content">
        <!--Label för totalsumma-->
        <asp:Label ID="Label1" runat="server" Text="Total Köpesumma:"></asp:Label>
        
        <!--Textbox-->
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
       
        <!--Knapp för uträkning av kvitto-->
        <asp:Button ID="Button" runat="server" Text="Beräkna rabatt" OnClick="Button_Click" />
        
        <div id="validering">
        <!--Validering av "TextBox"-->
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fältet får ej vara tomt" Display="Dynamic" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator" runat="server" ErrorMessage="Köpsumman måste vara större än 0." Type="Double" Operator="GreaterThan" ValueToCompare="0" Display="Dynamic" ControlToValidate="TextBox1"></asp:CompareValidator>
        </div>
        </div>
      
        <!--Presentation av kvittot-->
        <asp:Panel ID="Kvittot" runat="server" Visible="false">
              
        <div id="presentation">
        <span id="Rubrik">Linneuniversitetet</span> <br/>
        <span id="Telefon">0480-123 456</span> <br/>
        <span id="Open">Öppettider: 06:00 - 19:00</span> <br/>
        <span id="Divide">...................................</span> <br/>
        <asp:Label ID="TotalSumma" runat="server" Text=""></asp:Label><br/>
        <asp:Label ID="RabbatIProcent" runat="server" Text=""></asp:Label><br/>
        <asp:Label ID="RabbatIKr" runat="server" Text=""></asp:Label><br/>
        <asp:Label ID="AttBetala" runat="server" Text=""></asp:Label><br/>
        <span id="Divide1">...................................</span> <br/>
        <span id="Bottom">Välkommen Åter!</span> <br/>
        </div>
        </asp:Panel>
            
    </form>
     
    <script type="text/javascript">
         var textBox1 = document.getElementById("TextBox1");
         textBox1.focus();
         textBox1.select();
    </script>
</body>
</html>
