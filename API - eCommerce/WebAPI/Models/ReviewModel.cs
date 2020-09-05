using System;
using System.Collections.Generic;

namespace eCommerce.Api.Models
{
    public partial class ReviewModel
    {
        public ReviewModel()
        {
            Log = new HashSet<LogModel>();
        }

        public int Id { get; set; }
        public string Description { get; set; }
        public string Comment { get; set; }
        public int Stars { get; set; }
        public int ProductId { get; set; }
        public int StateId { get; set; }
        public int UserId { get; set; }

        public virtual ProductModel Product { get; set; }
        public virtual StateModel State { get; set; }
        public virtual UserModel User { get; set; }
        public virtual ICollection<LogModel> Log { get; set; }
    }
}
