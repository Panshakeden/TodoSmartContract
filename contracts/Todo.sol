//SPDX-License-Identifier:MIT
pragma solidity ^0.8.2;


contract Todo {

struct MyTodo{
     string name;
     string title;
     string description;
     bool  IsDone;
}

 MyTodo[] public  todos;

 function createTodo(string memory _name, string memory _title,string  memory _description, bool _IsDone)public  {
    todos.push(MyTodo({
        name:_name,
        title:_title,
        description:_description,
        IsDone:_IsDone

    }));
 }




}



