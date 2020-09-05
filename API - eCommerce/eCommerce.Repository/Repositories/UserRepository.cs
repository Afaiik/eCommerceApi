using eCommerce.Core.Entities;
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

        public async Task<User> GetUserByEmailOrUsername(string username, string email)
        {
            var query = context.User.AsQueryable();
            if(!string.IsNullOrEmpty(username))
                query = query.Where(x =>
                    x.Username.ToLower().Equals(username.Trim().ToLower())
                );
            if (!string.IsNullOrEmpty(email))
                query = query.Where(x =>
                    x.Email.ToLower().Equals(email.Trim().ToLower())
                );

            return await query.FirstOrDefaultAsync();
        }
    }
}
