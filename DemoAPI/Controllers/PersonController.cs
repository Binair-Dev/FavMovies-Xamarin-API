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
    public class PersonController : ControllerBase
    {
        private IPersonService _service;

        public PersonController(IPersonService PersonService) 
        {
            _service = PersonService;
        }

        [HttpGet]
        public IActionResult GetAll()
        {
            return Ok(_service.GetAll().Select(c => c.ToAPI()));
        }

        [HttpGet("{Id}")]
        public IActionResult GetById(int Id)
        {
            Person contact = _service.GetById(Id).ToAPI();

            if (contact != null)
                return Ok(contact);

            return NotFound("Le film demandé n'existe pas");
        }
    }
}
