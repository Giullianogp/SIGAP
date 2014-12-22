using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using SGPCore.Utils;
using SGPEntidades.Entidades;
using SGPEntidades.Enum;
using SGPRepositorio.Connection;
using SGPRepositorio.Creator;

namespace SGPRepositorio.Repositorios
{
    public class UsuarioRepositorio
    {
        public void Inserir(Usuario user)
        {
            var com = new SqlConnection(ConnectionString.RecuperarConnection());
            try
            {
                var procedure = Resources.UsuarioRes.Insert;
                var insertCommand = new SqlCommand(procedure, com);

                com.Open();
                insertCommand.Parameters.AddWithValue("@Nome", user.Nome);
                insertCommand.Parameters.AddWithValue("@Login", user.Login);
                insertCommand.Parameters.AddWithValue("@Senha", user.Senha);
                insertCommand.Parameters.AddWithValue("@Status", EnumUtils<Status>.GetValue<string>(user.Status));
                insertCommand.Parameters.AddWithValue("@Tipo", EnumUtils<TipoUsuario>.GetValue<string>(user.Tipo));
                insertCommand.Parameters.ConvertToDbNull();

                var lRet = insertCommand.ExecuteNonQuery();

                if (Convert.ToInt16(lRet) == 0)
                    throw new Exception("Erro ao gravar o usuario");
            }
            catch (Exception ex)
            {
                throw new Exception("Ocorreu um erro no Cadastro ", ex);
            }
            finally
            {
                com.Close();
            }
        }

        public void Editar(Usuario user)
        {
            var com = new SqlConnection(ConnectionString.RecuperarConnection());
            try
            {
                var procedure = Resources.UsuarioRes.Update;
                var insertCommand = new SqlCommand(procedure, com);

                com.Open();
                insertCommand.Parameters.AddWithValue("@IdUsuario", user.IdUsuario);
                insertCommand.Parameters.AddWithValue("@Nome", user.Nome);
                insertCommand.Parameters.AddWithValue("@Login", user.Login);
                insertCommand.Parameters.AddWithValue("@Senha", user.Senha);
                insertCommand.Parameters.AddWithValue("@Status", EnumUtils<Status>.GetValue<string>(user.Status));
                insertCommand.Parameters.AddWithValue("@Tipo", EnumUtils<TipoUsuario>.GetValue<string>(user.Tipo));
                insertCommand.Parameters.ConvertToDbNull();

                var lRet = insertCommand.ExecuteNonQuery();

                if (Convert.ToInt16(lRet) == 0)
                    throw new Exception("Erro ao Editar o usuario");
            }
            catch (Exception ex)
            {
                throw new Exception("Ocorreu um erro na Edição ", ex);
            }
            finally
            {
                com.Close();
            }
        }

        public Usuario Recuperar(int id)
        {
            var com = new SqlConnection(ConnectionString.RecuperarConnection());
            try
            {
                var usuario = new Usuario();
                var procedure = Resources.UsuarioRes.Recuperar;
                var insertCommand = new SqlCommand(procedure, com);

                com.Open();
                insertCommand.Parameters.AddWithValue("@IdUsuario", id);

                using (var reader = insertCommand.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        usuario = new UsuarioCreator(reader, "", null).Create();
                    }
                }

                return usuario;
            }
            catch (Exception ex)
            {
                throw new Exception("Ocorreu um erro na Consulta ", ex);
            }
            finally
            {
                com.Close();
            }
        }

        public List<Usuario> RecuperarLista()
        {
            var com = new SqlConnection(ConnectionString.RecuperarConnection());
            try
            {
                var usuarios = new List<Usuario>();
                var procedure = Resources.UsuarioRes.RecuperarLista;
                var insertCommand = new SqlCommand(procedure, com);
                com.Open();
                using (var reader = insertCommand.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        usuarios.Add(new UsuarioCreator(reader, "", null).Create());
                    }
                }

                return usuarios;
            }
            catch (Exception ex)
            {
                throw new Exception("Ocorreu um erro na Consulta ", ex);
            }
            finally
            {
                com.Close();
            }
        }

    }
}