using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibraryManager.Data
{
	class Audiobook : LibraryItem
	{
		public string Narrator { get; set; }

		public Audiobook(string title, string author, string publisher, string narrator) : base(title, author, publisher)
		{
			Narrator = narrator;
		}

		public override string GetDetails()
		{
			return $"Magazine: {Title}, Author: {Author}, Publisher: {Publisher}, Narrator: {Narrator}";
		}
	}
}
