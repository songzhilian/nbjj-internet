<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title></title>
  <script type="text/javascript" src="${ctx}/static/easyui-1.4.5/jquery.min.js"></script>
  <script type="text/javascript" src="${ctx}/static/easyui-1.4.5/jquery.easyui.min.js"></script>
  <script type="text/javascript" src="${ctx}/static/easyui-1.4.5/jquery.cookie.js"></script>
  <script type="text/javascript" src="${ctx}/static/easyui-1.4.5/locale/easyui-lang-zh_CN.js"></script>
  <script type="text/javascript" src="${ctx}/static/sunland/js/utils.js"></script>
  <link rel="stylesheet" href="${ctx}/static/easyui-1.4.5/themes/default/easyui.css" type="text/css"></link>
  <link rel="stylesheet" href="${ctx}/static/easyui-1.4.5/themes/icon.css" type="text/css"></link>
    <link rel="stylesheet" href="${ctx}/static/sunland/css/style.css" type="text/css"></link>
  <script type="text/javascript">
      var bxgsList=[];
      function openDsrSearch(){
          window.location.href = "${ctx}/acd/dsr/search";
      }

      function openBxgsSearch(){
         $("#logDg").dialog('open');
         document.onkeydown = function(){
             if(event.keyCode == "13"){
                 login();
             }
         }
      }

      function openRegister() {

          //获取保险公司数据
          $.ajax({
              type: 'post',
              url: '${ctx}/acd/insure/data',
              processData:false,
              contentType:'application/json',
              success: function(data){
                  bxgsList = data.insureList;
                  var datas = [];
//                  datas.push({ "text": " ", "value": "" });
                  for (var i = 0; i < bxgsList.length; i++) {
                      datas.push({ "text": bxgsList[i].bxgsmc, "value": bxgsList[i].id });
                  }
                  $("#insure").combobox("loadData", datas);
              }
          })
          $("#logDg").dialog('close');
          $("#regDg").dialog('open');
      }

      function login(){
          if($("#yhdm").val() == ""){
            $.messager.alert('错误提示','用户名不能为空','error');
            return;
          }
          if($("#mm").val() == ""){
            $.messager.alert('错误提示','密码不能为空','error');
            return ;
          }
          //保存用户名密码至cookie
          $.cookie('yhdm',$("#yhdm").val(),{path: '/acd/bxgs/search'});
          $.cookie('mm',$("#mm").val(),{path:'/acd/bxgs/search'});
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
                    if(result.status == 0){
                        $.messager.alert('错误提示',result.message,'error');
                    } else {
                        $("#logDg").dialog('close');
                        window.location.href = "${ctx}/acd/bxgs/search";
                    }
                }
            });
        }

        function register() {
          if($('#insure').combobox('getValue') == ""){
              $.messager.alert("错误提示","保险公司不能为空","error");
              return;
          }

          if($("#username").val() ==""){
              $.messager.alert("错误提示","用户名不能为空","error");
              return;
          }
          if($("#password").val() == ""){
              $.messager.alert("错误提示","密码不能为空","error");
              return;
          }
          if($("#passwordConfirm").val() != $("#password").val()){
              $.messager.alert("错误提示","确认密码和密码不一致","error");
              return;
          }
          var regex = new RegExp('(?=.*[0-9])(?=.*[a-zA-Z]).{8,20}');
          if(!regex.test($("#password").val())){
              $.messager.alert("错误提示","您的密码复杂度太低（密码中必须包含字母、数字、8-20位之间）","error");
              return;
          }
          var regData = $("#register").serializeObject();

          $.ajax({
              type: 'post',
              url: '${ctx}/bxlogin/register',
              data:JSON.stringify(regData),
              dataType: 'text',
              contentType: 'application/json',
              success:function(data){
                  var result = JSON.parse(data);
                  if(result.status != 1){
                      $.messager.alert("错误提示",result.message,"error");
                  }else{
                      alert("注册成功!");
                      $("#insure").combobox('setValue','');
                      $("#username").textbox('setValue','');
                      $("#password").textbox('setValue','');
                      $("#passwordConfirm").textbox('setValue','');
                      $("#regDg").dialog('close');
                      $("#logDg").dialog('open');
                  }
              }


          })
        }


  </script>
