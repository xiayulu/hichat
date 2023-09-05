import 'package:hichat/src/views/contacts/models/contact.dart';

class ContactRepo {
  List<ContactModel> getList() {
    return [
      ContactModel(name: "Jack Ma", avatar: "asserts/images/avatar0.jpg"),
      ContactModel(name: "Jack Rolling", avatar: "asserts/images/avatar1.jpg"),
      ContactModel(name: "Mark Towin", avatar: "asserts/images/avatar2.jpg"),
      ContactModel(name: "Harry Porter", avatar: "asserts/images/avatar3.jpg"),
      ContactModel(name: "Jan Smith", avatar: "asserts/images/avatar4.jpg"),
      ContactModel(name: "Bill Gates", avatar: "asserts/images/avatar5.jpg"),
      ContactModel(name: "Mask Holly", avatar: "asserts/images/avatar6.jpg"),
      ContactModel(name: "Harold Finch", avatar: "asserts/images/avatar7.jpg"),
      ContactModel(name: "Lilly Brown", avatar: "asserts/images/avatar8.jpg"),
      ContactModel(name: "Jack Chen", avatar: "asserts/images/avatar9.jpg"),
    ];
  }
}
