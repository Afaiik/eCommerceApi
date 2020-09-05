using eCommerce.Core.Interfaces.Repositories;
using eCommerce.Core.Interfaces.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace eCommerce.Services
{
    public class GenericService<TEntity> : IGenericService<TEntity> where TEntity : class
    {
        private readonly IGenericRepository<TEntity> _tRepository;

        public GenericService(IGenericRepository<TEntity> tRepository)
        {
            _tRepository = tRepository;
        }

        public async Task Delete(object id)
        {
            await _tRepository.Delete(id);
        }

        public async Task Delete(TEntity entityToDelete)
        {
            await _tRepository.Delete(entityToDelete);
        }

        public async Task<IEnumerable<TEntity>> Get(Expression<Func<TEntity, bool>> filter = null, Func<IQueryable<TEntity>, IOrderedQueryable<TEntity>> orderBy = null, string includeProperties = "")
        {
            return await _tRepository.Get(filter, orderBy, includeProperties);
        }

        public async Task<TEntity> GetById(object id)
        {
            return await _tRepository.GetById(id);
        }

        public async Task Insert(TEntity entity)
        {
            await _tRepository.Insert(entity);
        }

        public async Task Update(TEntity entityToUpdate)
        {
            await _tRepository.Update(entityToUpdate);
        }
    }
}