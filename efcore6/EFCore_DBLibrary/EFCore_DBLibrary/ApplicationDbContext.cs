using Microsoft.EntityFrameworkCore;

namespace EFCore_DBLibrary
{
    public class ApplicationDbContext : DbContext
    {
        // Add a default constructor
        public ApplicationDbContext() { }

        // Add a constructor that accepts DbContextOptions
        public ApplicationDbContext(DbContextOptions options) : base(options) { }
    }
}
