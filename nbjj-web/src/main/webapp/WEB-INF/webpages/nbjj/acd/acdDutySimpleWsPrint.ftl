<#assign ctx="${rc.contextPath}">
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>道路交通事故认定书(简易程序)</title>
<script type="text/javascript" src="${ctx}/static/easyui-1.4.5/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/static/easyui-1.4.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${ctx}/static/easyui-1.4.5/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${ctx}/static/sunland/js/utils.js"></script>
<script type="text/javascript" src="${ctx}/static/sunland/js/dict.js"></script>
<link rel="stylesheet" href="${ctx}/static/easyui-1.4.5/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="${ctx}/static/easyui-1.4.5/themes/icon.css" type="text/css"></link>
<script type="text/javascript">
$(function(){
    if($("#type").val() == 'dsr'){
        $("#back").css("display","block");
    }else{
        $("#back").css("display","none");
    }
    initMemo();
   $.post("${ctx}/acd/data/item",{lsh:$("#lsh").val()},function(data){
	   	if(data != null){
			//赋值事故信息
			$("#sgbh").html(convertNullStr2(data.sgbh));
			$("#sgfssj").html(convertNullStr2(data.sgfssjstr));
			$("#tq").html(getDict_Tq(data.tq));
			$("#sgdd").html(convertNullStr2(data.sgdd));
			$("#zqmj1").html(convertNullStr(data.xm));
            $("#zqmj2").html(convertNullStr(data.xm));
			$("#datestr1").html(convertNullStr(data.datestr));
            $("#datestr2").html(convertNullStr(data.datestr));
			$("#sgss").html(convertNullStr2(data.sgss));
			if(data.zrtjjg == null || data.zrtjjg == ''){
                $("#sgzr").html("未调解");
			}else{
                $("#sgzr").html(data.zrtjjg);
			}
			$("#sgss_tb").css("background-image","url(${cxt}/static/sunland/images/acd/"+data.ssdd+".jpg)");
			//赋值事故人员信息
            var json = data.acdDutyHumanList;
			if(json.length<=1){
			var dsr = "";
				for(var i = 0; i<json.length; i++) {
				    $("#dsr"+i).html(convertNullStr2(json[i].xm)); //当事人
				    $("#sfzmhm"+i).html(convertNullStr2(json[i].sfzmhm)); //身份证
				    $("#lxdh"+i).html(convertNullStr2(json[i].dh)); //联系电话
				    $("#jtfs"+i).html(convertNullStr2(getDict_AcdJtfs(json[i].jtfs))); //交通方式
				    $("#hphm"+i).html(convertNullStr2(json[i].hphm)); //号牌号码
				    $("#bxgs"+i).html(convertNullStr2(json[i].bxgs)); //保险公司
				    dsr += "、<div class=\"line_center\">&nbsp;"+convertNullStr(json[i].xm)+"&nbsp;</div>";
				}
				if(dsr.length > 1){
					$("#dsrqz0").append("当事人"+dsr.substring(1));
					$("#dsrqz1").append("当事人"+dsr.substring(1));
				}else{
					$("#dsrqz0").append("当事人");
					$("#dsrqz1").append("当事人");
				}
			}else{ //大于三条的情况整个表格会变动
				var appendStr = ""; 
				var dsr = "";
                var dsrTitle = "";
				for(var i=1;i<json.length;i++){
					//首先创建好需要增加的数据项
                    if(i == 1){
                        dsrTitle = "当事人已";
                    }else if(i == 2){
                        dsrTitle = "当事人丙";
                    }else if(i == 3){
                        dsrTitle = "当事人丁";
                    }else if(i == 4){
                        dsrTitle = "当事人戊";
                    }
					appendStr += "<tr><td width=\"80px\" colspan=\"2\" align=\"center\" valign=\"middle\" height=\"30px\">"+dsrTitle+"</td><td width=\"160px\" valign=\"middle\" align=\"center\"><div id=\"dsr"+i+"\">&nbsp;</div></td><td width=\"160px\" align=\"center\" valign=\"middle\" >驾驶证或身份证号码</td><td width=\"160px\" align=\"center\" valign=\"middle\" ><div id=\"sfzmhm"+i+"\">&nbsp;</div></td><td width=\"100px\" align=\"center\" valign=\"middle\">联系电话</td><td valign=\"middle\" align=\"center\"><div id=\"lxdh"+i+"\">&nbsp;</div></td></tr><tr><td width=\"80px\" colspan=\"2\" align=\"center\" valign=\"middle\" height=\"30px\">交通方式</td><td width=\"160px\" valign=\"middle\" align=\"center\"><div id=\"jtfs"+i+"\" style=\"font-size:14px;width:100%\">&nbsp;</div></td><td width=\"160px\" align=\"center\" valign=\"middle\" >机动车型号、牌号</td><td width=\"150px\" align=\"center\" valign=\"middle\" ><div id=\"hphm"+i+"\">&nbsp;</div></td><td width=\"100px\" align=\"center\" valign=\"middle\">保险名称</td><td valign=\"middle\" align=\"center\"><div id=\"bxgs"+i+"\">&nbsp;</div></td></tr>";
				}
				if(appendStr.length > 1){
					$("#lasttr").after(appendStr);
				}
				//全部生成好后进行统一的赋值
				for(var i = 0; i<json.length; i++) {
				    $("#dsr"+i).html(convertNullStr2(json[i].xm)); //当事人
				    $("#sfzmhm"+i).html(convertNullStr2(json[i].sfzmhm)); //身份证
				    $("#lxdh"+i).html(convertNullStr2(json[i].dh)); //联系电话
				    $("#jtfs"+i).html(convertNullStr2(getDict_AcdJtfs(json[i].jtfs))); //交通方式
				    $("#hphm"+i).html(convertNullStr2(json[i].hphm)); //号牌号码
				    $("#bxgs"+i).html(convertNullStr2(json[i].bxgs)); //保险公司
				    dsr += "、<div class=\"line_center\">&nbsp;"+convertNullStr(json[i].xm)+"&nbsp;</div>";
				}
				if(dsr.length > 1){
					$("#dsrqz0").append("当事人"+dsr.substring(1));
					$("#dsrqz1").append("当事人"+dsr.substring(1));
				}
			}
	   	}else{
	   		alert("加载事故打印数据失败");
	   	}
   }); 
});

