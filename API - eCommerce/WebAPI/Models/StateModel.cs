using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerce.Api.Models
{
    public class StateModel
    {
        public StateModel()
        {
           
            Company = new HashSet<CompanyModel>();
            Order = new HashSet<OrderModel>();
            Product = new HashSet<ProductModel>();
            Review = new HashSet<ReviewModel>();
            
            User = new HashSet<UserModel>();
            
        }

        public int Id { get; set; }
        public string Description { get; set; }

        
        public virtual ICollection<CompanyModel> Company { get; set; }
        public virtual ICollection<OrderModel> Order { get; set; }
        public virtual ICollection<ProductModel> Product { get; set; }
        public virtual ICollection<ReviewModel> Review { get; set; }
        
        public virtual ICollection<UserModel> User { get; set; }
    }
}
