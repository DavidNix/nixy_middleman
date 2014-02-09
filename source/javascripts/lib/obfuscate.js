MiddlemanSite.MailtoListener = function (selector) {
	var $el = $(selector);
  var prefix = "mailto:";
  var name = "test";
  var domain = "@example.com";
  var href = prefix + name + domain + href;

  $el.on("click", function () {
    $el.attr("href", href);
    setTimeout(function () {
      $el.attr("href", "#");
    }, 25);
  });
};