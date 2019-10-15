# JSX
*Allow to use HTML inside the JS code*

* **Using JSX:**
    - JSX isn't legal JavaScript
        - It has to be 'transpiled' to JavaScript
    - You can do this using **Babel**

* **JSX Rules:**
    *JSX is more strict than HTML - elements must either:*
    - Have an explicit closing tag: <b>...</b>
    - Be explicitly self-closed: <input name="msg />
        - Cannot leave off that **/** or will get syntax error

* **JS inside JSX**:
    - {*some script*}

* **JSX Conditionals:**
    - If/else
    - Prevent rendering with **null**
    - Element variables
    - Ternary operator
    - Short-circuit operator(&&)
    - Immediately-Invoked Function Expressions (IIFE)
    - Subcomponents
    - High Order Components(HOCs)

* **Layout:**
    - It's good to keep different components in separate files
    *Convention: 1 component per file, with component name as filename*

    - Conventional for top-level component to be named **App**
    *This renders the other components*

    
    