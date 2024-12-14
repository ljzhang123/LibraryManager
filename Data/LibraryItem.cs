using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace LibraryManager.Data
{
	public abstract class LibraryItem
	{
		[Key]
		public int Id { get; set; }

		public string Title { get; set; }
		public string Author { get; set; }
		public string Publisher { get; set; }
		public bool IsBorrowed { get; set; }

		public LibraryItem(string title, string author, string publisher)
		{
			Title = title;
			Author = author;
			Publisher = publisher;
			IsBorrowed = false;
		}

		public void Borrow()
		{
			if (IsBorrowed)
				throw new InvalidOperationException($"The item '{Title}' is already borrowed.");

			IsBorrowed = true;
		}

		public void Return()
		{
			if (!IsBorrowed)
				throw new InvalidOperationException($"The item '{Title}' is not currently borrowed.");

			IsBorrowed = false;
		}

		public abstract string GetDetails();
	}
}
