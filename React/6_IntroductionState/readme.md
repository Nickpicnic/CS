# React State 1
* **Intro:**
    - **What is State?**
        - In any sufficiently advanced web application, the user interface has to be stateful
        - Logged-in users see a different screen than logged-out users
        - Clicking "edut profile"opens up a modal (pop-up) window
        - Section of a website can expand or collapse, for instance clicking "read more"

    - **State Changes:**
        - State is designed to constantly change in response to events.
        - A great way to think about state is to think of games, for instance chess. At any point in time, the board is in a complex state.

    - **What Does State Track?**
        - There are two types of things state on the client/frontend keeps track of:
            - **UI logic** - the changing state of the interface e.g., there is a modal open right now because I'm editing my profile
            - **Business logic** - the changing state of data e.g., in my inbox, messages are either read or unread, and this is turn affects how they display.

    - **Vanilla / jQuery State**
        - The way we kept track of state with jQuery was by selecting DOM elements and seeing if they were displayed/hidden, or if they had certain styles or attributes.

        - In other words, we were inferring the state of the application from the DOM itself. **React is going to do the opposite!**

* **Initializing State**
    - **Core React Concept Review:**
        - component
            - buiding block of React
            - combines logic (JS) and presentation (JSX)
        - prop
            - data passed to a component *(or found via defaults)*
            - immutable; component cannot change irs own props
        - state
            - internal data specific to a component
            - data that changes over time!

    - **What is React State?**
        - In React, state is an instance attribute on a component.
        - It's always an object (POJO), since you'll want to keep track of several keys/values. 

    - **Initial State**
        - State should be initialized as soon as the component is created.
        - So we set it in the constructor function

    - **Recat Constructor Function**
        - If your component is stateless, you can omit the constructor function.
        - If you are building a component with state, you need a standart React constructor.
            - **constructor** takes one argument, **props**
            - You must call *super(props)* at start of constructor, which "registers" your class as a React **Component** 
            - Inside the instance methods, you can refer to *this.state* just like you did *this.props*
                *example - exampleGame.js*

* **Setting State Correctly:**
    - **Changing State**
        - **this.setState()** is built-in React method of changing a component's state.
        - *this.setState({ playerName: "Matt", score: 0 })*
        
        - Can call in ant instance method except the constructor
        - Takes an object describing the state changes
        - Patches state object - keys that you didn'y specify don't change
        - Asynchronous!
            - The component state will *eventually* update.
            - React controls when the state will actually change, for performance reasons.
        - Components re-render when their state changes.

* **React Events**
    - State most commonly changes in direct response to some event.
    - In React, every JSX element has built-in attributes representing every kind of browser event.
    - The are camel-cased, like **onClick**, and take callback functions as event listeners.

    - **this** is back
    - But **this** is undefined!
        - Who is calling **handleClick** for us?
            - React is, on click
        - What is it calling it on?
            - It doesn't remember to call it on our instance
            - The method was called "out of context"
        - What do we do?
            - **.bind()** it!

* **The 'State As Props' Design Pattern**
    - **State vs Props**
        - **State** and **Props** are the most important concepts in React *(after knowing what a 'component is')*

        term  | structure | mutable | purpose
        :--   | :--:      | :--:    | :--:
        state | POJO *{}* | yes     | stores changing component data
        props | POJO *{}* | no      | stores component configuration

    - **State *as* Props**
        - A common pattern we will see over and over again is a stateful ("snart") parent component passing down its state values as props to stateless ("dumb") child components
            *example: CounterParent.js*

        - This idea is generalized in React as **"*downward data flow*"**. It means that components get simpler as you go down the component hierarchy, and parents tend to be more stateful than their children.
