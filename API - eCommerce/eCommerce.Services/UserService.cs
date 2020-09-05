using eCommerce.Core.Entities;
using eCommerce.Core.Interfaces.Repositories;
using eCommerce.Core.Interfaces.Services;
using eCommerce.Services.Validators;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.Services
{
    public class UserService : GenericService<User>, IUserService
    {
        private readonly IUnitOfWork _unitOfWork;
        
        public UserService(IUnitOfWork unitOfWork, IGenericRepository<User> _tRepository) : base(_tRepository)
        {
            _unitOfWork = unitOfWork;
        }
        public async Task<IEnumerable<User>> GetActiveUsers()
        {
            return await _unitOfWork.Users.GetActiveUsers();
        }

        public async Task<User> GetUserByEmailOrUsername(string username, string email)
        {
            return await _unitOfWork.Users.GetUserByEmailOrUsername(username, email);
        }
    }
}