function initMemo(){
    if(${flag} == 0){
        $("#memo").append("<span style=\"width:35px;display:-moz-inline-box;display:inline-block\"></span>有下列情形之一或者调解未达成协议及调解生效后当事人不履行的，当事人可以向人民法院提起民事诉讼：(一)当事人对交通事故认定有异议的；(二)当事人拒绝签名的；(三)当事人不同意由交通警察调解的。");
    }else{
        $("#memo").append("<span style=\"width:35px;display:-moz-inline-box;display:inline-block\"></span>当事人对交通事故认定有异议的，可以自道路交通事故认定书送达之日起三日内提出书面复核申请。同一事故的复核以一次为限。损害赔偿有争议的，当事人可以申请人民调解委员会调解，或者向人民法院提起民事诉讼。");
    }
}

function getDate(value) {
    if (value) {
        return new Date(value).format('yyyy-MM-dd hh:mm:ss');
    }
    return '';
}

function doPrint(){
	$('#printBtn').hide();
    javascript:window.print();
	$('#printBtn').show();
}

function doBack(){
    window.location.href = "${ctx}/acd/dsr/search";
}
 </script>
 <style type="text/css">
   .tb1{
		border-collapse: collapse;
		line-height:150%;
		background-repeat: no-repeat;
		background-position: 50% 30%;
	}

   .tb{
       border-collapse: collapse;
       background-repeat: no-repeat;
       background-position: 70% 30%;
   }

   @media screen
   {
       .tl {
           font-family: "宋体";
           font-size: 16px;
           border-top-style: solid;
           border-left-style: solid;
           border-top-color: #030303;
           border-left-color: #030303;
           border-top-width: 1px;
           border-right-width: 1px;
           border-bottom-width: 1px;
           border-left-width: 1px;

       }
       .tl td{
           font-family: "宋体";
           font-size: 16px;
           border-top-style: none;
           border-left-style: none;
           border-right-style: solid;
           border-bottom-style: solid;
           border-right-color: #030303;
           border-bottom-color: #030303;
           border-right-width: 1px;
           border-bottom-width: 1px;
       }
       .noprint {
           color: #999999;
       }
   }

   .line_center{
       text-align: center;
       display:inline;
       text-decoration:none;
       border-bottom:1px solid #000000;
   }

 </style>
</head>

<body ><br>
<table width="800px" height="20px" border="0" align="center">
	<tr id="printBtn">
    <td align="right"  height="20px" width="750px">
        <span><a  href="#" class="easyui-linkbutton" icon="icon-print" onclick="doPrint();" >打 印</a></span>
    </td>
        <td align="right"  height="20px" width="100px">
            <span id="back"><a href="#" class="easyui-linkbutton" icon="icon-back" onclick="doBack();" >返 回</a></span>
        </td>
    </tr>
</table>
<table id="sgss_tb" width="800px" height="200px" border="0" align="center" class="tb1">
	<tr><td valign="middle" align="center" style="font-size: 26px;font-weight:bold;font-family: 黑体;">道路交通事故认定书(简易程序)</td></tr>
	<tr><td valign="bottom" align="center" style="font-size:20px;">
		第<span id="sgbh"></span>号
	</td></tr>
