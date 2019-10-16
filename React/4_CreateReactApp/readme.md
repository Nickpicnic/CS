# Introduction to Create React App

* **Create-React-App**
    - Creates a skeleton react project
    - Sets it up so that JS files are run through Babel automatically
    - Lets us use super-modern JS features/idioms
    - Makes testing & deployment much easier

* **2 Ways of Installing**
    - npm
        *first you need to install create-react-app globally*
        - npm install -g create-react-app **only once**
        *then to create each React project you want:*
        - create-react-app my-app-name
    - npx
        - npx create-react-app my-app
        - cd my-app
        - npm start

* **Starting Up The Server**
    - npm start

    - **Webpack**
        - CRA is built on top of "Webpack", a JS utility that:
            - Enables module importing/exporting
                - Packages up all CSS/images/JS into a single file for browser 
                - Drammatically reduces # of HTTP requests for performance
            
            - Hot reloading: when you change a source file, automatically reloads
                - Is very clever and tries to only reload relevant files

            - Enables easy testing & deployment

* **Modules: Import & Export Crash Course**
    * **Modules**
        - CRA uses ES2015 "modules"
        - This is a newer, standerdized version of Node's **require()**
        - Use this to export/import classes/data/function between JS files

        * **To Default or Not?**
            - Conventionally. default exports are used when there's a "most likely" thing to exporting
            - For example, in a React component file, it's common to have the component be the default export
            - You never **need** to make a default export, but it can be helpful to indicate the most important thing in a file.
        
* **Convensions**
    - Good style:
        - Each React component goes in separate file
            - **src/Car.js** for **Car** component
            - **src/House.js** for **House** component
        - Components extends **Component**(imported from React)
            - Export the component as the defaulr object
        - Skeleton assumes top object is **App** in **App.js**
            - *Best to keep this*

* **CSS and Assets in Create React App**
    - To include images and CSS, you can import them in JS files!
        - import "./App.css";
    
    * **CSS**
        - Make a CSS file for each React component
            - **House.css** for **House** component
        - Import it at the top of **House.js**
            - Create_react-App will automatically load this CSS
        - Conventional to add *className = "House"* onto **House** div
            - And use that prefix for sub-items to style:
                - *<div className = "House">*
                -    *<p className = "House-title">...</p>*
                -    *<p className = "House-address">...</p>*
                - *</div>*

    * **Images**
        - Store images in **src/** folder with the components
        - Load them where needed, and use imported name where path should go
            - *import puppy from './puppy.jpeg'*
            - *<img src={puppy} />*