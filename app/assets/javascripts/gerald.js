var app = {

  onReady: function() {
  $("h1").on("click", app.changeText);
  },

  changeText: function() {
    var h1Text = $(this).text()
    $.ajax({
      url: "/reverse",
      type: "post",
      dataType: 'json',
      data: { h1Text: h1Text },
      context: this
    }).done(function(data) {
      $(this).text(data.h1Text)
    });
  }

}

$(document).ready(app.onReady);


