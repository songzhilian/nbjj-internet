<#assign ctx="${rc.contextPath}">
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>宁波交警网上事故查询</title>
    <script type="text/javascript" src="${ctx}/static/easyui-1.4.5/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/easyui-1.4.5/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/easyui-1.4.5/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="${ctx}/static/sunland/js/utils.js"></script>
    <link rel="stylesheet" href="${ctx}/static/easyui-1.4.5/themes/default/easyui.css" type="text/css"></link>
    <link rel="stylesheet" href="${ctx}/static/easyui-1.4.5/themes/icon.css" type="text/css"></link>
    <link rel="stylesheet" href="${ctx}/static/sunland/css/ydjw.css" type="text/css"></link>
    <script type="text/javascript">
        function resetForm(){
            $("#ff").form("clear");
        }

        function getCaptcha(){
            //需要根据事故编号和手机号去判断存不存在
            if($("#sgbh").val() == ""){
                $.messager.alert('错误提示','事故编号不能为空','error');
                return;
            }

            if($("#sjhm").val() == ""){
                $.messager.alert('错误提示','手机号码不能为空','error');
                return;
            }else{
                if($("#sjhm").val().length != 11){
                    $.messager.alert('错误提示','手机号码格式不正确','error');
                    return;
                }
            }

            $.post('${ctx}/acd/dsr/check',{sgbh:$("#sgbh").val(),sjhm:$("#sjhm").val()},function(data){
                if(data != null){
                    if(data.status == 1){
                        //该事故存在该手机号码后保存该条手机信息
                        $.post('${ctx}/acd/dsr/captcha',{sgbh:$("#sgbh").val(),sjhm:$("#sjhm").val()},function(data){
                            if(data.status == 0){
                                $.messager.alert('错误提示',data.message,'error');
                                return;
                            }else{
                                reSendCount();
                            }
                        });
                    }else if(data.status == 0){
                        $.messager.alert('错误提示',data.message,'error');
                        return;
                    }else{
                        $.messager.alert('错误提示','获取数据异常，请稍后查询','error');
                        return;
                    }
                }
            });
        }

        //重发倒计时
        function reSendCount(){
            var step = 120;
            var _res = setInterval(function() {
                $("#captchaBtn").linkbutton('disable');
                $('#captchaBtn span:last').html('重新发送'+step);
                step-=1;
                if(step <= 0){
                    $("#captchaBtn").linkbutton('enable');
                    $('#captchaBtn span:last').html('获取验证码');
                    clearInterval(_res);//清除setInterval
                }
            },1000);
        }

        function printSgws(){
            if($("#sgbh").val() == ""){
                $.messager.alert('错误提示','事故编号不能为空','error');
                return;
            }

            if($("#sjhm").val() == ""){
                $.messager.alert('错误提示','手机号码不能为空','error');
                return;
            }else{
                if($("#sjhm").val().length != 11){
                    $.messager.alert('错误提示','手机号码格式不正确','error');
                    return;
                }
            }

            if($("#yzm").val() == ""){
                $.messager.alert('错误提示','验证码不能为空','error');
                return;
            }else{
                if($("#yzm").val().length != 6){
                    $.messager.alert('错误提示','请输入六位正确验证码','error');
                    return;
                }

            }
            //校验是否该事故是否存在此手机号
            $.post('${ctx}/acd/dsr/check',{sgbh:$("#sgbh").val(),sjhm:$("#sjhm").val()},function(data){
                if(data != null){
                    if(data.status == 1){
                        //校验手机和验证码，有效时间
                        $.post('${ctx}/acd/dsr/check/captcha',{sjhm:$("#sjhm").val(),yzm:$("#yzm").val()},function(data){
                            if(data != null){
                                if(data.status == 1){
                                    //开始调用打印
                                    var sgbh = convertNullStr($("#sgbh").val());
                                    window.location.href="${ctx}/acd/dsr/print?sgbh="+sgbh+"&type=dsr";
                                    <#--window.open('${ctx}/acd/dsr/print?sgbh='+convertNullStr($("#sgbh").val()),'newwindow','top=0,left=0,toolbar=yes,menubar=yes,scrollbars=yes, resizable=yes,location=yes, status=yes');-->
                                }else if(data.status == 0){
                                    $.messager.alert('错误提示',data.message,'error');
                                    return;
                                }else{
                                    $.messager.alert('错误提示','获取数据异常，请稍后查询','error');
                                    return;
                                }
                            }else{
                                $.messager.alert('错误提示','获取数据异常，请稍后查询','error');
                                return;
                            }
                        });
                    }else if(data.status == 0){
                        $.messager.alert('错误提示',data.message,'error');
                        return;
                    }else{
                        $.messager.alert('错误提示','获取数据异常，请稍后查询','error');
                        return;
                    }
                }
            });
        }
    </script>
</head>
<body >
<div>
<div class="top">
</div>
<div id="tabId" style="width: 40%;margin:0px auto;height: 200px;padding-top: 40px">
    <div class="easyui-panel" title="简易事故打印" style="width:100%">
        <div style="padding:10px 40px 20px 40px">
            <form id="ff" class="easyui-form" method="post" >
                <table cellpadding="5" align="center" valign="middle">
                    <tr>
                        <td style="font-size: 15px">事故编号:</td>
                        <td><input id="sgbh" class="easyui-textbox" type="text" name="sgbh" style="width:220px;height:35px;"></input></td>
                    </tr>
                    <tr>
                        <td style="font-size: 15px">手机号码:</td>
                        <td><input id="sjhm" class="easyui-numberbox" type="text" name="sjhm" style="height:35px;width: 130px" maxlength="11"></input>
                            <a id="captchaBtn" href="javascript:void(0)" class="easyui-linkbutton"  onclick="getCaptcha()" style="width:80px;height:35px;">获取验证码</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: 15px">验证码:</td>
                        <td><input id="yzm" class="easyui-numberbox" type="text" name="yzm" style="height:35px;width: 80px"></input></td>
                    </tr>

                </table>
            </form>

            <div style="text-align:center;padding:5px">
                <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-search'" onclick="printSgws()" style="width:80px">查询</a>
                <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-redo'" onclick="resetForm()" style="width:80px">重置</a>
            </div>
        </div>
    </div>
</div>

</div>
</body>

</html>