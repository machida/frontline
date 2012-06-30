$(function(){
	window.popup = $("#popup");
	popup.setTitle = function(_title){
		this.title = _title;
		$(this).find(".headlabel h2").text(_title);
	}
	popup.setMessage = function(_msghtml){
		this.msg = _msghtml;
		$(this).find(".messagearea").html(_msghtml);
	}
	popup.setView = function(_title, _msg){
		this.setTitle(_title);
		this.setMessage(_msg);
	}
	popup.visible = function(){
		this.removeClass("disable");
	}
	popup.invisible = function(){
		this.addClass("disable");
	}

	popup.setTitle("Notice");
	popup.setMessage("メッセージ");
});
