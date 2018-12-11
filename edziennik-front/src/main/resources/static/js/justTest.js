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