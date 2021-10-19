using DataAccessLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Interfaces
{
    public interface IPlayedmovieService
    {
        IEnumerable<TitleMovie> GetAll();
        IEnumerable<TitleMovie> GetById(int Id);
    }
}
