layui.config({
	base : "/js/"
}).use(['form','layer','jquery','laypage'],function(){
	var form = layui.form(),
		layer = parent.layer === undefined ? layui.layer : parent.layer,
		laypage = layui.laypage,
		$ = layui.jquery;


    $(".toPage").click(function(){
        $("#pageForm").submit();
    })

    $(".previousPage").click(function(){
        if(parseInt($("#pageNumber").val())==1){
            $("#pageNumber").val(1);
            return;
        }else{
            $("#pageNumber").val(parseInt($("#pageNumber").val())-1);
            $("#pageForm").submit();
        }
    })

    $(".nextPage").click(function(){
        if(parseInt($("#pageNumber").val())==parseInt($("#size").val())){
            $("#pageNumber").val(parseInt($("#size").val()));
            return;
        }else{
            $("#pageNumber").val(parseInt($("#pageNumber").val())+1);
            $("#pageForm").submit();
        }
    })

    $(".toPageOne").click(function(){
        $("#pageNumber").val(1);
        $("#pageForm").submit();
    })

    $(".toPageLast").click(function(){
        $("#pageNumber").val(parseInt($("#size").val()));
        $("#pageForm").submit();
    })

    $("#pageSize").change(function(){
        $("#pageForm").submit();
    })

})
