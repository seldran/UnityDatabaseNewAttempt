
$(this.document).ready(function()
{
        $.ajax(
            {
                url: 'http://highscore.lt/PHP/GetHighscoreData.php',
                type: "GET",
                dataType: "json",
                success: function(response)
                {
                    for(i = 0; i < response.length;i++)
                    {
                        $('#show').append(response[i][0] + " " + response[i][1] +"<br>");
                    }

                    console.log(response.length);
                    console.log(response[0][0]);
                    console.log(response[1]);

                },
                error: function(ts) {
                    alert(ts.responseText);
                }

            }
        );
});