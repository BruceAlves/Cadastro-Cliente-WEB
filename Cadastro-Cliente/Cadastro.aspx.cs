using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cadastro_Cliente
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            btnCadastrar.Click += BtnCadastrar_Click;
            btnLimpar.Click += BtnLimpar_Click;
        }

        private void BtnLimpar_Click(object sender, EventArgs e)
        {
            txtNome.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtTelefone.Text = string.Empty;
            ltMensagem.Text = string.Empty;
        }

        private void BtnCadastrar_Click(object sender, EventArgs e)
        {
            var novoCliente = new Models.Clientes_cadastrados();
            novoCliente.nome = txtNome.Text;
            novoCliente.email = txtEmail.Text;
            novoCliente.telefone = txtTelefone.Text;

           bool cadastrado = DAO.Cliente.Cadastrar(novoCliente);

            if (cadastrado)
            {
                ltMensagem.Text = novoCliente.nome + "  " + "  Foi cadastrado(a) com sucesso";
            }
            else
            {
                ltMensagem.Text = "Ocorreu um ERRO ao tentar cadastrar"+ " " + novoCliente.nome;
            }
            

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
    }
}