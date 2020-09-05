using System;
using System.Collections.Generic;

namespace eCommerce.Core.Entities
{
    public partial class Review
    {
        public Review()
        {
            Log = new HashSet<Log>();
        }

        public int Id { get; set; }
        public string Description { get; set; }
        public string Comment { get; set; }
        public int Stars { get; set; }
        public int ProductId { get; set; }
        public int StateId { get; set; }
        public int UserId { get; set; }

        public virtual Product Product { get; set; }
        public virtual State State { get; set; }
        public virtual User User { get; set; }
        public virtual ICollection<Log> Log { get; set; }
    }
}
