var city_list = [];
var airport_list = [];
var city_code_list = [];
var city_picture = [];
function load_data(){
  $.ajax({
        type: "GET",
        dataType: "html",
        url:'/trending_places/list',
        success: function(data){                    
            $('#favorite_places').html($(data).filter('#trending_places').html());
            stack_card();
        }
    });  

   $.ajax({
        type: "GET",
        dataType: "json",
        url:'/city_airports/list',
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

