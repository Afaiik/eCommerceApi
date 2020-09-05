using eCommerce.Core.Entities;
using eCommerce.Api.Models;
using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerce.Api.Mapping 
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            // Domain to Resource
            CreateMap<User, UserModel>();
            CreateMap<State, StateModel>();

            // Resource to Domain
            CreateMap<UserModel, User>();
            CreateMap<State, StateModel>();
        }
    }
}
