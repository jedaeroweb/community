$(document).ready(function() {


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


    $("a.simple_image").fancybox({
        'opacity'   : true,
        'overlayShow'        : true,
        'overlayColor': '#000000',
        'overlayOpacity'     : 0.9,
        'titleShow':true,
        'openEffect'  : 'elastic',
        'closeEffect' : 'elastic'
    });



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
        $("#no-sns-login").show();
        $("#sns-login,#no-sns-id").hide();
        $("#no-sns-id").parent().hide();
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


    $("#faqCategoryList a.title").click(getList);
    $("#faqList dt a.title").click(getContent);

    function getList() {
        var tt=$(this);

        $.getJSON($(this).attr('href')+'.json',function(data){
            $("#faqList").empty();
            if(data.faqs.length) {
                $.each(data.faqs,function(index,value){
                    var a=$('<a class="title" href="/faqs/'+value.id+'">'+value.title+'<span><i class="material-icons">add</i></span></a>').click(getContent);
                    $('<dt>').appendTo("#faqList").append(a);
                });
            } else {
                $('<dt>글이 없습니다.</dt>').appendTo("#faqList");
            }

            $("#faqCategoryList li a").removeClass('active');
            tt.addClass('active');
        });
        return false;
    }

    function getContent(){
        var parent=$(this).parent();
        $.getJSON($(this).attr('href')+'.json',function(value){
            if(parent.next().get(0)) {
                if(parent.next().get(0).tagName!='DD') {
                    parent.after('<dd>');
                }
            } else {
                parent.after('<dd>');
            }
            $("#faqList dt").removeClass('active').find('i').text('add');
            $("#faqList dd").hide();
            parent.addClass('on').find('i').text('remove');
            parent.next().effect('highlight').html('<p>'+nl2br(value.content)+'</p>').slideDown();
            if (history && history.pushState) {
                history.pushState('','faq_'+value.id,'/faqs/'+value.id);
            }
        });

        return false;
    }

    function nl2br (str, is_xhtml) {
        var breakTag = (is_xhtml || typeof is_xhtml === 'undefined') ? '<br ' + '/>' : '<br>';
        return (str + '').replace(/([^>\r\n]?)(\r\n|\n\r|\r|\n)/g, '$1' + breakTag + '$2');
    }
});

