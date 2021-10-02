// Selecting the elements to perform operation 
const user_input = document.querySelector('.input');
const user_output = document.querySelector('.operation .value');
const user_result = document.querySelector('.result .value');


// Need some constant variables and data to perform operation 
const OPERATORS = ["+", "-", "*", "/"];
const POWER = "POWER(",
    FACTORIAL = "FACTORIAL";
let ans = 0;
let data = {
    operation: [],
    formula: []
}


// All the calculator buttons to select from 
let buttons = [{
        name: "rad",
        symbol: "Rad",
        formula: false,
        type: "key"
    },
    {
        name: "deg",
        symbol: "Deg",
        formula: false,
        type: "key"
    },
    {
        name: "square-root",
        symbol: "√",
        formula: "Math.sqrt",
        type: "math_function"
    },
    {
        name: "square",
        symbol: "x²",
        formula: POWER,
        type: "math_function"
    },
    {
        name: "open-parenthesis",
        symbol: "(",
        formula: "(",
        type: "number"
    },
    {
        name: "close-parenthesis",
        symbol: ")",
        formula: ")",
        type: "number"
    },
    {
        name: "clear",
        symbol: "C",
        formula: false,
        type: "key"
    },
    {
        name: "delete",
        symbol: "<",
        formula: false,
        type: "key"
    },
    {
        name: "pi",
        symbol: "π",
        formula: "Math.PI",
        type: "number"
    },
    {
        name: "cos",
        symbol: "cos",
        formula: "trigo(Math.cos,",
        type: "trigo_function"
    }, {
        name: "sin",
        symbol: "sin",
        formula: "trigo(Math.sin,",
        type: "trigo_function"
    }, {
        name: "tan",
        symbol: "tan",
        formula: "trigo(Math.tan,",
        type: "trigo_function"
    }, {
        name: "7",
        symbol: 7,
        formula: 7,
        type: "number"
    }, {
        name: "8",
        symbol: 8,
        formula: 8,
        type: "number"
    }, {
        name: "9",
        symbol: 9,
        formula: 9,
        type: "number"
    },
    {
        name: "division",
        symbol: "÷",
        formula: "/",
        type: "operator"
    },
    {
        name: "e",
        symbol: "e",
        formula: "Math.E",
        type: "number"
    },
    {
        name: "acos",
        symbol: "acos",
        formula: "inv_trigo(Math.acos,",
        type: "trigo_function"
    }, {
        name: "asin",
        symbol: "asin",
        formula: "inv_trigo(Math.asin,",
        type: "trigo_function"
    }, {
        name: "atan",
        symbol: "atan",
        formula: "inv_trigo(Math.atan,",
        type: "trigo_function"
    },
    {
        name: "4",
        symbol: 4,
        formula: 4,
        type: "number"
    }, {
        name: "5",
        symbol: 5,
        formula: 5,
        type: "number"
    }, {
        name: "6",
        symbol: 6,
        formula: 6,
        type: "number"
    }, {
        name: "multiplication",
        symbol: "×",
        formula: "*",
        type: "operator"
    }, {
        name: "factorial",
        symbol: "×!",
        formula: FACTORIAL,
        type: "math_function"
    }, {
        name: "exp",
        symbol: "exp",
        formula: "Math.exp",
        type: "math_function"
    }, {
        name: "ln",
        symbol: "ln",
        formula: "Math.log",
        type: "math_function"
    }, {
        name: "log",
        symbol: "log",
        formula: "Math.log10",
        type: "math_function"
    }, {
        name: "1",
        symbol: 1,
        formula: 1,
        type: "number"
    }, {
        name: "2",
        symbol: 2,
        formula: 2,
        type: "number"
    }, {
        name: "3",
        symbol: 3,
        formula: 3,
        type: "number"
    }, {
        name: "subtraction",
        symbol: "–",
        formula: "-",
        type: "operator"
    }, {
        name: "power",
        symbol: "x<span>y</span>",
        formula: POWER,
        type: "math_function"
    }, {
        name: "ANS",
        symbol: "ANS",
        formula: "ans",
        type: "number"
    }, {
        name: "percent",
        symbol: "%",
        formula: "/100",
        type: "number"
    }, {
        name: "comma",
        symbol: ".",
        formula: ".",
        type: "number"
    }, {
        name: "0",
        symbol: 0,
        formula: 0,
        type: "number"
    }, {
        name: "calculate",
        symbol: "=",
        formula: "=",
        type: "calculate"
    }, {
        name: "addition",
        symbol: "+",
        formula: "+",
        type: "operator"
    }
];


