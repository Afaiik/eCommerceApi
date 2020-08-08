using Core.Entities;
using eCommerce.Core.Interfaces.Repositories;
using eCommerce.Core.Interfaces.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.Services
{
    public class UserService : /*GenericService<User>,*/ IUserService
    {
        private readonly IUnitOfWork _unitOfWork;

        public UserService(IUnitOfWork unitOfWork)/* : base(unitOfWork)*/
        {
            _unitOfWork = unitOfWork;
        }

        public IEnumerable<User> Get(Expression<Func<User, bool>> filter = null, Func<IQueryable<User>, IOrderedQueryable<User>> orderBy = null, string includeProperties = "")
        {
            return _unitOfWork.Users.Get();
        }

        public async Task<IEnumerable<User>> GetActiveUsers()
        {
            return await _unitOfWork.Users.GetActiveUsers();
        }
    }
}
