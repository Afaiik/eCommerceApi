using System;
using System.Collections.Generic;

namespace eCommerce.Api.Models
{
    public partial class UserTypeModel
    {
        public UserTypeModel()
        {
            User = new HashSet<UserModel>();
        }

        public int Id { get; set; }
        public string Description { get; set; }
        public string Alias { get; set; }

        public virtual ICollection<UserModel> User { get; set; }
    }
}
