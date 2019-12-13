$(function()  {
  $(window).load(function(){
    $('body').css('overflow', 'hidden')
    setTimeout(function(){
      $('.mypage__privacy-title').fadeIn(1000);
      $('.mypage__privacy-space').fadeIn(4000).animate({'top':'23vh','left':'0'},{
        duration:4000,
        queue: false
      });
      },0);
      setTimeout(function(){
      $('.mypage__history-title').fadeIn(1000);
      $('.mypage__history-space').fadeIn(4000).animate({'top':'46vh','left':'0'},{
        duration:4000,
        queue: false
      });
      },500);
      setTimeout(function(){
      $('.mypage__logout-title').fadeIn(1000);
      $('.mypage__logout-space').fadeIn(4000).animate({'top':'69vh','left':'0'},{
        duration:4000,
        queue: false
      });
      },1000);
  })
});