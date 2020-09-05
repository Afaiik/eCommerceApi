using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using eCommerce.Core.Entities;
using eCommerce.Infrastructure.Data;
using eCommerce.Core.Interfaces.Services;
using AutoMapper;
using eCommerce.Api.Models;

namespace eCommerce.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StateController : ControllerBase
    {
        private readonly IStateService _stateService;
        private readonly IMapper _mapper;

        public StateController(IStateService stateService, IMapper mapper)
        {
            _stateService = stateService;
            _mapper = mapper;
        }

        // GET: api/State
        [HttpGet]
        public async Task<ActionResult<IEnumerable<StateModel>>> GetState()
        {
            var states = await _stateService.Get();
            var statesModel = _mapper.Map<IEnumerable<State>, IEnumerable<StateModel>>(states);
            
            return Ok(statesModel);
        }

        // GET: api/State/5
        [HttpGet("{id}")]
        public async Task<ActionResult<StateModel>> GetState(int id)
        {
            var state = await _stateService.GetById(id);

            if (state == null)
            {
                return NotFound();
            }
            
            var stateModel = _mapper.Map<State, StateModel>(state);

            return stateModel;
        }

        // GET: api/State/5
        [HttpGet("/api/TestState")]
        public async Task<ActionResult<StateModel>> GetTestState()
        {
            var state = await _stateService.GetById(14);

            if (state == null)
            {
                return NotFound();
            }
            
            var stateModel = _mapper.Map<State, StateModel>(state);

            return stateModel;
        }
        
        // PUT: api/State/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutState(int id, State state)
        {
            if (id != state.Id)
            {
                return BadRequest();
            }

            try
            {
                await _stateService.Update(state);
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError);
            }

            return NoContent();
        }

        // POST: api/State
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<State>> PostState(State state)
        {
            await _stateService.Insert(state);
            
            return CreatedAtAction("GetState", new { id = state.Id }, state);
        }

        // DELETE: api/State/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<State>> DeleteState(int id)
        {
            State state = await _stateService.GetById(id);

            if(state != null)
                await _stateService.Delete(id);

            return state;
        }

    }
}
