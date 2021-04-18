<img src="./assets/url (2).svg" width="110px">

# URL-Minifier

![Read the Docs](https://img.shields.io/readthedocs/node.svg) [![Ask Me Anything !](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](https://GitHub.com/Naereen/ama) [![made-for-VSCode](https://img.shields.io/badge/Made%20for-VSCode-1f425f.svg)](https://code.visualstudio.com/) [![GitHub issues](https://img.shields.io/github/issues/akashchouhan16/URL-Minifier.svg)](https://github.com/akashchouhan16/URL-Minifier/issues)
[![GitHub forks](https://img.shields.io/github/forks/akashchouhan16/URL-Minifier.svg?style=social)](https://github.com/akashchouhan16/URL-Minifier/network) [![GitHub stars](https://img.shields.io/github/stars/akashchouhan16/URL-Minifier.svg?style=social)](https://github.com/akashchouhan16/URL-Minifier/stargazers) ![GitHub last commit](https://img.shields.io/github/last-commit/akashchouhan16/URL-Minifier.svg)

A **Node** application to minify the URL links and save the minified urls to the **MongoDB** Database.

### **Dependencies**

- **shortid**
- **express**
- **mongoose**
- **ejs**
- **dotenv**

---

**Note :**
The **minified url** and the number of **visits** is fetched from the database, hence [Mongodb](https://www.mongodb.com/ "Visit MongoDB") must be installed onto the system and configured in order to run this application.

---

## How To Run the application? <code><img src="./assets/url (2).svg" width="20px" style="margin-left : 3px"></code>

- **Clone this repo**
- **Install Dependencies**
  ```Node
    npm install
  ```
- **Create a `.env` file and save the connection URL for DB**
  ```
  MONGO_URI=<DB Connection URI>
  ```
- **Run the development server**
  ```Node
    npm run dev
  ```
- **Visit **http://localhost:5000** on your browser.**

## Preview

![application preview](./assets/applicationPreview.gif)

## [Application Info](https://github.com/akashchouhan16/Url-Shortener#readme "URL-Minifier")

### Version

[1.0.0](https://github.com/akashchouhan16/Url-Shortener#readme "Application version")

### License

[MIT License](./LICENSE "View License")
