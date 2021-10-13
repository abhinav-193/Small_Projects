import React, { useState } from "react";
import "./TextForm.css";
import { CopyToClipboard } from "react-copy-to-clipboard";

export default function TextForm(props) {
  const [text, setText] = useState("");
  // const [numWords,setNumWords] = useState(0);
  // const [numChar,setNumChar] = useState(0);
  const [isCopied, setIsCopied] = useState(false);
  const [Bold, setBold] = useState("normal");

  const onCopyText = () => {
    props.showAlert("Copied!", "success");
    setIsCopied(true);
    setTimeout(() => {
      setIsCopied(false);
    }, 1000);
  };

  const handleBoldClick = () => {
    console.log("bold was clicked");
    props.showAlert("Converted to Bold Successfully!", "success");
    if (Bold === "bold") {
      setBold("normal");
    } else {
      setBold("bold");
    }
  };
  const handleUpClick = () => {
    console.log("Upper was clicked");
    let newText = text.toUpperCase();
    setText(newText);
    props.showAlert("Converted to Upper Case Successfully!", "success");
  };

  const handleOnChange = (event) => {
    setText(event.target.value);
    // countWords(text);
    // countCharacters(text);
    // let len = countWords(text)
    // setNumWords(len)
    // console.log("change triggered");
  };

  const handleLowClick = () => {
    if (text.length === 0) {
      props.showAlert("Text Area empty", "danger");
    } else {
      let newText = text.toLowerCase();

      setText(newText);
      props.showAlert("Converted to Lower Case Successfully", "success");
    }
  };

  const handleTrimClick = () => {
    setText(text.trim());
    props.showAlert("Trimmed successfully", "success");
  };

  const handleCapitalizeClick = () => {
    let newText = text;
    const arr = newText.split(" ");

    for (let i = 0; i < arr.length; i++) {
      arr[i] = arr[i].charAt(0).toUpperCase() + arr[i].slice(1);
    }

    newText = arr.join(" ");
    setText(newText);
    props.showAlert("Capitalized Successfully", "success");
  };

  // const resetWord=()=>{
  //     setNumWords(0);
  //     setNumChar(0);
  // }

  // const countWords=(text)=>{

  //     setNumWords(text.split(" ").filter((element)=>{return element.length!==0}).length)

  // }

  // const countCharacters = (text) =>{
  //     setNumChar(text.length)
  // }

  const handleOccurrenceClick = () => {
    let count = 0;
    const key = prompt("Enter the value to find its occurrences: ");
    const arr = text.split(" ");
    for (let i = 0; i < arr.length; i++) {
      if (arr[i] === key) count = count + 1;
    }

    if (count === 0) props.showAlert("No occurrence found", "danger");
    else props.showAlert(`${key} found ${count} times`, "success");
    // alert(key + " occurs "+ count+ " times")
  };

  const ROT13 = (str) => {
    let newStr = "";
    for (let i = 0; i < str.length; i++) {
      let code = str.charCodeAt(i) + 13;
      if (/[A-Z]/.test(str.charAt(i)) && code > 90) {
        code = 64 + (code - 90);
      } else if (/[a-z]/.test(str.charAt(i)) && code > 122) {
        code = 96 + (code - 122);
      }
      newStr += String.fromCharCode(code);
    }
    return newStr;
  };
  const handleROT13Click = () => {
    let newText = text;
    const arr = newText.split(" ");

    for (let i = 0; i < arr.length; i++) {
      arr[i] = ROT13(arr[i]);
    }

    newText = arr.join(" ");
    setText(newText);
    props.showAlert("ROT13 Successfully", "success");
  };

  const colorFunc = (event) => {
    props.colorPicker(event.target.value);
  };
  return (
    <div style={{ color: props.mode === "light" ? "black" : "white" }}>
      <div className={`mb-3 container`}>
        <h1 className="textform-heading">{props.heading}</h1>
        <div className="mb-3">
          {/* <label for="my-textarea" className="form-label my-3">{props.heading}</label> */}

          <textarea
            placeholder="Enter your text here"
            className="form-control  input-textarea"
            style={
              ({
                backgroundColor: props.mode === "light" ? "white" : "lightgray",
              },
              { fontWeight: Bold })
            }
            id="my-textarea"
            rows="10"
            value={text}
            onChange={handleOnChange}
          ></textarea>

          <div className="copy-and-dark">
            <CopyToClipboard text={text} onCopy={onCopyText}>
              <div className="copy-area">
                <button className="btn btn-dark my-3">Copy</button>
              </div>
            </CopyToClipboard>

            <div className={`form-check form-switch dark-mode-toggler `}>
              <input
                className="form-check-input"
                onClick={props.toggleMode}
                type="checkbox"
                id="flexSwitchCheckDefault"
              />
              <label
                className={`form-check-label text-${
                  props.mode === "light" ? "dark" : "light"
                }`}
                htmlFor="flexSwitchCheckDefault"
              >
                Enable Dark Mode
              </label>
            </div>

            <div className="color-picker-container">
              <input
                title="Any color picked from here will be applied if you press the dark mode switch"
                type="color"
                name="colorchooser"
                onChange={colorFunc}
              />
            </div>
            <div className="bold">
              <button
                disabled={text.length === 0}
                onClick={handleBoldClick}
                className="btn btn-light"
              >
                B
              </button>
            </div>
          </div>
        </div>
      </div>

      <div className="container">
        <p>
          {
            text.split(" ").filter((element) => {
              return element.length !== 0;
            }).length
          }{" "}
          Words, {text.length} Characters
        </p>
        <div className="text-btn-container">
          <button
            disabled={text.length === 0}
            onClick={handleUpClick}
            className="btn btn-primary text-buttons "
          >
            Convert to Upper Case
          </button>
          <button
            disabled={text.length === 0}
            onClick={handleLowClick}
            className="btn btn-primary text-buttons"
          >
            Convert to Lower Case
          </button>
          <button
            disabled={text.length === 0}
            onClick={handleTrimClick}
            className="btn btn-primary text-buttons"
          >
            Remove Trailing spaces
          </button>
          <button
            disabled={text.length === 0}
            onClick={handleCapitalizeClick}
            className="btn btn-primary text-buttons"
          >
            Capitalize String
          </button>
          <button
            disabled={text.length === 0}
            onClick={handleOccurrenceClick}
            class="btn btn-primary text-buttons"
          >
            Find Occurrence
          </button>
          <button
            disabled={text.length === 0}
            onClick={handleROT13Click}
            class="btn btn-primary text-buttons"
          >
            Perform ROT13
          </button>
        </div>
      </div>

      <div className="container">
        <div className={`text-preview ${props.mode}`}>
          <h2>Text Preview</h2>
          <p style={{ fontWeight: Bold }}>
            {text === "" ? "(Enter some text in the textbox to preview)" : text}
          </p>
        </div>
      </div>
    </div>
  );
}
