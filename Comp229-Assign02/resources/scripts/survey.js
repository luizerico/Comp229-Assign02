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