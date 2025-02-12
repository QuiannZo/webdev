// JavaScript Syntax Guide

// 1. Variables
let x = 10; // Block-scoped variable
const y = 20; // Constant variable
var z = 30; // Function-scoped variable (avoid using var!!!)

// 2. Data Types
let str = "Hello"; // String
let num = 100; // Number
let bool = true; // Boolean
let arr = [1, 2, 3]; // Array
let obj = { key: "value" }; // Object
let undef; // Undefined
let nullable = null; // Null

// 3. Operators
let sum = x + y; // Arithmetic (+, -, *, /, %)
let isEqual = x === y; // Comparison (===, !==, <, >, <=, >=)
let logical = x > 5 && y < 50; // Logical (&&, ||, !)

// 4. Conditional Statements
if (x > 5) {
  console.log("X is greater than 5");
} else {
  console.log("X is not greater than 5");
}

// 5. Loops
for (let i = 0; i < 5; i++) {
  console.log(i);
}

let j = 0;
while (j < 5) {
  console.log(j);
  j++;
}

// 6. Functions
function greet(name) {
  return "Hello, " + name;
}
console.log(greet("Alice"));

// Arrow Function
const add = (a, b) => a + b;
console.log(add(2, 3));

// 7. Arrays
arr.push(4); // Add element
arr.pop(); // Remove last element
arr.forEach(num => console.log(num)); // Iterate over array

// 8. Objects
let person = { name: "Bob", age: 25 };
console.log(person.name); // Access property
person.job = "Developer"; // Add new property

// 9. Classes
class Animal {
  constructor(name) {
    this.name = name;
  }
  speak() {
    console.log(`${this.name} makes a sound`);
  }
}
let dog = new Animal("Dog");
dog.speak();

// 10. Promises & Async/Await
const fetchData = async () => {
  try {
    let response = await fetch("https://api.example.com/data");
    let data = await response.json();
    console.log(data);
  } catch (error) {
    console.error("Error fetching data", error);
  }
};
fetchData();

// 11. Modules
// Exporting (in a separate file)
// export const PI = 3.14;
// export function square(n) { return n * n; }

// Importing (in another file)
// import { PI, square } from "./math.js";
// console.log(square(4));

// 12. Event Handling (DOM)
document.getElementById("btn").addEventListener("click", () => {
  console.log("Button Clicked");
});
