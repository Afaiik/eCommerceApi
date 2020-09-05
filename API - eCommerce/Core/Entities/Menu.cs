using System;
using System.Collections.Generic;

namespace eCommerce.Core.Entities
{
    public partial class Menu
    {
        public Menu()
        {
            MenuItems = new HashSet<MenuItems>();
        }

        public int Id { get; set; }
        public int CompanyId { get; set; }
        public string AccentColor { get; set; }

        public virtual Company Company { get; set; }
        public virtual ICollection<MenuItems> MenuItems { get; set; }
    }
}
