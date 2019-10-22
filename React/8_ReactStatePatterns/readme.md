# React State Patterns

* **Updating Existing State**
    - **Setting State Using State**
        - We've established that **setState()** is asynchronous...
        
        - So: it's risky to assume previous call has finished when you call it. Also, React will sometimes batch (squash together) calls to **setState** together into one for performance reasons.

        - If a call to **setState()** depends on current state, the safest thing is to use the alternate "callback form".
            - *this.setState(callback)*
        
        - Instead of passing an object, pass it a callback with the current state as a parameter.
        
        - The callback should return an object representing the new state.
            - *this.setState(curState => ({ count: curState.count + 1 }));*

    - **Abstracting State Updates**
        - The fact that you can pass a function to *this.setState* lends itself nicely to a more advanced patter called **functional setState**

        - Basically you can describe your state updates abstractly as separate functions. But why would you do this?
            - *function **incrementCounter**(prevState) {*
                - *return { count: prevState.count + 1 }*
            - *}*
            - **this**.setState(incrementCounter);


* **Mutating State the Safe Way**
    - **Mutable Data Structures in State**
        - Mutable Data Structures:
            - Component state also commonly includes objects, arrays, and arrays of objects.

    - **Immutable State Updates**
        - A much better way is to make a new copy of the data structures in question. We can use any **pure function** to do this...
        - Pure functions such as **.map, .filter**, and **.reduce**
        - Efficienc: **O(N)** required to make a copy.

    - **Summary:**
        - Immutable state just means that there is an old state object and a new state object that are both snapshots in time.
        - The safest way to update state is to make a copy of it, and then call **this.setState** with the new copy.
        - This pattern is a good habit to get into for React apps and *required* for using Redux.

* **Designing State: Minimizing State**
    - **Minimize Your State**
        - In React, you want to try to put as little data in state as possible:
            + does **x** change? If not, **x** should not be part of state. It should be a **prop**.
            + Is **x** already captured by some other value **y** in state or props? Derive it from there instead.

* **Designing State: Downward Data Flow**
    - **State Should Live On the Parent**
