function openPresents(day, id)
{
    console.log('Ohooo ' + id);
    console.log('Ohooo ' + day);
    //'/e-dziennik/meetings/details?date=' + ${#dates.format(weekDates[j-1], 'dd.MM.yyyy')} + '&' + 'id=' + ${meetings[i-1][j-1].id}
    var url = "/e-dziennik/meetings/details?date=" + day + "&" + "id=" + id;
    console.log(url);
    loadComponentByUrl(url);
    console.log('ttttttt');
}

function returnToMeetings()
{
    var url = "/e-dziennik/meetings";
    loadComponentByUrl(url);
}