document.addEventListener("turbolinks:load", function() {
  var searchBox = $('#search');
  searchBox.autocomplete({
    source: searchBox.data('autocomplete-source')
  });
});
