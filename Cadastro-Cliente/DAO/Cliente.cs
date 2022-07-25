using Cadastro_Cliente.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Cadastro_Cliente.DAO
{
    public class Cliente
    {

        public static bool Cadastrar(Models.Clientes_cadastrados clientes)
        {
            try
            {

                using (var conexao = new Models.Entities())
                {
                    conexao.Clientes_cadastrados.Add(clientes);
                    conexao.SaveChanges();
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
            }
        }

    }
}