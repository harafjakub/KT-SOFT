using BlazorNotesKtSoft.Models;
using Microsoft.EntityFrameworkCore;

namespace BlazorNotesKtSoft.Data;

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

    public DbSet<Note> Notes { get; set; }
}