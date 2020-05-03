using Core.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Core.Contexts
{

    public class ObjectTestContext : DbContext
    {
        public ObjectTestContext(DbContextOptions<ObjectTestContext> options)
            : base(options)
        {
        }

        public DbSet<OBJECT_TEST> OBJECT_TEST { get; set; }

        //public virtual async Task<IEnumerable<ObjectTest>> GetObjectTest()
        //{
        //    return await ObjectTest.ToListAsync();
        //}

        //public void AddNew(ObjectTest objectTest)
        //{
        //    using (var context = new TipManagerDBEntities())
        //    {
        //        context.Deposits.Add(objectTest);
        //        context.SaveChanges();
        //    }
        //}

    }
    
}
