var survey_changepage = (previous, next) => {
    // We could use some function from jQuery which is too more simple. Maybe I will do it later.  
    x1 = document.getElementById(previous).style.display = "none";
    x2 = document.getElementById(next).style.display = "block";

    /* Unnecessary verifications removed... Using a short and more efficient code.
    x1 = document.getElementById(previous);
    x2 = document.getElementById(next);

    if (x1.style.display == "block") {        
        x1.style.display = "none";
        x2.style.display = "block";
    }
    */
}