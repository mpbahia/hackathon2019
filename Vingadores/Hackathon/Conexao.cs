﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SQLite;

namespace Hackathon
{
    class Conexao
    {
        public SQLiteConnection conn = new SQLiteConnection("Data Source = BANCO_DENUNCIA.db");

        public void Conectar()
        {
            conn.Open();
        }

        public void Desconectar()
        {
            conn.Close();
        }
    }
}
