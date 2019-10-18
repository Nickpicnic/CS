function Counter(){
    let i = 0;
    return () => {
        i++;
        return i;
    }
}

let firstCounter = Counter();
console.log(firstCounter());
console.log(firstCounter());
console.log(firstCounter());

