using eCommerce.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.Core.Interfaces.Services
{
    public interface IUserService : IGenericService<User>
    {
        Task<IEnumerable<User>> GetActiveUsers();
        
        Task<User> GetUserByEmailOrUsername(string username, string email);
    }
}
