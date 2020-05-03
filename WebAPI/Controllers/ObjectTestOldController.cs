using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Core.Entities;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace WebAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ObjectTestOldController : ControllerBase
    {

        private readonly ILogger<OBJECT_TEST> _logger;

        public ObjectTestOldController(ILogger<OBJECT_TEST> logger)
        {
            _logger = logger;
        }

        [HttpGet]
        public IEnumerable<OBJECT_TEST> Get()
        {
            var rng = new Random();
            
            var ret = Enumerable.Range(1, 20).Select(index => new OBJECT_TEST
            {
                ID = rng.Next(1, 99),
                DESCRIPTION = $"Description test",
                TYPE = rng.Next(1, 3)
            })
            .ToArray();

            foreach(var item in ret)
            {
                var number = rng.Next(1, 99);
                if (number > 50)
                    item.NULLABLE_NUMBER = number;

            }

            return ret;
        }
    }
}
