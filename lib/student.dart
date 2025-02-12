class Students {
  List<Map<String, dynamic>> people;

  Students(List<Map<String, dynamic>> this.people);

  sort(String fieldName){
    //sort the List based on the fieldName in each Map.
    //fieldName would be something like 'email' or 'first'
    people.sort((a, b) => a[fieldName].compareTo(b[fieldName]));

    //after sort call output()
    output();
  }
  output(){
    //loop and print each Map object properties and values
    for (var person in people) {
        print(person);
    }
  }
  plus(Map<String, dynamic> person) {
    //add a person Map to the people List
    people.add(person);

    //last step is to call output
    output();
  }
  remove(String fieldName, dynamic value){
    //remove one or more Map item(s) from the List using the removeWhere() List method.
      people.removeWhere((person) => person[fieldName] == value);

    //last step is to call output()
    output();
  }
}