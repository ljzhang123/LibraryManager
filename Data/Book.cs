using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibraryManager.Data
{
	class Book : LibraryItem
	{
		public int Pages { get; set; }

		public Book(string title, string author, string publisher, int pages) : base(title, author, publisher)
		{
			Pages = pages;
		}

		public override string GetDetails()
		{
			return $"Book: {Title} by {Author}, Publisher: {Publisher}, {Pages} pages";
		}
	}
}
