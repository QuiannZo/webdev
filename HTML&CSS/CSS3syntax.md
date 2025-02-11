**CSS Syntax Guide**

## 1. Basic Syntax
CSS consists of selectors and declarations:
```css
selector {
  property: value;
}
```
Example:
```css
h1 {
  color: blue;
  font-size: 20px;
}
```

## 2. Selectors
- **Element Selector:** `h1 {}`
- **Class Selector:** `.classname {}`
- **ID Selector:** `#idname {}`
- **Group Selector:** `h1, p {}`
- **Universal Selector:** `* {}`
- **Attribute Selector:** `[type="text"] {}`

## 3. Colors
```css
color: red; /* Named */
color: #ff0000; /* Hex */
color: rgb(255, 0, 0); /* RGB */
color: rgba(255, 0, 0, 0.5); /* Transparent */
```

## 4. Fonts
```css
font-family: Arial, sans-serif;
font-size: 16px;
font-weight: bold;
font-style: italic;
text-align: center;
```

## 5. Box Model
```css
width: 100px;
height: 100px;
padding: 10px;
border: 1px solid black;
margin: 10px;
```

## 6. Positioning
```css
position: static | relative | absolute | fixed | sticky;
top: 10px;
left: 20px;
```

## 7. Flexbox
```css
display: flex;
justify-content: center; /* Align horizontally */
align-items: center; /* Align vertically */
flex-direction: row | column;
```

## 8. Grid
```css
display: grid;
grid-template-columns: repeat(3, 1fr);
grid-gap: 10px;
```

## 9. Backgrounds & Borders
```css
background-color: lightgray;
background-image: url('image.jpg');
background-size: cover;
border: 2px dashed red;
```

## 10. Transitions & Animations
```css
transition: all 0.3s ease-in-out;

@keyframes move {
  from { transform: translateX(0); }
  to { transform: translateX(100px); }
}
```

## 11. Media Queries (Responsive Design)
```css
@media (max-width: 600px) {
  body { background-color: lightblue; }
}
```

