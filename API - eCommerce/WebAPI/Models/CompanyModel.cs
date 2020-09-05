using System;
using System.Collections.Generic;

namespace eCommerce.Api.Models
{
    public partial class CompanyModel
    {
        public CompanyModel()
        {
            Log = new HashSet<LogModel>();
            Menu = new HashSet<MenuModel>();
            Product = new HashSet<ProductModel>();
            User = new HashSet<UserModel>();
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

        public virtual StateModel State { get; set; }
        public virtual ICollection<LogModel> Log { get; set; }
        public virtual ICollection<MenuModel> Menu { get; set; }
        public virtual ICollection<ProductModel> Product { get; set; }
        public virtual ICollection<UserModel> User { get; set; }
    }
}
