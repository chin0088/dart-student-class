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
  remove(String fieldName){
    //remove a key-value entry from any Map that contains a property with the name fieldName.
    //Eg: {id: 2, first:'Steve', last:'Griffith', email: 'griffis@algonquincollege.com'}
    // with field="email", remove the "email" property from EACH Map in the LIST
    for (var person in people) {
        person.remove(fieldName);
    }

    //last step is to call output()
    output();
  }
}