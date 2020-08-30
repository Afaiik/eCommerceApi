using Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.Core.Interfaces.Services
{
    public interface IUserService //: IGenericService<User>
    {
        Task<IEnumerable<User>> GetActiveUsers();
        IEnumerable<User> Get(Expression<Func<User, bool>> filter = null,
                                        Func<IQueryable<User>, IOrderedQueryable<User>> orderBy = null,
                                        string includeProperties = "");

        User GetById(int id);

        Task Update(User user);

        Task Insert(User user);

        Task<User> Delete(int id);
    }
}
