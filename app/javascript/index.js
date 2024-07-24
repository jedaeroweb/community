var ready=function(){
    $("a.simple_image").fancybox({
        'opacity'   : true,
        'overlayShow'        : true,
        'overlayColor': '#000000',
        'overlayOpacity'     : 0.9,
        'titleShow':true,
        'openEffect'  : 'elastic',
        'closeEffect' : 'elastic'
    });

    $('#main-gallery').on('slide.bs.carousel', function(e) {
        var $nextImage = $(e.relatedTarget).find('img');

        $nextImage.each(function(){
            if($(this).attr('data-original')) {
                $(this).attr('src', $(this).attr('data-original'));
                $(this).removeAttr('data-original');
            }
        });
    });

    $('#main-gallery .carousel-inner .active img').each(function(){
        if($(this).attr('data-original')) {
            $(this).attr('src', $(this).attr('data-original'));
            $(this).removeAttr('data-original');
        }
    });

    $(".sl_gallery .carousel-item a").click(function(){
        $.getJSON($(this).attr('href'),{'json':true},function(data){
            $("#sl_gallery_left a").attr('href',data.photo.url).attr('title',data.title);
            $("#sl_gallery_left span").text(data.title)
            $("#sl_gallery_left figcaption").text(data.title).css('bottom',-30);
            $("#sl_gallery_left img").attr('src',data.photo.large_thumb.url).animate({ opacity: "1" }, 400,function(){
                $("#sl_gallery_left figcaption").animate({bottom:0,opacity:'0.8'},400);
            });
            $("#sl_gallery_right div:first p").html(nl2br(data.content)).effect('highlight');
            $("#sl_gallery_right div.add_info span[itemprop='dateCreated']").text(data.created_date).effect('highlight');
            $("#sl_gallery_menu a:first").attr('href','/galleries/edit/'+data.id);
            $("#sl_gallery_menu a:eq(1)").attr('href','/galleries/confirm_delete/'+data.id);
            document.title=data.title+'title_separator'+'application_name';
            if (history && history.pushState) {
                history.pushState('','gallery_'+data.id,'/galleries/'+data.id);
            }
        });
        return false;
    });


    $('#main-gallery').on('slide.bs.carousel', function(e) {
        var $nextImage;
        $nextImage = $(e.relatedTarget).find('img');
        $nextImage.each(function() {
            if ($(this).attr('data-original')) {
                $(this).attr('src', $(this).attr('data-original'));
                $(this).removeAttr('data-original');
            }
        });
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

$(document).ready(ready);
document.addEventListener("turbo:load", ready);
