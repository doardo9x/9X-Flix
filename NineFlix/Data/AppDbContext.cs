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
    public DbSet<Movie> MovieGenres { get; set; }

    protected override void OnModelCreating(ModelBuilder builder)
    {
        base.OnModelCreating(builder);

        #region Configuração do Muitos para Muitos do MovieGenre
        builder.Entity<MovieGenre>()
            .HasKey(mg => new { mg.MovieId, mg.GenreId});
        
        builder.Entity<MovieGenre>()
            .HasOne(mg => mg.Movie)
            .WithMany( m => m.Genres)
            .HasForeignKey(mg => mg.MovieId);

        builder.Entity<MovieGenre>()
        .HasOne(mg => mg.Genre)
        .WithMany(g => g.Movies)
        .HasForeignKey(mg => mg.GenreId);
        #endregion


        
    }
}

