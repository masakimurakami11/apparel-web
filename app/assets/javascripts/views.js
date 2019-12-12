$(function(){
  $(window).load(function(){
    $("body").css('overflow', 'hidden');
    setTimeout(function(){
      $('.main-1').fadeIn(4000).animate({'top':'0','left':'0'},{
        duration:2000,
        queue: false
      });
    },0);
    setTimeout(function(){
      $('.main-2').fadeIn(4000).animate({'top':'0','left':'25vw'},{
        duration:2000,
        queue: false
      });
    },500);
    setTimeout(function(){
      $('.main-3').fadeIn(4000).animate({'top':'0','left':'50vw'},{
        duration:2000,
        queue: false
      });
    },1000);
    setTimeout(function(){
      $('.main-4').fadeIn(4000).animate({'top':'0','left':'75vw'},{
        duration:2000,
        queue: false
      });
    },1500);
    setTimeout(function(){
    $(".main").css( {transform: 'scale(1.1)'});
    $(".gray").fadeIn(2000);
    $('.header__title').fadeIn(2000);
    $('.header__sub-title').fadeIn(4000);
    },4000);
    setTimeout(function(){
      $('.header__btn-news').fadeIn(4000);
    },4500);
    setTimeout(function(){
      $('.header__btn-products').fadeIn(4000);
    },5000);
    setTimeout(function(){
      $('.header__btn-about').fadeIn(4000);
    },5500);
    setTimeout(function(){
      $('.header__btn-mypage').fadeIn(4000);
      $('.header__btn-signup').fadeIn(4000);
    },6000);
    setTimeout(function(){
      $('.header__btn-cart').fadeIn(4000);
      $('.header__btn-login').fadeIn(4000);
    },6500);
  })
})