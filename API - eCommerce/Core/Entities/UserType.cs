using System;
using System.Collections.Generic;

namespace eCommerce.Core.Entities
{
    public partial class UserType
    {
        public UserType()
        {
            User = new HashSet<User>();
        }

        public int Id { get; set; }
        public string Description { get; set; }
        public string Alias { get; set; }

        public virtual ICollection<User> User { get; set; }
    }
}
