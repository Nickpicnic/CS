# Properties
*aka Props*

* A useful component is a reusable one. (configurable or customizable)

* **Properties Requirements:**
    - Properties are for *configuring* your component
    - Properties are **immutable!**

* **Other Types of Props:**
    - Properties can be strings
        *< User name="Jane" title="CEO" />*
    - For other types, embed HS expression using the curly braces
        *< User name="Jane" salary={ 100000 } hobbies={ ["bridge", "reading", "tea"] } />*

* **Looping in JSX:**
    - it's common to use **array.map(fn)** to output in JSX

* **Adding default props:**
    - Set properties on element; get using **this.props.propName**

* **Styling React:**
    - **className** instead of class