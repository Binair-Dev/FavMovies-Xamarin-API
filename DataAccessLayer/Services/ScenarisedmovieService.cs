using DataAccessLayer.Interfaces;
using DataAccessLayer.Models;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ToolBox.Database;

namespace DataAccessLayer.Services
{
    public class ScenarisedmovieService : IScenarisedmovieService
    {
        private string _connectionString;
        private Connection _Connection;

        public ScenarisedmovieService(IConfiguration config)
        {
            _connectionString = config.GetConnectionString("default");

            _Connection = new Connection(SqlClientFactory.Instance, _connectionString);
        }

        private TitleMovie Converter(IDataReader reader)
        {
            return new TitleMovie
            {
                Id = (int)reader["Id"],
                PersonId = (int)reader["PersonId"],
                Title = reader["Title"].ToString()
            };
        }

        public IEnumerable<TitleMovie> GetAll()
        {
            Command command = new Command("SELECT * FROM ScenarisedMovie");

            _Connection.Open();
            IEnumerable<TitleMovie> castings = _Connection.ExecuteReader(command, Converter).ToList() ;
            _Connection.Close();

            return castings;
        }

        public IEnumerable<TitleMovie> GetById(int Id)
        {
            Command command = new Command("SELECT * FROM ScenarisedMovie WHERE PersonId = @Id");
            command.AddParameter("Id", Id);

            _Connection.Open();
            IEnumerable<TitleMovie> castings = _Connection.ExecuteReader(command, Converter).ToList();
            _Connection.Close();

            return castings;
        }
    }
}
