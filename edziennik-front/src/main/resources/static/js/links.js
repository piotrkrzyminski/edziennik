// Function for links
$('.section-link').click(function (event) {
    event.preventDefault();
    var url = $(this).attr('href');
    loadComponentByUrl(url);
});