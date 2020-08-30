using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace eCommerce.Core.Interfaces.Repositories
{
    public interface IUnitOfWork : IDisposable
    {
        IUserRepository Users { get; }

        Task<int> SaveChangesAsync();

    }
}
