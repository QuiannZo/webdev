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
    <tr>
        <th>Name</th>
        <th>Age</th>
    </tr>
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

<!-- Other tags: -->

<button></button>
<label></label>
<select></select>
<option></option>
<textarea></textarea>
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
