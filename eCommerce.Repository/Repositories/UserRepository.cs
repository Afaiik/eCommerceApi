using Core.Entities;
using eCommerce.Core.Interfaces.Repositories;
using eCommerce.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.Infrastructure.Repositories
{
    public class UserRepository : GenericRepository<User>, IUserRepository
    {
        public UserRepository(AppDbContext context) : base(context)
        {

        }

        public async Task<IEnumerable<User>> GetActiveUsers()
        {
            var query = context.User.AsQueryable();

            query = query.Where(x => x.Id > 1);

            return await query.ToListAsync();
        }
    }
}
