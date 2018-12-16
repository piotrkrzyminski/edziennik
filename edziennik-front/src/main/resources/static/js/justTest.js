function openMeetingDetails(day, id)
{
    console.log('Ohooo ' + id);
    console.log('Ohooo ' + day);
    //'/e-dziennik/meetings/details?date=' + ${#dates.format(weekDates[j-1], 'dd.MM.yyyy')} + '&' + 'id=' + ${meetings[i-1][j-1].id}
    var url = "/e-dziennik/meetings/details?date=" + day + "&" + "id=" + id;
    console.log(url);
    loadComponentByUrl(url);
    console.log('ttttttt');
}

function openPresence(day, id)
{
    console.log('Ohooo ' + id);
    console.log('Ohooo ' + day);
    //'/e-dziennik/meetings/details?date=' + ${#dates.format(weekDates[j-1], 'dd.MM.yyyy')} + '&' + 'id=' + ${meetings[i-1][j-1].id}
    var url = "/e-dziennik/meetings/presence?date=" + day + "&" + "id=" + id;
    console.log(url);
    loadInnerComponentByUrl(url);
    console.log('ttttttt');
}

function openAddGrade(day, id)
{
    console.log('Ohooo ' + id);
    console.log('Ohooo ' + day);
    //'/e-dziennik/meetings/details?date=' + ${#dates.format(weekDates[j-1], 'dd.MM.yyyy')} + '&' + 'id=' + ${meetings[i-1][j-1].id}
    var url = "/e-dziennik/grades/add?date=" + day + "&" + "id=" + id;
    console.log(url);
    loadInnerComponentByUrl(url);
    console.log('ttttttt');
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


$('input.cb-value').prop("checked", true);
$('.cb-value').click(function() {
    console.log('Im here');
    var mainParent = $(this).parent('.toggle-btn');
    if($(mainParent).find('input.cb-value').is(':checked')) {
        $(mainParent).addClass('active');
    } else {
        $(mainParent).removeClass('active');
    }

});

$(".cb-value").click(function() {
    console.log('Im here2');
    var mainParent = $(this).parent('.toggle-btn');
    if($(mainParent).find('input.cb-value').is(':checked')) {
        $(mainParent).addClass('active');
    } else {
        $(mainParent).removeClass('active');
    }

});