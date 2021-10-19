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
    public class CastingController : ControllerBase
    {
        private ICastingService _service;

        public CastingController(ICastingService CastingService) 
        {
            _service = CastingService;
        }

        [HttpGet]
        public IActionResult GetAll()
        {
            return Ok(_service.GetAll().Select(c => c.ToAPI()));
        }

        [HttpGet("{Id}")]
        public IActionResult GetByCategory(int Id)
        {
            IEnumerable<Casting> contact = _service.GetByMovieId(Id).Select(c => c.ToAPI());
            if (contact != null)
                return Ok(contact);

            return NotFound("Les casting demandé n'existent pas");
        }
    }
}
