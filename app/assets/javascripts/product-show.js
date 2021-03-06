$(function(){
  let mouses = $(".product-image-2");
  function imageSelect(){
    const index = mouses.index(this);
    var scrollvalue = (-45 * index) + 2.5 + 'vw';
    $(".active").removeClass("active")
    $(this).addClass("active")
    $(".product-image-1").removeClass("show").eq(index).addClass("show")
    $('.product-detail__image-first').css("margin-left", scrollvalue);
    $('.active').css('opacity', '1');
  };
  function imageNotSelect(){
    $('.active').css('opacity', '0.4');
  }
  mouses.mouseenter(imageSelect); 
  mouses.mouseleave(imageNotSelect)
});

$(function()  {
  $(window).load(function(){
    $("body").css('overflow', 'hidden');
    setTimeout(function(){
      $('.product-detail__image-first-space').fadeIn(1000);
      $('.product-detail__image-other').fadeIn(1500);
      },500);
      setTimeout(function(){
        $('.product-detail__select-name').fadeIn(1000);
      },500);
      setTimeout(function(){
        $('.product-detail__select-description').fadeIn(1000);
      },750);
      setTimeout(function(){
        $('.product-detail__select-price').fadeIn(1000);
      },1000);
      setTimeout(function(){
        $('.count').fadeIn(1000);
        $('.size').fadeIn(1000);
        $('.color').fadeIn(1000);
      },1250);
      setTimeout(function(){
        $('.cart-btn-space').fadeIn(1000);
      },1500);
  })
});

$(function(){
  $('.cart-btn').click(function(){
    if ($('.count-space').val() === '0'){
      alert('COUNTを入力してください');
      return false;
    }
  });
})

$(function(){
  $('.cart-btn').click(function(){
    if ($('.size-space').val() === '--'){
      alert('SIZEを入力してください');
      return false;
    }
    
  });
})

$(function(){
  $('.cart-btn').click(function(){
    if ($('.color-space').val() === '--'){
      alert('COLORを入力してください');
      return false;
    }
  });
})