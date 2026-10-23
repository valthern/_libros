using EF_DBLibrary;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

namespace EF_ConsoleProgram;

class Program
{
    private static IConfigurationRoot? configuration = null!;

    private static void BuildConfiguration()
    {
        var builder = new ConfigurationBuilder()
            .SetBasePath(Directory.GetCurrentDirectory())
            .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true);
        configuration = builder.Build();
    }

    static void Main(string[] args)
    {
        Console.WriteLine("Hello, World!");
        BuildConfiguration();
        var connectionString = configuration.GetConnectionString("csCsiTiDev");
        Console.WriteLine($"Connection String: {connectionString}");
        var optionsBuilder = new DbContextOptionsBuilder<EFDbContext>();
        optionsBuilder.UseSqlServer(connectionString);
        using var context = new EFDbContext(optionsBuilder.Options);
        //...aditional code coming soon will go here
        Console.WriteLine("done");
    }
}
