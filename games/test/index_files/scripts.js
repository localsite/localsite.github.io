(function ($) {
    'use strict';
    $(document).ready(function () {
        $(".list-view-wrapper").scrollbar();
        $('[data-pages="search"]').search({
            searchField: '#overlay-search',
            closeButton: '.overlay-close',
            suggestions: '#overlay-suggestions',
            brand: '.brand',
            onSearchSubmit: function (searchString) {
                console.log("Search for: " + searchString);
            },
            onKeyEnter: function (searchString) {
                console.log("Live search for: " + searchString);
                var searchField = $('#overlay-search');
                var searchResults = $('.search-results');
                clearTimeout($.data(this, 'timer'));
                searchResults.fadeOut("fast");
                var wait = setTimeout(function () {
                    searchResults.find('.result-name').each(function () {
                        if (searchField.val().length != 0) {
                            $(this).html(searchField.val());
                            searchResults.fadeIn("fast");
                        }
                    });
                }, 500);
                $(this).data('timer', wait);
            }
        })
    });
    $('.panel-collapse label').on('click', function (e) {
        e.stopPropagation();
    });
    //    feather.replace({
    //        'width': 16,
    //        'height': 16
    //    })
})(window.jQuery);