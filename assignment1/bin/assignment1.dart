import 'package:assignment1/methods.dart';
void main(List<String> arguments){
  Map<String, List<String>> library = initializeLibrary();

  addBook(title: "The Great Gatsby", author: "F. Scott Fitzgerald", year: "1925", genre: "Classic", library: library);
  addBook(title: "Pride and Prejudice", author: "Jane Austen", year: "1813", genre: "Romance", library: library);
  addBook(title: "To Kill a Mockingbird", author: "Harper Lee", year: "1960", genre: "Classic", library: library);
  addBook(title: "One Hundred Years of Solitude", author: "Gabriel García Márquez", year: "1967", genre: "Classic", library: library);
  addBook(title: "The Lord of the Rings", author: "J.R.R. Tolkien", year: "1955", genre: "Classic", library: library);
  addBook(title: "Jane Eyre", author: "Charlotte Brontë", year: "1847", genre: "Romance", library: library);
  addBook(title: "Moby-Dick", author: "George Orwell", genre: "Romance", library: library);

  print('\nLibrary books:');
  printBook(library);

  var bookInfo = getBookInfo(title: "The Great Gatsby", library: library);
  print("\nThe Great Gatsby Book information: ${bookInfo[0]}, ${bookInfo[1]}, ${bookInfo[2]}");

  print("\nBooks with Classic genre:");
  listAllBooks(genre: "Classic", library: library);

  print("\nAll Books:");
  listAllBooks(library: library);

  print("\nBooks with Romance genre:");
  printBook(listBooksByGenre(genre: "Romance", library: library));

  print("\nBooks with Fantasy genre:");
  printBook(listBooksByGenre(genre: "Fantasy", library: library));

  print("\nRemove The Great Gatsby book from the library:");
  removeBook(title: "The Great Gatsby", library: library);

  print('\nLibrary books:');
  printBook(library);

  print("\n");
}

