/*
concept: classes, constructors, objects creation, list, modifications.
Library Management System - Books, Members - if availble books - allocate members, if not check that it is alloted to some one and will allot once retured back.
*/
/*
UML - Unified Modelling Language - A way to represent complex sofware designs - also used to understand dataflow.
Define class in box - give its name.
define its attribute.

Library
+ books 1: List<book> books = []
+ loans 2: List<Loan> loans = []
--------------------------------
+ addBook(Book,book): void
+ listBooks() void

Loan
+ book 1 : Book
+ member: Member
+ loanDate: DateTime
+ returnDate: DateTime
-------------------------
+ returnBook(): void

Book
+ title 1: String
+ author 1: String
+ isbn 1: String
+ isAvailbele 1: bool

Member
+ name: String
+ memberid: String

*/

void main() {
  Book book1 = Book('1984', "George Orwell", '1234567890', true);
  Book book2 = Book('Got', "Harper Lee", '1234567891', true);

  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);
  library.listBook();

  Member member = Member('John Doe', "M01");

  library.loansBook(book1, member);

  library.listBook();

  library.listLoansBook();
}

class Book {
  String? title;
  String? author;
  String? isbn;
  bool? isAvailable;

  Book(this.title, this.author, this.isbn, this.isAvailable);
}

class Library {
  List<Book> books = [];
  List<Loan> loans = [];

  void loansBook(Book book, Member member) {
    if (book.isAvailable ?? false) {
      book.isAvailable = false;
      loans.add(Loan(book, member, DateTime.now(), null));
    } else {
      print("${book.title} is not available");
    }
  }

  void addBook(Book book) {
    books.add(book);
  }

  void listBook() {
    print('---- List All Books In Library ---');
    for (var book in books) {
      print(
          "Title: ${book.title}, Author: ${book.author}, ISBN: ${book.isbn}, Available: ${book.isAvailable}");
    }
  }

  void listLoansBook() {
    print('---- List All Books In Library ---');
    for (var loan in loans) {
      print(
          "Title: ${loan.book!.title}, Author: ${loan.book?.author}, ISBN: ${loan.book?.isbn}, Available: ${loan.book?.isAvailable}");
    }
  }
}

class Member {
  String? name;
  String? memberId;

  Member(this.name, this.memberId);
}

class Loan {
  Book? book;
  Member? member;
  DateTime? loanDate;
  DateTime? returnDate;

  Loan(this.book, this.member, this.loanDate, this.returnDate);

  void returnBook() {
    returnDate = DateTime.now();
    book?.isAvailable = true;
  }
}
