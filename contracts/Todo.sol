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

 function getTodo()public view returns(MyTodo[] memory){
    return todos;
 }

 function ToogleTodoIsDone(uint256 _index)public {
    todos[_index].IsDone =! todos[_index].IsDone;
   
 }

//  function UpdateTodos(uint256 _id,string memory _name, string memory _title, string memory _description, bool _IsDone)public  {
//     todos[_id]=MyTodo({
//         name:_name,
//         title:_title,
//         description:_description,
//         IsDone:_IsDone
//     });
//  }

//  function DeleteArray(uint _id) public {
//     delete todos[_id];
    
//  }



}



