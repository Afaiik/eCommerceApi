using Core.Entities;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Text;

namespace eCommerce.Services.Validators
{
    public class UserValidator : AbstractValidator<User>
    {
        public UserValidator()
        {
            RuleFor(x => x.Email).Must(x => x.Contains("@")).WithMessage("Email is not valid. Lack of '@'.");
        }
    }
}