// -----------------------------------Calculator button elements and function starts------------------------------

// Creating calculator buttons 
function createCalculatorButtons() {
    const buttons_in_a_row = 8;
    let added_btns = 0;

    buttons.forEach(button => {
        if (added_btns % buttons_in_a_row == 0) {
            user_input.innerHTML += `<div class="row"></div>`;
        }

        const row = document.querySelector(".row:last-child");
        row.innerHTML += `<button id = "${button.name}">
                        ${button.symbol}
                        <button>`;
        added_btns++;
    })
}
// Calling calculate button function to add buttons
createCalculatorButtons();

// Checking and changing the state of radian and degree buttons
let RADIAN = true;
const rad_btn = document.getElementById("rad");
const deg_btn = document.getElementById("deg");
rad_btn.classList.add("active-angle");

// Adding function toggle which will toggle between the buttons on click
function angleToggler() {
    rad_btn.classList.toggle("active-angle");
    deg_btn.classList.toggle("active-angle");
}

// Listening to click function on buttons 
user_input.addEventListener("click", event => {
    const target_btn = event.target;

    buttons.forEach(button => {
        if (button.name == target_btn.id)
            calculator(button);
    })
})

// -----------------------------------Calculator button elements and function ends------------------------------


// -----------------------------------Creating different calculating functions for different input starts ------------------------------------------------


// This function will solve factorial 
function factorial_solve(formula, FACTORIAL_SEARCH_RESULT) {
    let numbers = [];
    let factorial_sequesnce = 0;
    FACTORIAL_SEARCH_RESULT.forEach(factorial_index => {
        let number = [];
        let next_index = factorial_index + 1;
        let next_input = formula[next_index];
        if (next_input == FACTORIAL) {
            factorial_sequesnce += 1;
            return;
        }
        // If there is a factorial sequence we need to get the index of the very first factorial
        let first_factorial_index = factorial_index - factorial_sequesnce;

        // Then to get the number right before it 
        let previous_index = first_factorial_index - 1;

        let parenthesis_count = 0;
        while (previous_index >= 0) {
            if (formula[previous_index] == "(") parenthesis_count--;
            if (formula[previous_index] == ")") parenthesis_count++;

            let is_operator = false;
            OPERATORS.forEach(OPERATOR => {
                if (formula[previous_index] == OPERATOR) is_operator = true;
            })

            if (is_operator && parenthesis_count == 0) break;

            number.unshift(formula[previous_index]);
            previous_index--;
        }

        let number_str = number.join('');
        const factorial = "factorial(",
            close_paranthesis = ")";
        let times = factorial_sequesnce + 1;

        let toReplace = number_str + FACTORIAL.repeat(times);
        let replacement = factorial.repeat(times) + number_str + close_paranthesis.repeat(times);

        numbers.push({
            toReplace: toReplace,
            replacement: replacement
        })

        // Reset factorial sequence
        factorial_sequesnce = 0;
    })

    return numbers;
}
// Factorial function ends


// Power base getter
function power_solve(formula, POWER_SEARCH_RESULT) {
    // Save all the bases in the same array
    let powers_bases = [];

    POWER_SEARCH_RESULT.forEach(power_index => {
        let base = [];
        let parenthesis_count = 0;
        let previous_index = power_index - 1;

        while (previous_index >= 0) {
            if (formula[previous_index] == "(") parenthesis_count--;
            if (formula[previous_index] == ")") parenthesis_count++;

            let is_operator = false;
            OPERATORS.forEach(OPERATOR => {
                if (formula[previous_index] == OPERATOR) is_operator = true;
            })

            let is_power = formula[previous_index] == POWER;
            if ((is_operator && parenthesis_count == 0) || is_power) break;

            base.unshift(formula[previous_index]);
            previous_index--;
        }

        powers_bases.push(base.join(''));
    })

    return powers_bases;
}
// Power base function ends

// Search Array for the desired keyword
function search(array, keyword) {
    let search_result = [];
    array.forEach((element, index) => {
        if (element == keyword) search_result.push(index);
    })

    return search_result;
}

// Update operation and output function
function updateOutputOperation(operation) {
    user_output.innerHTML = operation;
}

function updateOutputResult(result) {
    user_result.innerHTML = result;
}

// Factorial Functions starts
function factorial(number) {
    
    if (number % 1 != 0) return gamma(number + 1);
    if (number === 0 || number === 1) return 1;
    let result = 1;
    for (let i = 1; i <= number; i++) {
        result *= i;
        if (result === Infinity) return Infinity
    }
    return result;
}
// Factorial function ends.


