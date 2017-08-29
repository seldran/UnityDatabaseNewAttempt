
$(this.document).ready(function()
{
    GetData();
    setInterval(GetData,2000);


});

function GetData()
{
    $.ajax(
        {
            url: 'http://highscore.lt/PHP/GetHighscoreData',
            type: "GET",
            dataType: "json",
            success: function(response)
            {
                FillContent(response);
            },
            timeout:2000,
            error: function(ts) {
                alert(ts.responseText);
            }
        }
    );
}

function FillContent(response)
{

    for(i = 0; i < response.length;i++)
    {
        if(document.getElementById(response[i][0]) == null) {
            $('#ContentHolder').append("<div id=" + response[i][0] + " class=sheet onclick='showHide(this)'> " + "<div class=name>" + response[i][1] + "</div>"
                + "</div>");
            $('#' + response[i][0]).append('<div class="content hide">' + 'The player survived for ' + response[i][3] + ' seconds and scored ' + response[i][2] + ' points.' + '</div>');
        }
    }
    var doc = document.getElementsByClassName('hide');
    for(i = 0; i < doc.length;i++)
    {
            slideContentUp(doc[i], 0, 0, false);
    }
}

function hideAllOther(sender)
{
    var mainElements = document.getElementsByClassName('sheet');

    for(var i = 0; i < mainElements.length; i++)
    {
        if(mainElements[i] != sender) {
            var spoilerElements = mainElements[i].getElementsByClassName('content');
        }

        for(var j = 0; j < spoilerElements.length; j++)
        {
            spoilerElements[j].className = 'content hide';
            slideContentUp(spoilerElements[j],350,300,false);
        }
    }
}

function showHide(sender) {
    var e = sender.getElementsByClassName('content');

    for(var i = 0; i < e.length; i++)
    {
        if(e[i].className == 'content hide') {
            e[i].className = 'content show';
            slideContentDown(e[i], 350, 300);
        }
        else {

            slideContentUp(e[i],350,300,false);
            e[i].className = 'content hide';
        }
    }
    hideAllOther(sender);
}


function slideContentUp(hash, delay, speed, sibling) {
    if (sibling)
        $(hash).delay(delay).siblings().slideUp(speed, "swing");
    else
        $(hash).delay(delay).slideUp(speed, "swing");
}

function slideContentDown(hash, delay, speed) {
    $(hash).delay(delay).slideDown(speed, "swing");
}
