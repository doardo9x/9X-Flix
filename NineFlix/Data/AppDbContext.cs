using Microsoft.EntityFrameworkCore;
using NineFlix.Models;

namespace NineFlix.Data;

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
    {
    }

    public DbSet<Genre> Genres { get; set; }
    public DbSet<Movie> Movies { get; set; }
    // public DbSet<Movie> MovieGenres { get; set; }
}