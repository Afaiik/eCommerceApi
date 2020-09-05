using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerce.Api.Models
{
    public class UserModel
    {
        public UserModel()
        {
            
            Log = new HashSet<LogModel>();
            Order = new HashSet<OrderModel>();
            Review = new HashSet<ReviewModel>();
            
        }

        public int Id { get; set; }
        public string Email { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public int UserTypeId { get; set; }
        public int StateId { get; set; }
        public int CompanyId { get; set; }

        
        public virtual CompanyModel Company { get; set; }
        public virtual StateModel State { get; set; }
        public virtual UserTypeModel UserType { get; set; }
        public virtual ICollection<LogModel> Log { get; set; }
        public virtual ICollection<OrderModel> Order { get; set; }
        public virtual ICollection<ReviewModel> Review { get; set; }
        
    }
}
