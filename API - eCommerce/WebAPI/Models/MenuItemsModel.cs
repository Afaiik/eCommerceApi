using System;
using System.Collections.Generic;

namespace eCommerce.Api.Models
{
    public partial class MenuItemsModel
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string Icon { get; set; }
        public string Href { get; set; }
        public int MenuId { get; set; }

        public virtual MenuModel Menu { get; set; }
    }
}
