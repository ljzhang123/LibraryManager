using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace LibraryManager.Data
{
	public class LibraryContext : DbContext
	{
		public DbSet<LibraryItem> LibraryItems { get; set; }

		protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
		{
			// Replace with your SQL Server connection string
			optionsBuilder.UseSqlServer("Server=YOGA-SLIM-7\\SQLEXPRESS;Database=LibraryDB;Trusted_Connection=True;");
		}
		protected override void OnModelCreating(ModelBuilder modelBuilder)
		{
			modelBuilder.Entity<LibraryItem>()
				.HasDiscriminator<string>("ItemType")
				.HasValue<Book>("Book")
				.HasValue<Audiobook>("Magazine");

			modelBuilder.Entity<LibraryItem>().Property(i => i.Title).IsRequired();
			modelBuilder.Entity<LibraryItem>().Property(i => i.Author).IsRequired();
			modelBuilder.Entity<LibraryItem>().Property(i => i.Publisher).IsRequired();
		}
	}
}
