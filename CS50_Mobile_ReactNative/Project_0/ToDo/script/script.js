const list = document.querySelector('.item-list');

// counter
const item = document.querySelector('.itemCountSpan');
item.textContent = list.children.length;

const checkedItem = document.querySelector('.uncheckedCountSpan');
let checktodo = 0;
// checked event
list.addEventListener('click', c => {
    if(c.target.className == 'check'){
        if(c.target.checked){
            checktodo++;
        }else{
            checktodo--;
        }
        checkedItem.textContent = list.children.length - checktodo;
    }
});

// add new todo
const cnt = document.querySelector('.container');
cnt.addEventListener('click', e => {

    if(e.target.className == 'counter-element add-todo' || e.target.className == 'add-plus'){
    // create elements
    const todo = document.createElement('li');
    const deleteBtn = document.createElement('button');
    const check = document.createElement('input');
    const inp = document.createElement('input');

    // add classes
    deleteBtn.classList.add('delete-button');
    check.classList.add('check');
    inp.classList.add('new-todo-item');

    //set attributes
    deleteBtn.textContent = "X";
    check.setAttribute('type', 'checkbox');
    inp.setAttribute('type', 'text');
    inp.setAttribute('value', 'New TODO');

    // nest
    todo.appendChild(deleteBtn);
    todo.appendChild(check);
    todo.appendChild(inp);
    list.appendChild(todo);
    }
    item.textContent = list.children.length;
    checkedItem.textContent = list.children.length - checktodo;
});


// delete button
list.addEventListener('click', e => {
    //decrease counter
    
    if(e.target.className == "delete-button"){
        const li = e.target.parentElement;
        list.removeChild(li);

        item.textContent = list.children.length;
        checkedItem.textContent = list.children.length - checktodo;
    }
})