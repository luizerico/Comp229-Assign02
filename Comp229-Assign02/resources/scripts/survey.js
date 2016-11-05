var survey_changepage = (previous, next) => {
    // Changed to a better approach using classes CSS  
    document.getElementById(previous).className = "form_page_inactive"
    document.getElementById(next).className = "form_page_active";

    /* Unnecessary verifications removed... Using a short and more efficient code.
    x1 = document.getElementById(previous);
    x2 = document.getElementById(next);

    if (x1.style.display == "block") {        
        x1.style.display = "none";
        x2.style.display = "block";
    }
    */
}

/* 
 * CHange the style properties directly using javascript instead to use a CSS classname;
 * Again, there are ways more commons using the jQuery library to change this...
 */
var survey_changeWorkedBefore = (e, target) => {
    console.log(e);
    if (e.value == "Yes") {
        document.getElementById(target).style.display = "block";
    } else {
        document.getElementById(target).style.display = "none";
    }
}

/*
 * Function based on code extracted from http://stackoverflow.com/questions/17651207/mask-us-phone-number-string-with-javascript
 * This function uses a regular expression to add the characters while the numbers are entered. 
 * This function uses the \D instead than [^0-9] to refer to all but numbers. 
 * jQuery has some components to do this but I think this code is more simple e beautyful. 
 * I will do some tests to see the best approach (OnBlur, OnKeyDown, etc) to call the function.
 */
var phone_mask = (e) => {
    /* console.log(e.value ); */
    var x = e.value.replace(/\D/g, '').match(/(\d{0,3})(\d{0,3})(\d{0,4})/);
    e.value = !x[2] ? x[1] : '(' + x[1] + ') ' + x[2] + (x[3] ? '-' + x[3] : '');
};