using System;
using System.Collections.Generic;

namespace eCommerce.Core.Entities
{
    public partial class State
    {
        public State()
        {
            Company = new HashSet<Company>();
            Order = new HashSet<Order>();
            Product = new HashSet<Product>();
            Review = new HashSet<Review>();
            User = new HashSet<User>();
        }

        public int Id { get; set; }
        public string Description { get; set; }

        public virtual ICollection<Company> Company { get; set; }
        public virtual ICollection<Order> Order { get; set; }
        public virtual ICollection<Product> Product { get; set; }
        public virtual ICollection<Review> Review { get; set; }
        public virtual ICollection<User> User { get; set; }
    }
}
