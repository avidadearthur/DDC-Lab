const OFFSET = 32;
const MULT = 32;
const PREFIX = '000000000000';
const LINE_SIZE = 40;

const addNewLine = (str = '') => {
    const offset = LINE_SIZE - str.length;

    let result = str;

    for (let i = 0; i < offset; i++) {
        result += ' ';
    }

    return result;
}

const centerText = (str) => {
    const offset = Math.floor((LINE_SIZE - str.length) / 2);

    let result = '';

    for (let i = 0; i < offset; i++) {
        result += ' ';
    }

    result += titleRaw;

    for (let i = 0; i <= offset; i++) {
        result += ' ';
    }

    return result;
}

const stringToBin = (str) => {
    const result = [];
    for (let i = 0; i < str.length; i++) {
        const char = str[i];
        const position = char.charCodeAt() - OFFSET;
        const address = position * MULT;
        const binaryRaw = address.toString(2);
        const binary = PREFIX.substring(binaryRaw.length) + binaryRaw;

        result.push(binary);
    }

    return result.join('\n');
}

const titleRaw = 'Group T Digital Design Lab 2021';

const title = centerText(titleRaw);
const projectName = addNewLine('Project Name: ASCII Displayer v3');
const vga = addNewLine('VGA controller that displays ASCII');
const chars = addNewLine('characters on a monitor.');
const btn0 = addNewLine('BTN0 - Next character');
const btn1 = addNewLine('BTN1 - Previous Character');
const btn2 = addNewLine('BTN2 - Selects displayed character');
const btn2x2 = addNewLine('BTN2 X2 - Adds a whitespace');
const btn3 = addNewLine('BTN3 - Clears screen');
const sw0 = addNewLine('SW0 - Switches the color');
const newLine = addNewLine();

const components = [title, newLine, projectName, newLine, vga, chars, newLine, btn0, btn1, btn2, btn2x2, btn3, sw0];

const binary = components.map(component => `${stringToBin(component)}`).join('\n');

console.log(binary)
