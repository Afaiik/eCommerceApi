using System;
using System.Collections.Generic;

namespace eCommerce.Core.Entities
{
    public partial class AppParameter
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public int? IntValue { get; set; }
        public string StringValue { get; set; }
    }
}