// Gamma function
function gamma(n) { // accurate to about 15 decimal places
    //some magic constants 
    var g = 7, // g represents the precision desired, p is the values of p[i] to plug into Lanczos' formula
        p = [0.99999999999980993, 676.5203681218851, -1259.1392167224028, 771.32342877765313, -176.61502916214059, 12.507343278686905, -0.13857109526572012, 9.9843695780195716e-6, 1.5056327351493116e-7];
    if (n < 0.5) {
        return Math.PI / Math.sin(n * Math.PI) / gamma(1 - n);
    } else {
        n--;
        var x = p[0];
        for (var i = 1; i < g + 2; i++) {
            x += p[i] / (n + i);
        }
        var t = n + g + 0.5;
        return Math.sqrt(2 * Math.PI) * Math.pow(t, (n + 0.5)) * Math.exp(-t) * x;
    }
}


// Trigo functions 
function trigo(callback, angle) {
    if (!RADIAN) {
        angle = angle * Math.PI / 180;
    }
    return callback(angle);
}


// Inverse trigo functions
function inv_trigo(callback, value) {
    let angle = callback(value);
    if (!RADIAN) {
        angle = angle * 180 / Math.PI;
    }
    return angle;
}



// -----------------------------------Creating different calculating functions for different input ends ----------------------------------------------


// Calculator function
function calculator(button) {

    // We'll directly push the operators and numbers in the operation and formula array
    if (button.type == "operator") {
        data.operation.push(button.symbol);
        data.formula.push(button.formula);

    } else if (button.type == "number") {
        data.operation.push(button.symbol);
        data.formula.push(button.formula);

    } else if (button.type == "trigo_function") {
        data.operation.push(button.symbol + "(");
        data.formula.push(button.formula);

    }

    // For math functions we have to change the symbol
    else if (button.type == "math_function") {

        let symbol, formula;
        // For factorial and stuff we have error in how it appears so we gonna change that
        if (button.name == 'factorial') {
            symbol = "!";
            formula = button.formula;
            data.operation.push(symbol);
            data.formula.push(formula);

        } else if (button.name == 'power') {
            symbol = "^(";
            formula = button.formula;
            data.operation.push(symbol);
            data.formula.push(formula);

        } else if (button.name == 'square') {
            symbol = "^(";
            formula = button.formula;
            data.operation.push(symbol);
            data.formula.push(formula);

        } else {
            symbol = button.symbol + "(";
            formula = button.formula + "(";
            data.operation.push(symbol);
            data.formula.push(formula);
        }

    } else if (button.type == "key") {

        // If it is clear or deleted we have to deleted and pop the elements respectively
        if (button.name == "clear") {
            data.operation = [];
            data.formula = [];
            updateOutputResult(0);

        } else if (button.name == "delete") {
            data.operation.pop();
            data.formula.pop();

        } else if (button.name == "rad") {
            RADIAN = true;
            angleToggler();

        } else if (button.name == "deg") {
            RADIAN = false;
            angleToggler();
        }


    } else if (button.type == "calculate") {
        formula_str = data.formula.join('');

        // Fix power and factorial issue
        // Search for factorial and power functions
        let POWER_SEARCH_RESULT = search(data.formula, POWER);
        let FACTORIAL_SEARCH_RESULT = search(data.formula, FACTORIAL);

        // Get power base and replace those bases with right formula
        const BASES = power_solve(data.formula, POWER_SEARCH_RESULT);
        BASES.forEach(base => {
            let toReplace = base + POWER;
            let replacement = "Math.pow(" + base + " , ";

            formula_str = formula_str.replace(toReplace, replacement);
        })

        // Get factorial number and replace with right formula
        const NUMBERS = factorial_solve(data.formula, FACTORIAL_SEARCH_RESULT);
        NUMBERS.forEach(factorial => {
            formula_str = formula_str.replace(factorial.toReplace, factorial.replacement)
        })


        // Calculate and if it is a error show error
        let result;
        try {
            result = eval(formula_str);
        } catch (error) {
            if (error instanceof SyntaxError) {
                result = "Syntax Error!";
                updateOutputResult(result);
                return;
            }
        }

        // Save result for later use and update the result
        ans = result;
        data.operation[result];
        data.formula = [result];
        updateOutputResult(result);
        return;
    }
    updateOutputOperation(data.operation.join(''));
}
