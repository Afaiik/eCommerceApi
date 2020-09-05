using eCommerce.Core.Entities;
using eCommerce.Core.Interfaces.Repositories;
using eCommerce.Infrastructure.Data;
using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.Infrastructure.Repositories
{
    public class StateRepository : GenericRepository<State>, IStateRepository
    {
        public StateRepository(AppDbContext context) : base(context)
        {

        }
    }
}
