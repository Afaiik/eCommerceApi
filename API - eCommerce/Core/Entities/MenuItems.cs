using System;
using System.Collections.Generic;

namespace eCommerce.Core.Entities
{
    public partial class MenuItems
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string Icon { get; set; }
        public string Href { get; set; }
        public int MenuId { get; set; }

        public virtual Menu Menu { get; set; }
    }
}
