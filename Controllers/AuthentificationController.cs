using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ecomApi.Middleware;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace ecomApi.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class AuthentificationController : ControllerBase
    {
        private readonly IJWTManagerRepository _jWTManager;

        public AuthentificationController(IJWTManagerRepository jWTManager)
        {
            this._jWTManager = jWTManager;
        }
        [HttpPost]
        public IActionResult Authenticate(Users usersdata)
        {
            var token = _jWTManager.Authenticate(usersdata);

            if (token == null)
            {
                return Unauthorized();
            }

            return Ok(token);
        }

    }
}