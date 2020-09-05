using eCommerce.Core.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.Infrastructure.Data.Configurations
{
    class StateConfiguration : IEntityTypeConfiguration<State>
    {
        public void Configure(EntityTypeBuilder<State> entity)
        {
            entity.Property(e => e.Description)
                     .IsRequired()
                     .HasMaxLength(50)
                     .IsUnicode(false);
        }
    }
}
