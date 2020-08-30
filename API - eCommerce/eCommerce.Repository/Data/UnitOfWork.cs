using Core.Entities;
using eCommerce.Core.Interfaces.Repositories;
using eCommerce.Infrastructure.Repositories;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.Infrastructure.Data
{
    public class UnitOfWork : IDisposable, IUnitOfWork
    {
        private AppDbContext _context;
        private UserRepository _userRepository;
        
        public UnitOfWork(AppDbContext context)
        {
            _context = context;
        }

        public IUserRepository Users => _userRepository = _userRepository ?? new UserRepository(_context);

        public void SaveChanges()
        {
            _context.SaveChanges();
        }

        private bool disposed = false; 

        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    _context.Dispose();
                }
            }
            this.disposed = true;
        }
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        public async Task<int> SaveChangesAsync()
        {
            return await _context.SaveChangesAsync();
        }

    }
}
