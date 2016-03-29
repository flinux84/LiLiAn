using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LilianPresentation.Startup))]
namespace LilianPresentation
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
