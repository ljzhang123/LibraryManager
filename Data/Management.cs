using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibraryManager.Data
{
	public class Management
	{
		private readonly LibraryContext _context;

		public Management()
		{
			_context = new LibraryContext();
		}

		public void AddItem(LibraryItem item)
		{
			_context.LibraryItems.Add(item);
			_context.SaveChanges();
			Console.WriteLine($"Item '{item.Title}' added to the library.");
		}

		public List<LibraryItem> GetItems()
		{
			return _context.LibraryItems.ToList();
		}

		public void BorrowItem(string title)
		{
			var item = _context.LibraryItems.FirstOrDefault(i => i.Title == title);

			if (item == null)
			{
				Console.WriteLine($"Item '{title}' not found.");
				return;
			}

			if (item.IsBorrowed)
			{
				Console.WriteLine($"The item '{title}' is already borrowed.");
			}
			else
			{
				item.IsBorrowed = true;
				_context.SaveChanges();
				Console.WriteLine($"You have borrowed '{title}'.");
			}
		}

		public void ReturnItem(string title)
		{
			var item = _context.LibraryItems.FirstOrDefault(i => i.Title == title);

			if (item == null)
			{
				Console.WriteLine($"Item '{title}' not found.");
				return;
			}

			if (!item.IsBorrowed)
			{
				Console.WriteLine($"The item '{title}' is not currently borrowed.");
			}
			else
			{
				item.IsBorrowed = false;
				_context.SaveChanges();
				Console.WriteLine($"You have returned '{title}'.");
			}
		}
	}
}
