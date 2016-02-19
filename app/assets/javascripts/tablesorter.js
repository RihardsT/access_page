$(function() {
  // call the tablesorter plugin and apply the uitheme widget
  $("table").tablesorter({
    // this will apply the bootstrap theme if "uitheme" widget is included
    // the widgetOptions.uitheme is no longer required to be set
    theme : "bootstrap",

    widthFixed: true,

    headerTemplate : "{content} {icon}", // new in v2.7. Needed to add the bootstrap icon!

    // widget code contained in the jquery.tablesorter.widgets.js file
    // use the zebra stripe widget if you plan on hiding any rows (filter widget)
    // widgets : [ "uitheme", "filter", "zebra" ],
    widgets : [ "uitheme", "zebra" ],

    // widgetOptions : {
    //   // using the default zebra striping class name, so it actually isn't included in the theme variable above
    //   // this is ONLY needed for bootstrap theming if you are using the filter widget, because rows are hidden
    //   zebra : ["even", "odd"],
    //
    //   // reset filters button
    //   filter_reset : ".reset",
    //
    //   // extra css class name (string or array) added to the filter element (input or select)
    //   filter_cssFilter: "form-control",
    //
    //   // set the uitheme widget to use the bootstrap theme class names
    //   // this is no longer required, if theme is set
    //   // ,uitheme : "bootstrap"
    //
    // }
  })
  .tablesorterPager({

    // target the pager markup - see the HTML block below
    container: $(".ts-pager"),

    // target the pager page select dropdown - choose a page
    cssGoto  : ".pagenum",

    // remove rows from the table to speed up the sort of large tables.
    // setting this to false, only hides the non-visible rows; needed if you plan to add/remove rows with the pager enabled.
    removeRows: false,

    // output string - default is '{page}/{totalPages}';
    // possible variables: {page}, {totalPages}, {filteredPages}, {startRow}, {endRow}, {filteredRows} and {totalRows}
    output: "{startRow} - {endRow} / {filteredRows} ({totalRows})"

  });

});
