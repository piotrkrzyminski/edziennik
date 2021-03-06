function openMeetingDetails(day, id)
{
    var url = "/e-dziennik/meetings/details?date=" + day + "&" + "id=" + id;
    console.log(url);
    loadComponentByUrl(url);
}

function openPresence(day, id)
{
    var url = "/e-dziennik/meetings/presence?date=" + day + "&" + "id=" + id;
    console.log(url);
    loadInnerComponentByUrl(url);
}

function openAddGrade(day, id)
{
    var url = "/e-dziennik/grades/add?date=" + day + "&" + "id=" + id;
    console.log(url);
    loadInnerComponentByUrl(url);
}

function returnToMeetings()
{
    var url = "/e-dziennik/meetings";
    loadComponentByUrl(url);
}

function nextWeek(date)
{
    console.log(date);
    var dateResult = new Date(date);
    console.log(dateResult);
    dateResult.setDate(dateResult.getDate() + 7);
    console.log(dateResult.toDateString());
    var url = "/e-dziennik/meetings?date="+ dateResult.getDate() + "-" + (dateResult.getMonth()+1) + "-" + dateResult.getFullYear();
    console.log(url);
    loadComponentByUrl(url);
}

function prevWeek(date)
{
    var dateResult = new Date(date);
    dateResult.setDate(dateResult.getDate() - 7);
    console.log(dateResult.toDateString());
    var url = "/e-dziennik/meetings?date="+ dateResult.getDate() + "-" + (dateResult.getMonth()+1) + "-" + dateResult.getFullYear();
    loadComponentByUrl(url);
}

function myFunction(id) {
    console.log(id);
    var ele = 'popup'+id;
    console.log(ele);
    var popup = document.getElementById(ele);
    console.log(popup);
    popup.classList.toggle("show");
}

function processSelectedOptionsForGrades() {
    var classSelect = document.getElementById("class-select");
    var subjectSelect = document.getElementById("subject-select");

    var location = "/e-dziennik/grades/edit?";
    if(subjectSelect == null) {
        location += "classId=" + classSelect.value;
    } else {
        location += "classId=" + classSelect.value + "&subjectId=" + subjectSelect.value;
    }

    loadComponentByUrl(location);
}