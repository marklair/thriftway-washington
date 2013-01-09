$(function() {
   $(window).resize(function(){ heightSizer(); });

   function heightSizer(){
     windowHeight = $(window).height();

     availableHeight = windowHeight - 225;

     mainHeight = (availableHeight / 4) * 3;
     mainHeightCSS = mainHeight + 'px';

     secondaryHeight = (availableHeight / 4);
     secondaryHeightCSS = secondaryHeight + 'px';

     $('.main_boards .board').height(mainHeightCSS);
     $('.secondary_boards .board').height(secondaryHeightCSS);
   };

   heightSizer();

   $('.board').each(function(index){
     $('.board:eq(' + index + ") li:first").css("margin-top", "0");
    });

   $('.priority .badge').popover('toggle');

 });
