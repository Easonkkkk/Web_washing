function Searchsong(url){
	$.get(url, function(result,status,xhr) {
		if(status=="success"){
			if(result.code==200){
				var songs=result.result.songs;
				var detail="<tr>";
				for(i=0;i<songs.length;i++){
				    detail+="<td>"+(i+1)+"</td>";
					detail+="<td>"+songs[i].name+"</td>";
				    detail+="<td>"+Alltime(songs[i].duration)+"</td>";
				    detail+="<td>"+songs[i].artists[0].name+"</td>";
				    detail+="<td><a href='javascript:void(0);' onclick='Lyrics("+'"http://www.class-space.cn/songs/query?type=2&keyword='+songs[i].id+'"'+")'>查找歌词</a></td>";
			        /*当点击查找歌词按钮后，会根据关键词keyword加上前缀接口地址搜索当前歌曲*/
				    detail+="</tr>";}
				$("#songmenu").html(detail);  
				$("#list").show();            /*显示歌单*/
				console.log(1);}
			$(".result").show();
			console.log(2);}});
}


function Lyrics(url){
	$.get(url, function(result,status,xhr) {
		console.log(3);
		if(status=="success"){
			if(result.code==200){
				console.log(3);
				$("#lyric").html(result.lrc.lyric.replace(/\n/g,'<br/>'));  /*用歌词替换掉原来空置的放置lyric的p元素*/}
			$("#dialog-lyric").modal('show');}});
}


function Alltime(detail){
	var time=parseFloat(detail)/1000;
	if(null!=time&&""!=time){
    if(time>60&&time<60*60){
			console.log(4);
			time=parseInt(time/60.0)+"分"+parseInt((parseInt(time/60.0)-parseInt(time/60.0))*60)+"秒";}
		else if(time>=60*60&&time<60*60*24){
			time=parseInt(time/3600.0)+ "小时" + parseInt((parseFloat(dura / 3600.0)-parseInt(dura / 3600.0)) * 60) + "分" +
	                parseInt((parseFloat((parseFloat(time / 3600.0) - parseInt(time/ 3600.0)) * 60) -
	                parseInt((parseFloat(time/ 3600.0) - parseInt(time / 3600.0)) * 60)) * 60) + "秒";}
		else{dura=parseInt(time)+"秒";}}return time;       /*计算歌曲时长*/
}
	
