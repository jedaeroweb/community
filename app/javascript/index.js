var ready=function(){
    $('#main-gallery').on('slide.bs.carousel', function(e) {
        var $nextImage = $(e.relatedTarget).find('img');

        $nextImage.each(function(){
            if($(this).attr('data-original')) {
                $(this).attr('src', $(this).attr('data-original'));
                $(this).removeAttr('data-original');
            }
        });
    });

    // 페이지 로드 시 체크박스 해제
    $("#user_remember_me").prop("checked", false);

    $("#user_remember_me").change(function(){
        if ($(this).is(':checked')) {
            const confirmed = confirm("1달간 로그인이 유지 됩니다. 공공장소 PC에서 사용 주의\n  로그인 정보 기억하시겠습니까?");
            if (!confirmed) {
                $(this).prop('checked', false); // 취소 시 체크 해제
            }
        }
    });

    $('#main-gallery .carousel-inner .active img').each(function(){
        if($(this).attr('data-original')) {
            $(this).attr('src', $(this).attr('data-original'));
            $(this).removeAttr('data-original');
        }
    });

    $('#main-gallery .carousel-inner .active img,#sl_main_blog img').each(function() {
        if ($(this).attr('data-original')) {
            $(this).attr('src', $(this).attr('data-original'));
            $(this).removeAttr('data-original');
        }
    });

    $(".sl-table tbody tr").css('cursor','pointer').click(function(){
        location.href=$(this).find('a:first').attr('href');
    });

    $(".sl-table tbody tr td a").css('cursor','pointer').click(function(){
        location.href=$(this).attr('href');
        return false;
    });

    $("article.talk .media, article.question .media").css('cursor','pointer').click(function(){
        location.href=$(this).find('a:first').attr('href');
    });


    var csrf_token=$('meta[name="csrf-token"]').attr('content');

    $("#mobile-menu").click(function(){
        $('#mobile-menu-back').show();
        $('#top-user-menu').show().animate({"right":"0px"}, 500);

        return false;
    });

    $('#mobile-menu-close').click(function(){
        $('#top-user-menu').animate({"right":"-290px"}, 500,function(){
            $(this).hide();
            $('#mobile-menu-back').hide();
        });

        return false;
    });

    $('#no-sns-id').click(function(){
        $("#sns-login,#no-sns-id").hide();
        $("#no-sns-id").parent().hide();
        $("#no-sns-login").show();
    });

    $('.mobile-sub-menu').change(function(){
        if($(this).attr('name')=='category' || $(this).attr('name')=='speciality') {
            location.href = $(this).find('option[value="'+$(this).val()+'"]').attr('data-url');
        } else {
            location.href = $(this).val();
        }
    });

    $('input[name="no_order"],input[name="no_code"]').change(function(){
        $(this).closest('form').submit();
    });
};


function nl2br (str, is_xhtml) {
    var breakTag = (is_xhtml || typeof is_xhtml === 'undefined') ? '<br ' + '/>' : '<br>';
    return (str + '').replace(/([^>\r\n]?)(\r\n|\n\r|\r|\n)/g, '$1' + breakTag + '$2');
}

document.addEventListener("turbo:load", ready);

