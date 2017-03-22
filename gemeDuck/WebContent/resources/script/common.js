var common = {};
(function($){
    //title:..... body:....
    //modal-header, modal-body, modal-footer
    //헤더 마지막<button type="button" class="close" data-dismiss="modal">&times;</button>
    //버튼 마지막<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
    //eq로 스크립트 바인딩 마지막 스크립트는 작성 하지 않는다
    common.modal_popup = function($modal, text, btns, scriptArr){
        var headerNece = "<button type='button' class='close' data-dismiss='modal'>&times;</button>";
        var btnNece = "<button type='button' class='btn btn-default' data-dismiss='modal'>Close</button>";

        $modal.find('.modal-header').html(text.title + headerNece);
        $modal.find('.modal-body').html(text.body);

        var btnHtml = "";
        $.each(btns, function(index, item){
            btnHtml += item;
        });
        $modal.find('.modal-footer').html(btnHtml + btnNece);

        var btns = $('.modal-footer').find("button");
        $.each(scriptArr, function(index, item){
            if (typeof(item.script) == "function"){
                $modal.find(item.target).off(item.event, item.script);
                $modal.find(item.target).on(item.event, item.script);
            }
        });
        $modal.modal('show');
    }
    
    
    
    
    
})(jQuery)