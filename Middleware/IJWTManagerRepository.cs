using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ecomApi.Models;

namespace ecomApi.Middleware
{
    public interface IJWTManagerRepository
    {
        Tokens Authenticate(Users users);
    }

}