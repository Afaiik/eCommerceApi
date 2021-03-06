﻿using System;
using System.Collections.Generic;

namespace eCommerce.Core.Entities
{
    public partial class User
    {
        public User()
        {
            Log = new HashSet<Log>();
            Order = new HashSet<Order>();
            Review = new HashSet<Review>();
        }

        public int Id { get; set; }
        public string Email { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public int UserTypeId { get; set; }
        public int StateId { get; set; }
        public int CompanyId { get; set; }

        public virtual Company Company { get; set; }
        public virtual State State { get; set; }
        public virtual UserType UserType { get; set; }
        public virtual ICollection<Log> Log { get; set; }
        public virtual ICollection<Order> Order { get; set; }
        public virtual ICollection<Review> Review { get; set; }
    }
}
