<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title></title>
  <script type="text/javascript" src="${ctx}/static/easyui-1.4.5/jquery.min.js"></script>
  <script type="text/javascript" src="${ctx}/static/easyui-1.4.5/jquery.easyui.min.js"></script>
  <script type="text/javascript" src="${ctx}/static/easyui-1.4.5/locale/easyui-lang-zh_CN.js"></script>
  <script type="text/javascript" src="${ctx}/static/sunland/js/utils.js"></script>
  <link rel="stylesheet" href="${ctx}/static/easyui-1.4.5/themes/default/easyui.css" type="text/css"></link>
  <link rel="stylesheet" href="${ctx}/static/easyui-1.4.5/themes/icon.css" type="text/css"></link>
  <script type="text/javascript">
    function openDsrSearch(){
        window.location.href = "${ctx}/acd/dsr/search";
    }

    function openBxgsSearch(){
        $("#logDg").dialog('open');
//        window.location.href = "${ctx}/acd";
    }

    function login(){
      if($("#yhdm").val() == ""){
        $.messager.alert('错误信息','用户名不能为空','error');
        return;
      }
      if($("#mm").val() == ""){
        $.messager.alert('错误信息','密码不能为空','error');
        return ;
      }

      var data = $("#ff").serializeObject();
        $.ajax({
            type:"post",
            url:'${ctx}/bxlogin/login',
            data:JSON.stringify(data),
            dataType:'text',
            processData:false,
            contentType:'application/json',
            success:function(data){
                var result = JSON.parse(data);
                if(result.status == 101){
                    $("#tipContent").html(result.message);
                    $("#tipContent").css("visibility", "visible");
                } else {
                    window.location.href = "${ct}/navigator.jsp";
                }
            }
        });
      /*$.ajax({
          type:"post",
          url:'${ctx}/bxlogin/login',
          data:JSON.stringify(data),
          dataType:'text',
          processData:false,
          contentType:'application/json',
          success:function(data){
            var result = JSON.parse(data);
            if(result.status == 101){
              $.messager.alert('错误信息','用户名或密码错误','error');
              return;
            } else {
                <%--window.location.href = "${ct}/acd";--%>
            }
          }
      });*/
//      $("#logDg").dialog('close');




    }

  </script>
</head>
<body>
<input type="button" value="当事人查询入口" onclick="openDsrSearch()"/>
<input type="button" value="保险公司查询入口" onclick="openBxgsSearch()">

<div id="logDg" class="easyui-dialog" title="登录窗口" data-options="modal:true,closed:true" style="width:400px;height:250px;padding:10px;">
  <form id="ff"  method="post">
    <div style="height: 20px"></div>
    <table  align="center" valign="middle">
      <tr style="padding: 10px">
        <td style="font-size: 15px;font-family: 宋体;font-weight:bold;">用户名:</td>
        <td><input id="yhdm" class="easyui-textbox" type="text" name="yhdm" style="width:220px;height:35px;" data-options="iconCls:'icon-man',iconWidth:38"></input></td>
      </tr>

      <tr>
        <td style="font-size: 15px;font-family: 宋体;font-weight:bold;">密码:</td>
        <td><input id="mm" class="easyui-numberbox" type="password" name="mm" style="width: 220px;height:35px;" data-options="iconCls:'icon-lock',iconWidth:38"></input>
        </td>
      </tr>
    </table>
  </form>
  <div style="text-align:center;padding:20px">
    <a href="javascript:void(0)" class="easyui-linkbutton"  onclick="login()" style="padding:5px 0px;width: 290px">登录</a>
  </div>
</div>
</body>
</html>