</head>
<body class="login">

<table border="0" align="center" width="800px">
    <tr style="width: 800px">
        <td style="height: 560px" colspan="3">
        </td>
    </tr>
    <tr style="width: 800px;">
        <td align="right">
            <a href="#" class="easyui-linkbutton"  data-options="size:'large'" onclick="openDsrSearch()" style="width: 180px;">当事人查询入口</a>
        </td>
        <td width="100px">
        </td>
        <td align="left">
            <a href="#" class="easyui-linkbutton"  data-options="size:'large'" onclick="openBxgsSearch()" style="width: 180px;">保险公司查询入口</a>
        </td>
    </tr>
</table>
<div id="logDg" class="easyui-dialog" title="登录窗口" data-options="modal:true,closed:true"
     style="width:400px;height:270px;padding:10px;" >
  <form id="ff"  method="post">
    <div style="height: 20px"></div>
    <table  align="center" valign="middle">
      <tr style="padding: 10px">
        <td style="font-size: 15px;font-family: 宋体;font-weight:bold;">用户名:</td>
        <td><input id="yhdm" class="easyui-textbox" type="text" name="yhdm" style="width:220px;height:35px;" data-options="iconCls:'icon-man',iconWidth:38" ></input></td>
      </tr>

      <tr>
        <td style="font-size: 15px;font-family: 宋体;font-weight:bold;">密码:</td>
        <td><input id="mm" class="easyui-textbox" type="password" name="mm" style="width: 220px;height:35px;" data-options="iconCls:'icon-lock',iconWidth:38"></input>
        </td>
      </tr>
    </table>
  </form>
  <div style="text-align:center;padding:20px">
    <a href="javascript:void(0)" class="easyui-linkbutton"  onclick="login()" style="padding:5px 0px;width: 290px" >登录</a>
  </div>
  <div>
    <a href="javascript:void(0)" onclick="openRegister()" >立即注册</a>
  </div>
</div>

<div id="regDg" class="easyui-dialog" title="注册窗口" data-options="modal:true,closed:true"
     style="width:400px;height:350px;padding:10px;" >
    <form id="register"  method="post">
        <div style="height: 20px"></div>
        <table  align="center" valign="middle">
            <tr style="padding: 10px">
                <td style="font-size: 15px;font-family: 宋体;font-weight: bold;">保险公司:</td>
                <td><select id = "insure" data-options="valueField:'value', textField:'text'" name="bxgsid"
                            class="easyui-combobox"
                            style="width:220px;height:35px;" editable="false"></select></td>
            </tr>
            <tr style="padding: 10px">
                <td style="font-size: 15px;font-family: 宋体;font-weight:bold;">用户名:</td>
                <td><input id="username" class="easyui-textbox" type="text" name="yhdm" style="width:220px;height:35px;"
                           data-options="iconCls:'icon-man',iconWidth:38" ></input></td>
            </tr>

            <tr>
                <td style="font-size: 15px;font-family: 宋体;font-weight:bold;">密码:</td>
                <td><input id="password" class="easyui-textbox" type="password" name="mm" style="width: 220px;height:35px;"
                           data-options="iconCls:'icon-lock',iconWidth:38"></input>
                </td>
            </tr>

            <tr>
                <td style="font-size: 15px;font-family: 宋体;font-weight:bold;">确认密码:</td>
                <td><input id="passwordConfirm" class="easyui-textbox" type="password" style="width: 220px;height:35px;"
                           data-options="iconCls:'icon-lock',iconWidth:38"></input>
                </td>
            </tr>
        </table>
    </form>
    <div style="text-align:center;padding:20px">
        <a href="javascript:void(0)" class="easyui-linkbutton"  onclick="register()"
           style="padding:5px 0px;width: 290px" >注册</a>
    </div>
</div>
</body>
</html>
