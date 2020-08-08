using Core.Entities;
using eCommerce.Infrastructure.Data.Configurations;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.Infrastructure.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext() : base()
        {
        }
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {
        }

        public DbSet<User> User { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            //Entities configuration. (DataAnnotations equivalent)
            modelBuilder.ApplyConfiguration(new UserConfiguration());
        }

    }
}
