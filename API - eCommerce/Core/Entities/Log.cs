using System;
using System.Collections.Generic;

namespace eCommerce.Core.Entities
{
    public partial class Log
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string Observation { get; set; }
        public int? UserId { get; set; }
        public int? CompanyId { get; set; }
        public int? ProductId { get; set; }
        public int? OrderId { get; set; }
        public int? ReviewId { get; set; }

        public virtual Company Company { get; set; }
        public virtual Order Order { get; set; }
        public virtual Product Product { get; set; }
        public virtual Review Review { get; set; }
        public virtual User User { get; set; }
    }
}