</table>
<form styleId="acdSimpleprintformid">
	<input type="hidden" id="lsh" value="${lsh}"/>
    <input type="hidden" id="type" value="${type}"/>
<table width="800px" border="1" cellpadding="2" cellspacing="0" align="center" class="tl" style="table-layout:fixed ">
  <tr>
    <td width="80px" colspan="2" align="center" valign="middle" height="30px">
    	事故时间
    </td>
    <td width="490px" valign="middle" colspan="3" align="center">
    <span id="sgfssj"></span>&nbsp;&nbsp;</td>
    <td width="100px" align="center" valign="middle">天气</td>
    <td width="130px" valign="middle" align="center" >
     &nbsp;<span id="tq"></span>&nbsp;</td>
  </tr>
  <tr>
    <td width="80px" colspan="2" align="center" valign="middle" height="30px">
    	事故地点
    </td>
    <td width="720px" valign="middle" colspan="5" align="left" >
   &nbsp;<span id="sgdd"></span>&nbsp;</td>
  </tr>

  <tr>
    <td width="80px" colspan="2" align="center" valign="middle" height="30px">
    	当事人甲
    </td>
    <td width="160px" valign="middle" align="center">
    <span id="dsr0">&nbsp;</span>
   </td>

   <td width="180px" align="center" valign="middle" >驾驶证或身份证号码</td>
    <td width="160px" align="center" valign="middle" >
    <span id="sfzmhm0">&nbsp;</span>
    </td>
    <td width="90px" align="center" valign="middle">联系电话</td>
    <td valign="middle" align="center">
    <span id="lxdh0">&nbsp;</span>
    </td>
  </tr>

  <tr id="lasttr">
    <td width="80px" colspan="2" align="center" valign="middle" height="30px">
    	交通方式
    </td>
    <td width="160px" valign="middle" align="center">
    <span id="jtfs0" style="font-size:14px;width:100%">&nbsp;</span>
    </td>

   <td width="180px" align="center" valign="middle" >机动车型号、牌号</td>
    <td width="150px" align="center" valign="middle" >
    <span id="hphm0">&nbsp;</span>
    </td>
    <td width="90px" align="center" valign="middle">保险名称</td>
    <td valign="middle" align="center">
    <span id="bxgs0">&nbsp;</span>
    </td>
  </tr>


    <tr>
        <td width="45px" align="center" valign="middle" height="230px">
            交<br>
            通<br>
            事<br>
            故<br>
            事<br>
            实<br>
            及<br>
            责<br>
            任<br>
        </td>
        <td width="755px"  colspan="6" height="230px">
            <table width="100%" border="0" style="height: 230px;" class="tb">
                <tr style="height: 120px;line-height: 20px" valign="top">
                    <td >
                    <span style="width:35px;display:-moz-inline-box;display:inline-block"></span><span id="sgss"></span>
                    </td>
                </tr>

                <tr style="height: 40px;">
                    <td>
                    <span id="dsrqz0"></span>
                    </td>
                </tr>
                <tr style="height: 30px;" valign="top">
                    <td>
                    交通警察<u>&nbsp;<span id="zqmj1"></span>&nbsp;</u><span style="width:350px;display:-moz-inline-box;display:inline-block"></span>
                    <span id="datestr1"></span>
                    </td>
                </tr>
            </table>
        </td>
    </tr>

    <tr>
        <td width="45px" align="center" valign="middle" height="230px">
            损<br>
            害<br>
            赔<br>
            偿<br>
            调<br>
            解<br>
            结<br>
            果<br>
        </td>
        <td width="755px" valign="middle" colspan="6">
            <table width="100%" border="0" style="height: 230px;">
                <tr style="height: 120px;line-height: 20px" valign="top">
                    <td >
                        <span style="width:35px;display:-moz-inline-box;display:inline-block"></span><span id="sgzr"></span>
                    </td>
                </tr>

                <tr style="height: 40px;">
                    <td>
                        <span id="dsrqz1"></span>
                    </td>
                </tr>
                <tr style="height: 30px;">
                    <td>
                        交通警察<u>&nbsp;<span id="zqmj2"></span>&nbsp;</u><span style="width:350px;display:-moz-inline-box;display:inline-block"></span>
                        <span id="datestr2"></span>
                    </td>
                </tr>
            </table>


        </td>
    </tr>

</table>

<table width="800px" border="0" cellpadding="2" cellspacing="0" align="center" style="table-layout:fixed">
  <tr>
    <td style="padding-top: 25px;line-height: 25px">
        <span id="memo"></span>
    </td>
  </tr>

</table>
</form>
</body>
</html>
