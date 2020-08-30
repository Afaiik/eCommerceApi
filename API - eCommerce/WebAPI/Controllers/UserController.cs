using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Core.Entities;
using eCommerce.Core.Interfaces.Services;
using AutoMapper;
using eCommerce.Api.Models;

namespace eCommerce.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private readonly IUserService _userService;
        private readonly IMapper _mapper;

        public UserController(IUserService userService, IMapper mapper)
        {
            _userService = userService;
            _mapper = mapper;
        }

        // GET: api/User
        [HttpGet]
        public async Task<ActionResult<IEnumerable<User>>> GetUsers()
        {
            var users = _userService.Get();
            var ret = _mapper.Map<IEnumerable<User>, IEnumerable<UserModel>>(users);

            return Ok(ret);
        }

        //// GET: api/ActiveUser DEFINIR ENDPOINT
        //[HttpGet]
        //public async Task<ActionResult<IEnumerable<User>>> GetActiveUsers()
        //{
        //    //return await _context.User.ToListAsync();
        //    //var userRepo = new GenericRepository<User>(_context);

        //    return Ok(await _userService.GetActiveUsers());
        //}

        // GET: api/User/5
        [HttpGet("{id}")]
        public async Task<ActionResult<User>> GetUser(int id)
        {
            var user = _userService.GetById(id);

            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }

        // PUT: api/User/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutUser(int id, User user)
        {
            if (id != user.Id)
            {
                return BadRequest();
            }

            try
            {
                await _userService.Update(user);
            }
            catch(Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError);
            }

            return NoContent();
        }

        // POST: api/User
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<User>> PostUser(User user)
        {
            await _userService.Insert(user);

            return CreatedAtAction("GetUser", new { id = user.Id }, user);
        }

        // DELETE: api/User/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<User>> DeleteUser(int id)
        {
            User user = await _userService.Delete(id);

            return user;
        }

    }
}
