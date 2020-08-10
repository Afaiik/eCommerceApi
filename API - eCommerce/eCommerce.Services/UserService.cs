using Core.Entities;
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

        public User GetById(int id)
        {
            return _unitOfWork.Users.GetByID(id);
        }

        public async Task Update(User user)
        {
            _unitOfWork.Users.Update(user);
            await _unitOfWork.SaveChangesAsync();
        }
        public async Task Insert(User user)
        {
            var validationResult = await new UserValidator().ValidateAsync(user);

            if (!validationResult.IsValid)
                throw new ValidationException(validationResult.Errors.First().ErrorMessage); //TODO: Fix error message

            _unitOfWork.Users.Insert(user);

            await _unitOfWork.SaveChangesAsync();
        }

        public async Task<User> Delete(int id)
        {
            var user = _unitOfWork.Users.GetByID(id);
            if (user == null)
                throw new ValidationException($"Validation: User with id {id} not found.");

            _unitOfWork.Users.Delete(id);

            await _unitOfWork.SaveChangesAsync();

            return user;
        }
    }
}
