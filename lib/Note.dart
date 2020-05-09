class Note{

  int _id;
  String _title;
  String _date;
  String _description;
  int _priority;

  Note(this._title,this._date,this._priority,[this._description]);
  Note.withId(this._id,this._title,this._date,this._priority,[this._description]);


//getters
  int get id=> _id;
  String get title=>_title;
  String get date=>_date;
  String get description=>_description;
  int get priority=>_priority;


//setters

  set title(String newTitle){
    if(newTitle.length<=255){
      this._title=newTitle;
    }
  }
  set description(String newDescription){
    {
      this._description=newDescription;
    }
  }
  set date(String newDate){
    {
      this._title=newDate;
    }
  }
  set priority(int newpriority){
    if(newpriority>=1 && newpriority <=2){
      this._priority=newpriority;
    }
  }
  //Used to Save and retrive from the Database.

  //convert note to object
  Map<String, dynamic> toMap(){     //dyamic means it can be anything Date , time  title.  
    var map=Map<String ,dynamic>();
    if(id!= null){
      map['id']=_id;
    }
    map['title']=_title;
    map['description']=_description;
    map['priority']=_priority;
    map['date']=_date;
    return map;
  }

  Note.fromMapObject(Map<String,dynamic> map){

    this._id=map['id'];
    this._description=map['description'];
    this._date=map['date'];
    this._priority=map['priority'];
    this._title=map['title'];

  }



}