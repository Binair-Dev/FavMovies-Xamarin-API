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
    public class RealisedMovieController : ControllerBase
    {
        private IRealisedmovieService _service;

        public RealisedMovieController(IRealisedmovieService PlayedmovieService) 
        {
            _service = PlayedmovieService;
        }

        [HttpGet]
        public IActionResult GetAll()
        {
            return Ok(_service.GetAll().Select(c => c.ToAPI()));
        }

        [HttpGet("{Id}")]
        public IActionResult GetById(int Id)
        {
            IEnumerable<TitleMovie> contact = _service.GetById(Id).Select(c => c.ToAPI());

            if (contact != null)
                return Ok(contact);

            return NotFound("Le film demandé n'existe pas");
        }
    }
}
