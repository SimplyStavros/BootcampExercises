// Question 1: {1,2,3,4}
// Question 2: ref
//Question 3:
    // 0: [1,2,3]=> true
    // 1: [1,2,3]=> false

//hasDuplicate accepts an array and returns true or false if there are duplicates
const hasDuplicate = arr => new Set(arr).size !== arr.length;

//vowelCount accepts a string an returns a map where keys are numbers and values are the count of the vowels

const isVowel = char => 'aeiou'.includes(char);

function vowelCount(str) {
    const vMap = new Map();
    for(let letter of str){
        let lowCase = letter.toLowerCase()
        if(isVowel(lowCase)) {
            if(vMap.has(lowCase)){
                vMap.set(lowCase, vMap.get(lowCase) + 1);
            } else {
                vMap.set(lowCase, 1);
            }
        }
    }
    return vMap;
}