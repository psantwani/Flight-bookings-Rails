var city_list = [];
var airport_list = [];
var city_code_list = [];
var city_picture = [];
function load_data(){
  $.ajax({
        type: "GET",
        dataType: "html",
        url:'https://localhost:300/trending_places/list',
        success: function(data){                    
            $('#favorite_places').html($(data).filter('#trending_places').html());
            stack_card();
        }
    });  

   $.ajax({
        type: "GET",
        dataType: "json",
        url:'https://localhost:3000/city_airports/list',
        success: function(data){                    
            city_airports_list = data;          
            $.each(data, function() {
                city_list.push(this.city);
                airport_list.push(this.airport);
                city_code_list.push(this.city_code);
                city_picture.push(this.picture);
            });            
        }
    });  

   chat_users();
}

