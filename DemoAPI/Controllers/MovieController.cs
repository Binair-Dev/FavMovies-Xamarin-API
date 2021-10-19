using DataAccessLayer.Interfaces;
using DemoAPI.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Linq;
using DemoAPI.Tools;
using System.Net;
using System.Collections.Generic;

namespace DemoAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MovieController : ControllerBase
    {
        private IMovieService _service;

        public MovieController(IMovieService MovieService) 
        {
            _service = MovieService;
        }

        [HttpGet]
        public IActionResult GetAll()
        {
            return Ok(_service.GetAll().Select(c => c.ToAPI()));
        }

        [HttpGet("{Id}")]
        public IActionResult GetByCategory(int Id)
        {
            IEnumerable<Movie> contact = _service.GetByCategory(Id).Select(c => c.ToAPI());

            if (contact != null)
                return Ok(contact);

            return NotFound("Les films demandé n'existent pas");
        }
    }
}
