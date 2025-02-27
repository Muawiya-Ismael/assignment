Map<String, List<String>> initializeLibrary(){
   Map<String, List<String>> library = {};
   return library;
}

void addBook({required String title, String author = "noAuthor", String year = "noYear", String genre ="noGenre", required Map<String, List<String>> library}){
  if(library.containsKey(title)){
    print("Book already exists.");
  }else{
    List<String> bookInfo = [author, year, genre];
    library[title]= bookInfo;
    print("Book added successfully.");
  }
}

List<String> getBookInfo({required String title, required Map<String, List<String>> library}){
  if(library.containsKey(title) ){
    return library[title]!;
  }else{
    print("Book not found.");
    return [];
  }
}

void listAllBooks({String genre = "noGenre", required Map<String, List<String>> library}){
  if(genre == "noGenre"){
    printBook(library);
  }else{
    printBook(listBooksByGenre(genre: genre, library: library));
  }
}

Map<String, List<String>> listBooksByGenre({required String genre, required Map<String, List<String>> library}){
  Map<String, List<String>> booksOfGenre = Map.fromEntries(
        library.entries.where((book) => book.value[2] == genre)
      );

  if(identical(genre, "noGenre") || booksOfGenre.isEmpty){
    print("No books found for this genre.");
    return {};
  }else{
    return booksOfGenre;
  }
}

void removeBook({required String title, required Map<String, List<String>> library}){
  if(library.containsKey(title)){
    library.remove(title);
    print("Book removed successfully.");
  }else{
    print("Book not found.");
  }
}

void printBook(Map<String, List<String>> library){
  library.forEach((title, bookInfo) {
    print("Title: $title,${identical(bookInfo[0], "noAuthor")? "" : " Author: ${bookInfo[0]},"}${identical(bookInfo[1], "noYear")? "" : " Year: ${bookInfo[1]},"}${identical(bookInfo[2], "noGenre")? "" : " Genre: ${bookInfo[2]},"}");
  });
}