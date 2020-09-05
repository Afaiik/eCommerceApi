using System;
using System.Collections.Generic;

namespace eCommerce.Api.Models
{
    public partial class MenuModel
    {
        public MenuModel()
        {
            MenuItems = new HashSet<MenuItemsModel>();
        }

        public int Id { get; set; }
        public int CompanyId { get; set; }
        public string AccentColor { get; set; }

        public virtual CompanyModel Company { get; set; }
        public virtual ICollection<MenuItemsModel> MenuItems { get; set; }
    }
}
