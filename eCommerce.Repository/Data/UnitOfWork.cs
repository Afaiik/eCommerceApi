using Core.Entities;
using eCommerce.Infrastructure.Shared;
using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.Infrastructure.Data
{
    public class UnitOfWork : IDisposable
    {
        private AppDbContext _context;
        private GenericRepository<User> userRepository; 
        
        public UnitOfWork(AppDbContext context)
        {
            _context = context;
        }

        public GenericRepository<User> UserRepository
        {
            get
            {
                return this.userRepository ?? new GenericRepository<User>(_context);
            }
        }

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
    }
}
