using eCommerce.Core.Entities;
using eCommerce.Core.Interfaces.Repositories;
using eCommerce.Core.Interfaces.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;

namespace eCommerce.Services
{
    public class StateService : GenericService<State>, IStateService
    {
        private readonly IUnitOfWork _unitOfWork;

        public StateService(IUnitOfWork unitOfWork, IGenericRepository<State> _tRepository) : base(_tRepository)
        {
            _unitOfWork = unitOfWork;
        }

    }
}
