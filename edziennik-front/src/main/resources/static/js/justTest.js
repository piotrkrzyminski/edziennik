function openModal(meeting)
{
    console.log('Ohooo ' + meeting);

    debugger;
    /*$.ajax
    ({
        url: "/meeting/" + id, //Powinismy przekazac
        success: function (data) {
            $("#carViewModal").modal("show");
        }
    });*/
    $('#meetingModalSubject').text(meeting.Subject);
    $('#meetingViewModal').modal("show");
    console.log('ttttttt');

}