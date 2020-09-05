using System;
using System.Collections.Generic;

namespace eCommerce.Core.Entities
{
    public partial class Order
    {
        public Order()
        {
            Log = new HashSet<Log>();
            Purchase = new HashSet<Purchase>();
        }

        public int Id { get; set; }
        public int StateId { get; set; }
        public int UserId { get; set; }
        public int PaymentMethodId { get; set; }

        public virtual PaymentMethod PaymentMethod { get; set; }
        public virtual State State { get; set; }
        public virtual User User { get; set; }
        public virtual ICollection<Log> Log { get; set; }
        public virtual ICollection<Purchase> Purchase { get; set; }
    }
}
