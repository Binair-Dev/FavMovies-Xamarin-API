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
    public class CategoryController : ControllerBase
    {
        private ICategoryService _service;

        public CategoryController(ICategoryService CategoryService) 
        {
            _service = CategoryService;
        }

        [HttpGet]
        public IActionResult GetAll()
        {
            return Ok(_service.GetAll().Select(c => c.ToAPI()));
        }

        [HttpGet("{Id}")]
        public IActionResult GetById(int Id)
        {
            Category contact = _service.GetById(Id).ToAPI();

            if (contact != null)
                return Ok(contact);

            return NotFound("La catégorie demandé n'existe pas");
        }
    }
}
