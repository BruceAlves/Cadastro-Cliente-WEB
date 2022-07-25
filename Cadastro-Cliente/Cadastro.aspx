<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Cadastro_Cliente.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

        @import url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Black+Ops+One&family=Kanit:ital,wght@0,100;0,200;0,300;0,400;1,100;1,200;1,300&family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&family=Press+Start+2P&display=swap');

        body{
            background-image: linear-gradient(to right, #4800ff , #ffffff);
            margin-top:20%;

        }

        .container{          
            color:azure;
            border:none;
            border-radius: 5px;
            font-family:Kanit,Arial;
            width: 450px;
            margin: auto auto;
                  
        }

        .container h1{
           
            text-align:center;
            color:azure;
            font-size:50px;
        }

        .campo{
            padding:10px
        }

        .campo input[type = text]{
          float:right;
          width:350px;
          font-family:Kanit,Arial;
          border:none;
          border-radius: 5px;
        }

        .campo input[type = "submit"]{
          float:right;
          font-family:Kanit,Arial;
          border:none;
          border-radius: 5px;
        }

        #ltMensagem{
            font-family:Kanit,Arial;
            color:azure;
             width:80px;
            
        }

       .limpar{
          float:left;
          font-family:Kanit,Arial;
          border:none;
          border-radius: 10px;
          cursor:pointer;
       }

       .cadastrar{
          cursor:pointer;
          float:right;
          font-family:Kanit,Arial;
          border:none;
          border-radius: 10px;
          margin-left: 40px;       
          border:none;

       }      

    </style>

</head>
<body>

    <form id="form1" runat="server">
        <div class="container" >
            <h1>Cadastro de cliente</h1>
            <div class="campo">
                <asp:Label runat="server" AssociatedControlID="txtNome">Nome:</asp:Label>
                <asp:TextBox runat="server" ID="txtNome"></asp:TextBox> 
            </div>
            <div class="campo">
               <asp:Label runat="server" AssociatedControlID="txtEmail">Email:</asp:Label>
               <asp:TextBox runat="server" ID="txtEmail"></asp:TextBox>
            </div>
            <div class="campo">
               <asp:Label runat="server" AssociatedControlID="txtTelefone">Telefone:</asp:Label>
               <asp:TextBox runat="server" ID="txtTelefone"></asp:TextBox>
            </div><br />
             <div class="cadastrar">             
                 <asp:Button runat="server" Text="Cadastrar" ID="btnCadastrar"  title="Cadastrar" value="Cadastrar" />
            </div>
            <div class="limpar">
                 <asp:Button runat="server" Text="Limpar" ID="btnLimpar"  title="Limpar" value="Limpar Campos" />
            </div>
            <br /><br /><br />
            <p><asp:Literal runat="server" ID="ltMensagem" ></asp:Literal></p>
            
        </div>
        
    </form>
</body>
</html>
