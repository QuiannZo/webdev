# HTML Syntax Guide

## 1️⃣ Introduction to HTML

HTML (HyperText Markup Language) is the standard language for creating web pages. It uses **tags** to structure content.

### Basic Structure

```html
<!DOCTYPE html>
<html>
<head>
    <title>My First Webpage</title>
</head>
<body>
    <h1>Welcome to My Website</h1>
    <p>This is a paragraph of text.</p>
</body>
</html>
```

✅ `: Declares the document as HTML5. ✅ `: The root element. ✅ `: Contains metadata (title, styles, scripts, etc.). ✅ `: Sets the title of the page. ✅ \`\`: Contains visible page content.

---

## 2️⃣ Headings & Paragraphs

### Headings (h1-h6)

```html
<h1>Main Heading</h1>
<h2>Subheading</h2>
<h3>Smaller Heading</h3>
```

✅ Use headings to structure content hierarchically.

### Paragraphs

```html
<p>This is a paragraph.</p>
<p>This is another paragraph with <strong>bold</strong> and <em>italic</em> text.</p>
```

✅ `: Bold text ✅ `: Italic text

---

## 3️⃣ Lists

### Unordered List

```html
<ul>
    <li>Item 1</li>
    <li>Item 2</li>
</ul>
```

### Ordered List

```html
<ol>
    <li>First item</li>
    <li>Second item</li>
</ol>
```

---

## 4️⃣ Links & Images

### Links

```html
<a href="https://www.example.com">Visit Example</a>
```

✅ The `href` attribute defines the destination.

### Images

```html
<img src="image.jpg" alt="Description of Image">
```

✅ The `alt` attribute provides alternative text.

---

## 5️⃣ Tables

```html
<table border="1">
    <th>
        <th>Name</th>
        <th>Age</th>
    </th>
    <tr>
        <td>Alice</td>
        <td>25</td>
    </tr>
</table>
```

✅ `: Table header ✅ `: Table data

---

## 6️⃣ Forms and tags

```html
<form action="submit.php" method="post"> <!-- A form structure -->
    <label for="name">Name:</label> <!-- Text label -->
    <input type="text" id="name" name="name" required> <!-- input of type "text" -->
    <br> <!-- Enter '\n' -->
    <input type="submit" value="Submit"> <!-- input of type "submit" -->

    <!-- You can use placeholders as well -->
    <label>password</label>
    <br>
    <input type="password" placeholder="password" required>

</form>

<!-- inputs have many other types as checkboxes, radio buttons, files, and so on. -->

<!-- Other tags: -->

<button></button>
<label></label>
<select></select> <!-- his tag creates a dropdown menu (also known as a "select box") that allows users to choose from multiple options.

Inside a <select> element, you place <option> elements to define the selectable choices. -->

<label for="cars">Choose a car:</label>
<select id="cars" name="cars">
    <option value="volvo">Volvo</option>
    <option value="bmw">BMW</option>
    <option value="audi">Audi</option>
</select>


<option></option> <!--  This tag is used inside a <select> element to define the choices available in the dropdown menu. -->

<textarea></textarea><!-- This tag creates a multi-line text input field, allowing users to enter larger amounts of text, such as comments or messages. -->

<label for="message">Your message:</label>
<textarea id="message" name="message" rows="4" cols="50">
    Type your message here...
</textarea>


```

✅ `: User input fields ✅ `: Describes inputs

---

## 7️⃣ HTML Semantic Elements

```html
<header>Site Header</header>
<nav>Navigation Menu</nav>
<section>Content Section</section>
<footer>Footer Information</footer>
```

✅ Semantic elements improve accessibility & SEO.

---

## 8️⃣ Embedding Media

### Video

```html
<video controls>
    <source src="video.mp4" type="video/mp4">
</video>
```

### Audio

```html
<audio controls>
    <source src="audio.mp3" type="audio/mpeg">
</audio>
```

---

## 9️⃣ HTML5 Features

✅ **Local Storage**: `localStorage.setItem("key", "value");` ✅ **Canvas**: `<canvas>` for graphics ✅ **Geolocation**: `navigator.geolocation.getCurrentPosition()`

---

🎉 Now you know the basics of HTML! Want a CSS guide next? 😃

## 10. CSS in HTML

### In-line

```html
<p style="font-size: 20px">Hello world!</p>
```

## Internal

```html
<!DOCTYPE html>
<html>
<head>
    <title>My First Webpage</title>
    <style>
        p{
            font-size: 20px;
            font-weight: bold;
            color: red;
        }
    </style>
</head>
<body>
    <p>This is a paragraph of text.</p>
</body>
</html>
```

## 11. HTML-CSS Classes and id

```html
<!DOCTYPE html>
<html>
<head>
    <title>My First Webpage</title>
    <link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
    <p class="title">This is a paragraph of text.</p>
</body>
</html>
```

```css

.title
{
    font-size: 20px;
    background-color: red;
}

```

## 12. HTML-CSS Div

```html
<!DOCTYPE html>
<html>
<head>
    <title>My First Webpage</title>
    <link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
    <div class="division">
        <p>This is a paragraph of text.</p>
        <button type="submit">submit</button>
    </div>
</body>
</html>
```

```css

.division
{
    background-color: red;
}

.division p /* Alters P inside the division. */
{
    color: red;
    transition: 1s; /*How long it takes to apply the hover color change.*/
}

.division p:hover /* Alters P when hovered. */
{
    color: blue;
}

```

## 13. HTML-CSS parent and child divs

```html
<!DOCTYPE html>
<html>
<head>
    <title>My First Webpage</title>
    <link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
    <div class="division">
        <div class="division-inner">
            <p>1</p>
        </div>
        <div class="division-inner">
            <p>2</p>
        </div>
    </div>
</body>
</html>
```

```css

.division
{
    background-color: red;
    width: 500px;
    height: 500px;
    display: flex; /*display flex in the parent will put child divs horizontally.*/
    align-items: flex-end; /*Vertical alignment to the bottom.*/
    justify-content: center; /*horizontal alignment to the center.*/
    justify-content: space-between; /*horizontal alignment, leaves an equal space between child divs.*/
    justify-content: space-around; /*horizontal alignment, leaves an equal space between child divs and the left and right.*/
    flex-wrap: wrap; /*If theres 8 divs for example, each 100px and only a 400px width, then this will take the rest bellow so they can have the desired width.*/
}

.division-inner{
    width: 100px;
    height:100px;
    font-size: 20px;
}

.division-inner:nth-child(1){ /*Edits the first division child.*/
    background: purple;
    flex-basis: 40%; /*takes 40% of the column.*/
}

.division-inner:nth-child(2){ /*Edits the second division child...*/
    background: yellow;
    flex: 1; /*Takes the remaining of the column.*/
}

```