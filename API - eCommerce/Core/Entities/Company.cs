using System;
using System.Collections.Generic;

namespace eCommerce.Core.Entities
{
    public partial class Company
    {
        public Company()
        {
            Log = new HashSet<Log>();
            Menu = new HashSet<Menu>();
            Product = new HashSet<Product>();
            User = new HashSet<User>();
        }

        public int Id { get; set; }
        public string Description { get; set; }
        public string FantasyName { get; set; }
        public int StateId { get; set; }
        public string PhoneNumber { get; set; }
        public string AlternativePhonenumber { get; set; }
        public string Email { get; set; }
        public string AlternativeEmail { get; set; }
        public string InstagramUsername { get; set; }
        public string FacebookUsername { get; set; }

        public virtual State State { get; set; }
        public virtual ICollection<Log> Log { get; set; }
        public virtual ICollection<Menu> Menu { get; set; }
        public virtual ICollection<Product> Product { get; set; }
        public virtual ICollection<User> User { get; set; }
    }
}
