# React Events

* **The Joys of Method Binding**
    - Method Binding
        - The keyword *this*
            - When your event handlers reference the keyword **this**, watch out!
            - You will lose the **this** context when you pass a function as a handler.
    - **Fixing our binding**
        - There are three ways to fix this:
            - *bind.js*
            1. Use **bind** inline
                - **Pros**
                    + Very Explicit
                - **Cons**
                    + What if you need to pass it to multiple components?
                    + New function created on every render

            2. Use an arrow function
                - **Pros**
                    + No mention of bind!
                - **Cons**
                    + Intent less clear
                    + Again, what if you need to pass the fn to multiple components?
                    + New function created on every render!
            3. Method bind in the constructor
                - **Pros**
                    + Only need to bind once!
                    + More performant!

* **Passing Data to Child Components**
    - **How data flows?**
        - A parent component defines a function
        - The function is passed as a prop to a child component
        - The child component invokes the prop
        - The parent function is called, usually setting new state
        - The parent component is re-rendered along with its children

    - **Where to bind?**
        - The higher the better - don't bind in the child component if not needed.
        - If you need a parameter, pass it down to the child as a prop, then bind in parent and child.
        - Avoid inline arrow functions / binding if possible.
        - No need to bind in the constructor and male an inline function.
        - If you get stuck, don't worry about performance. just try to get the communication working
            - *You can always refactor later*

* **Parent-Child Method Naming**
    - **Naming Conventions**
        - You can call these handlers whatever you want - React doesn't care
        - For consistency, try to follow the **action / handleAction** pattern: 
            - In the parent, give the function a name corresponding to the behavior (**remove, add, open, toggle**, etc.)
            - In the child, use the name of the action along with "handle" to name the event handler (**handleRemove, handleAdd, handleOpen, handleToggle**, etc.)

* **Quick Detour React Keys**
    - **Lists and Keys**
        - When mapping over data and returning components, you get a warning about keys for list items.
        - **key** is a special string attr to include when creating lists of elements

    - **Adding keys**
        - *key={num}*

    - **Keys**
        - Keys help React identify which items are changed/added/removed.
        - Keys should be given to repeated elems to provide a stable identity.
    
    - **Picking a key**
        - Best way: use string that uniquely identifies item among siblings.
        - Most often you would use IDs from your data as keys:
        
    - **Last resort**
        - When you don't have stable IDs for rendered items, you may use the iteration index as a key as a last resort.
        - Don't use indexes for keys if item order may change or items can be deleted.
            - This can cause performance problems or bugs with component state.