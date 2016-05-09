$.getJSON('/gantt').then(function(data){
    console.log(data);
    $(".gantt").gantt({
        source: data,
        scale: "days",
        dow: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
        minScale: "weeks",
        maxScale: "months",
        navigate: "scroll",
        itemsPerPage: 100,
    });
});

