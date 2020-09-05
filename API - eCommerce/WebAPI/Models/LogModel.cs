using System;
using System.Collections.Generic;

namespace eCommerce.Api.Models
{
    public partial class LogModel
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string Observation { get; set; }
        public int? UserId { get; set; }
        public int? CompanyId { get; set; }
        public int? ProductId { get; set; }
        public int? OrderId { get; set; }
        public int? ReviewId { get; set; }

        public virtual CompanyModel Company { get; set; }
        public virtual OrderModel Order { get; set; }
        public virtual ProductModel Product { get; set; }
        public virtual ReviewModel Review { get; set; }
        public virtual UserModel User { get; set; }
    }
}
