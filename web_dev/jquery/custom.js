var countryOptions = "";
$.getJSON('countries.json', function(data) {
    $.each(data, function(index, country) {
        countryOptions += "<option value = ' " +
            country.code + " ' >" +
            country.name +
            "</option>";
    });
    $('#country').html(countryOptions);
});
