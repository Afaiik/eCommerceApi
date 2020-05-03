using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Core.Contexts;
using Core.Entities;


namespace WebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ObjectTestController : ControllerBase
    {
        private readonly ObjectTestContext _context;
            //TODO: move the data context to the object service file in Core proj
            //Interfaz en Api e implementación en services? Interface DI on controller
        //private readonly Core.Services.ObjectTestService objectTestService;

        public ObjectTestController(ObjectTestContext context)
        {
            _context = context;
        }

        // GET: api/ObjectTest
        [HttpGet]
        public async Task<ActionResult<IEnumerable<OBJECT_TEST>>> GetObjectTest()
        {
            return await _context.OBJECT_TEST.ToListAsync();
        }

        // GET: api/ObjectTest/5
        [HttpGet("{id}")]
        public async Task<ActionResult<OBJECT_TEST>> GetObjectTest(long id)
        {
            var objectTest = await _context.OBJECT_TEST.FindAsync(id);

            if (objectTest == null)
            {
                return NotFound();
            }

            return objectTest;
        }

        // PUT: api/ObjectTest/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutObjectTest(long id, OBJECT_TEST objectTest)
        {
            if (id != objectTest.ID)
            {
                return BadRequest();
            }

            _context.Entry(objectTest).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ObjectTestExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/ObjectTests
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<OBJECT_TEST>> PostObjectTest(OBJECT_TEST objectTest)
        {
            _context.OBJECT_TEST.Add(objectTest);
            await _context.SaveChangesAsync();


            //CreatedAtAction
            return CreatedAtAction(nameof(GetObjectTest), new { id = objectTest.ID }, objectTest);
        }

        // DELETE: api/ObjectTests/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<OBJECT_TEST>> DeleteObjectTest(long id)
        {
            var objectTest = await _context.OBJECT_TEST.FindAsync(id);
            if (objectTest == null)
            {
                return NotFound();
            }

            _context.OBJECT_TEST.Remove(objectTest);
            await _context.SaveChangesAsync();

            return objectTest;
        }

        private bool ObjectTestExists(long id)
        {
            return _context.OBJECT_TEST.Any(e => e.ID == id);
        }
    }
}
