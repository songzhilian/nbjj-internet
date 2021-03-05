<#assign ctx="${rc.contextPath}">
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>宁波交警网上事故自行协商审核</title>
    <script type="text/javascript" src="${ctx}/static/easyui-1.4.5/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/easyui-1.4.5/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/easyui-1.4.5/jquery.cookie.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/easyui-1.4.5/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="${ctx}/static/sunland/js/utils.js"></script>
    <script type="text/javascript" src="${ctx}/static/sunland/js/dict.js"></script>
    <link rel="stylesheet" href="${ctx}/static/easyui-1.4.5/themes/default/easyui.css" type="text/css"></link>
    <link rel="stylesheet" href="${ctx}/static/easyui-1.4.5/themes/icon.css" type="text/css"></link>
    <link rel="stylesheet" href="${ctx}/static/sunland/css/ydjw.css" type="text/css"></link>
    <link rel="stylesheet" href="${ctx}/static/sunland/css/style.css" type="text/css"></link>



    <script type="text/javascript">
        $(function(){
            initTab();
            var pageNumber = '${pageNumber!}';
            var pageSize = '${pageSize!}';
            if (pageNumber == '') {
                pageNumber = 1;
                pageSize = 10;
            }
            $('#acdDg').datagrid({
                pagination:true,
                rownumbers:true,
                singleSelect:true,
                pageNumber: parseInt(pageNumber),
                pageSize: parseInt(pageSize),
                idField:'lsh',
                height: '450px',
                url:'${ctx}/acd/data/verifyList',
                onClickRow: subDataGrid,
                frozenColumns:[[

                    {field: 'sgbh', title: '事故编号',width:200,align:'center'},
                    {field: 'sgfssj', title: '事故时间',width:150,align:'center',formatter:getDate}

                ]],
                columns: [
                    [
                        {fieid: 'lsh',hidden: true},
                        {field: 'sgdd', title: '事故地点',width:360,align:'center'},
                        {field: 'yl2', title: '简易事故类型',width:100,align:'center',formatter:getSglx},
                        {field: 'zt',title: '状态',width:100,align: 'center',formatter: getZt},
                        {field: 'operate',title: '操作',width: 100,align: 'center',formatter: operateBtn}
                    ]
                ],
                toolbar:$("#tb")
            });
        });

        function initTab(){
            var tabs = $('#tabId').tabs().tabs('tabs');
            for(var i=0; i<tabs.length; i++){
                tabs[i].panel('options').tab.unbind().bind('mouseenter',{index:i},function(e){
                    $('#tabId').tabs('select', e.data.index);
                });
            }
        }
        
        function operateBtn(value,row,index) {
            var actions = [];
            var str1 = '<a  href="#" rel="external nofollow" name="view" class="easyui-linkbutton" id="agree" ' +
                    'onclick="agree('
                    + row.lsh
                    + ')">通过</a>';
            var str2 = '<a  href="#" rel="external nofollow" name="view" class="easyui-linkbutton" id="disagree" ' +
                    'onclick="disagree('
                    + row.lsh
                    + ')">不通过</a>';
            if(row.zt == '2'){
                actions.push(str1);
                actions.push(str2);
                actions.join('  |  ');
            }else {
                actions.push('已审核');
            }
            return actions;
        }

        function agree(index){
            $.ajax({
                type: 'post',
                url: '${ctx}/acd/data/verifyZxxs',
                data: {lsh:index,zt: '3',yl2:''},
                success: function (data) {
                    $('#acdDg').datagrid('reload');
                    if(data.status ==1){
                        $.messager.alert("成功提示",data.message,"success");
                    }else{
                        $.messager.alert("错误提示",data.message,"error");
                    }
                }
            })
        }
        function disagree(index){
            $("#disagreeDg").dialog('open');
            $("#lsh").val(index);
        }

        function updateZxxsVerify(){
            var lsh = $("#lsh").val();
            var yl2 = $("#yl2").val();
            if(yl2 == ""){
                $.messager.alert("错误提示",'审核不通过时，需输入原因','error');
                return;
            }
            $.ajax({
                type: 'post',
                url: '${ctx}/acd/data/verifyZxxs',
                data: {lsh:lsh,zt:'4',yl2: yl2},
                success: function (data) {
                    $('#acdDg').datagrid('reload');
                    $("#disagreeDg").dialog('close');
                    if(data.status ==1){
                        $.messager.alert("成功提示",data.message,"success");
                    }else{
                        $.messager.alert("错误提示",data.message,"error");
                    }
                }
            })
        }
        function getDate(value, row, index) {
            if (value) {
                return new Date(value).format('yyyy-MM-dd hh:mm:ss');
            }
            return '';
        }

        function openUpdatePwd() {
            var yhdm = ${userInfo.yhdm};
            $("#yhdm").textbox('setValue',yhdm);
            $("#updatePwdDg").dialog('open');
        }

        function getSglx(value, row, index){
            if(value == '999999'){
                return '现场处理';
            }else if(value == '999996'){
                return '事后处理';
            }else{
                return '现场处理';
            }
        }

        function getSgzr(value, row, index){
            if(value == '1'){
                return '全部';
            }else if(value == '2'){
                return '主要';
            }else if(value == '3'){
                return '同等';
            }else if(value == '4'){
                return '次要';
            }else if(value == '5'){
                return '无责';
            }else if(value == '6'){
                return '无法认定';
            }
        }

        function getRybh(value, row, index){
            if(value == '1'){
                return '甲';
            }else if(value == '2'){
                return '已';
            }else if(value == '3'){
                return '丙';
            }else if(value == '4'){
                return '丁';
            }else if(value == '5'){
                return '戊';
           }
        }

        function getXb(value, row, index){
            if(value == '1'){
                return '男';
            }else if(value == '2'){
                return '女';
            }else{
                return '';
            }
        }

        function  getZy(value) {
            if(value == '1'){
                return '快递';
            }else if(value == '2'){
                return '外卖';
            }else if(value == '3'){
                return '公交车';
            }else if(value == '4'){
                return '出租车';
            }else if(value == '5'){
                return '网约车'
            }else if(value == '6'){
                return '校车';
            }else if(value == '7'){
                return '工程车';
            }else if(value == '8'){
                return '危化品运输车';
            }else if(value =='9'){
                return '其他';
            }
        }

        function  getShcd(value) {
            if(value == '1'){
                return '死亡';
            }else if(value == '2'){
                return '重伤';
            }else if(value == '3'){
                return '轻伤';
            }else if(value == '4'){
                return '不明';
            }else if(value == '5'){
                return '无伤害';
            }
        }

        function getLkldlx(value){
            if(value == '1'){
                return '路段';
            }else if(value == '2'){
                return '交叉口';
            }else if(value == '3'){
                return '高架';
            }else if(value == '4'){
                return '匝道口';
            }else if(value == '5'){
                return '停车场';
            }else if(value == '6'){
                return '小区';
            }else if(value == '9'){
                return '其他';
            }else {
                return '';
            }
        }

        function getZt(value){
            if(value == '2'){
                return '未审核';
            }else if(value =='3'){
                return '<span style="color: green">通过</span>';
            }else if(value =='4'){
                return '<span style="color: red">不通过</span>';
            }else {
                return '';
            }
        }

        function resetForm(){
            $("#frmSearch").form('clear');
        }

        function searchAcd(){
            var data = $("#frmSearch").serializeObject();
            $('#acdDg').datagrid('load', data);
        }

        //子项菜单
        function subDataGrid(index, row){
            $.post("${ctx}/acd/data/zxxsItem",{lsh:row.lsh},function(data){
                if(data != null) {
                    row = data;
                    $("#acdInfo").panel({content:showAcdInfo(row)}); //加入面板内容


                    $('#acdRyInfo').datagrid({
                        pagination:false,
                        singleSelect: true,
                        rownumbers: true,
                        data:row.list,
                        fitColumns: false,
                        loadMsg: '',
                        height: 'auto',
                        frozenColumns:[[
                            {field: 'rybh', title: '人员编号', width: 100,align:'center',formatter:getRybh},
                            {field: 'xm', title: '姓名', width: 100,align:'center'},
                            {field: 'sfzmhm', title: '身份证号', width: 140,align:'center'},
                            {field: 'dh', title: '联系电话', width: 140,align:'center'},
                            {field: 'sgzr', title: '事故责任',width: 100,align:'center',formatter:getSgzr},
                            {field: 'hphm', title: '号牌号码',width: 100,align:'center'},
                            {field: 'hpzl', title: '号牌种类',width: 100,align:'center',formatter:getHpzl}

                        ]],
                        columns: [
                            [
                                {field: 'xb', title: '性别',width: 100,align:'center',formatter:getXb},
                                {field: 'nl', title: '年龄', formatter: parseInteger,width: 80,align:'center'},
                                {field: 'zy', title: '职业', width: 250,align:'center',formatter: getZy},
                                {field: 'pzbw', title: '碰撞部位',width: 100,align:'center'},
                                {field: 'shcd', title: '伤害程度',width: 100,align:'center',formatter:getShcd},
                                {field: 'zjcx', title: '准驾车型',width: 100,align:'center'},
                                {field: 'clpp', title: '车辆品牌',width: 150,align:'center'},
                                {field: 'clxh', title: '车辆型号',width: 150,align:'center'},
                                {field: 'cllx', title: '车辆类型',width: 150,align:'center'},
                                {field: 'jdcsyr', title: '机动车所有人',width: 150,align:'center'},
                                {field: 'bxgs', title: '保险公司',width: 200,align:'center'},
                                {field: 'bxpzh', title: '保险凭证号',width: 150,align:'center'}


                            ]
                        ]
                    });

                }else{
                    $.messager.alert('错误提示','获取数据异常','error');
                    return;
                }
            });
        }

        function showAcdInfo(row){
            var html = "<table>";
            html += '<tr style="width: 1000px">';
            html += '<td style="font-size: 12px;width:80px;" align="right">事故编号:</td>';
            html += '<td style="width: 180px"><input class="easyui-textbox" type="text" name="name" style="width:180px;height:25px;" value="'+convertNullStr(row.sgbh)+'" editable="false"></input></td>';
            html += '<td style="font-size: 12px;width:100px;" align="right">事故发生时间:</td>';
            html += '<td style="width: 180px"> <input class="easyui-textbox" type="text" name="name" style="width:180px;height:25px;" value="'+getDate(row.sgfssj)+'" editable="false"></input></td>';
            html += '<td style="font-size: 12px;width:80px;" align="right">路名:</td>';
            html += '<td style="width: 200px"><input class="easyui-textbox" type="text" name="name" style="width:200px;height:25px;" value="'+convertNullStr(row.lm)+'" editable="false"></input></td>';
            html += '<td style="font-size: 12px;width:80px;" align="right">路号:</td>';
            html += '<td style="width: 120px"><input class="easyui-textbox" type="text" name="name" style="width:120px;height:25px;" value="'+convertNullStr(row.lh)+'" editable="false"></input></td>';
            html += ' </tr>';

            html += '<tr style="width: 1000px">';
            html += '<td style="font-size: 12px;width:80px;" align="right">事故地点:</td>';
            html += '<td style="width: 180px"><input class="easyui-textbox" type="text" name="name" style="width:180px;height:25px;" value="'+convertNullStr(row.sgdd)+'" editable="false"></input></td>';
            html += '<td style="font-size: 12px;width:100px;" align="right">路况路段类型:</td>';
            html += '<td style="width: 180px"> <input class="easyui-textbox" type="text" name="name" ' +
                    'style="width:180px;height:25px;" value="'+getLkldlx(row.lkldlx)+'" editable="false"></input></td>';
            html += '<td style="font-size: 12px;width:80px;" align="right">公里数:</td>';
            html += '<td style="width: 200px"><input class="easyui-textbox" type="text" name="name" style="width:200px;height:25px;" value="'+convertNullStr(row.gls)+'" editable="false"></input></td>';
            html += '<td style="font-size: 12px;width:80px;" align="right">米数:</td>';
            html += '<td style="width: 120px"><input class="easyui-textbox" type="text" name="name" style="width:120px;height:25px;" value="'+convertNullStr(row.ms)+'" editable="false"></input></td>';
            html += ' </tr>';

            html += '<tr style="width: 1000px">';
            html += '<td style="font-size: 12px;width:80px;" align="right">路况方向:</td>';
            html += '<td style="width: 180px"><input class="easyui-textbox" type="text" name="name" style="width:180px;height:25px;" value="'+convertNullStr(row.lkfx)+'" editable="false"></input></td>';
            html += '<td style="font-size: 12px;width:100px;" align="right">电子坐标:</td>';
            html += '<td style="width: 180px"> <input class="easyui-textbox" type="text" name="name" style="width:180px;height:25px;" value="'+convertNullStr(row.dzzb)+'" editable="false"></input></td>';
            html += '<td style="font-size: 12px;width:80px;" align="right">天气:</td>';
            html += '<td style="width: 200px"><input class="easyui-textbox" type="text" name="name" style="width:200px;height:25px;" value="'+getDict_Tq(row.tq)+'" editable="false"></input></td>';
            html += '<td style="font-size: 12px;width:80px;" align="right">环境:</td>';
            html += '<td style="width: 120px"><input class="easyui-textbox" type="text" name="name" style="width:120px;height:25px;" value="'+getHj(row.hj)+'" editable="false"></input></td>';
            html += ' </tr>';

            html += '<tr style="width: 1000px">';
            html += '<td style="font-size: 12px;width:80px;" align="right">事故类型:</td>';
            html += '<td style="width: 180px"><input class="easyui-textbox" type="text" name="name" style="width:180px;height:25px;" value="'+getGlxzdj(row.glxzdj)+'" editable="false"></input></td>';
            html += '<td style="font-size: 12px;width:100px;" align="right">事故认定原因:</td>';
            html += '<td style="width: 180px"> <input class="easyui-textbox" type="text" name="name" ' +
                    'style="width:180px;height:25px;" value="'+convertNullStr(row.sgrdyy)+'" ' +
                    'editable="false"></input></td>';
            html += '<td style="font-size: 12px;width:80px;" align="right">事故形态:</td>';
            html += '<td style="width: 200px"><input class="easyui-textbox" type="text" name="name" style="width:200px;height:25px;" value="'+getSgxt(row.sgxt)+'" editable="false"></input></td>';
            html += '<td style="font-size: 12px;width:80px;" align="right">事故严重程度:</td>';
            html += '<td style="width: 120px"><input class="easyui-textbox" type="text" name="name" ' +
                    'style="width:120px;height:25px;" value="'+getSgyzcd(row.sgyzcd)+'" editable="false"></input></td>';
            html += ' </tr>';

            html += '<tr style="width: 1000px">';
            html += '<td style="font-size: 12px;width:80px;" align="right">事故处理方式:</td>';
            html += '<td style="width: 180px"><input class="easyui-textbox" type="text" name="name" ' +
                    'style="width:180px;height:25px;" value="'+getSgclfs(row.sgclfs)+'" editable="false"></input></td>';
            html += '<td style="font-size: 12px;width:100px;" align="right">赔偿履行方式:</td>';
            html += '<td style="width: 180px"> <input class="easyui-textbox" type="text" name="name" ' +
                    'style="width:180px;height:25px;" value="'+getPclxfs(row.pclxfs)+'" editable="false"></input></td>';
            html += '<td style="font-size: 12px;width:80px;" align="right">采集民警:</td>';
            html += '<td style="width: 200px"><input class="easyui-textbox" type="text" name="name" ' +
                    'style="width:200px;height:25px;" value="'+convertNullStr(row.cjmj)+'" ' +
                    'editable="false"></input></td>';
            html += '<td style="font-size: 12px;width:80px;" align="right">执勤民警:</td>';
            html += '<td style="width: 120px"><input class="easyui-textbox" type="text" name="name" ' +
                    'style="width:120px;height:25px;" value="'+convertNullStr(row.zqmj)+'" ' +
                    'editable="false"></input></td>';
            html += ' </tr>';

            html += '<tr style="width: 1000px">';
            html += '<td style="font-size: 12px;width:80px;" align="right">开单时间:</td>';
            html += '<td style="width: 180px"><input class="easyui-textbox" type="text" name="name" ' +
                    'style="width:180px;height:25px;" value="'+getDate(row.kdsj)+'" editable="false"></input></td>';
            html += '<td style="font-size: 12px;width:100px;" align="right">录入时间:</td>';
            html += '<td style="width: 180px" colspan="3"> <input class="easyui-textbox" type="text" name="name" ' +
                    'style="width:520px;height:25px;" value="'+getDate(row.lrsj)+'" ' +
                    'editable="false"></input></td>';
            html += '<td style="font-size: 12px;width:80px;" align="right">照片数量:</td>';
            html += '<td style="width: 180px"><input class="easyui-textbox" type="text" name="name" ' +
                    'style="width:120px;height:25px;" value="'+convertNullStr(row.zp)+'" ' +
                    'editable="false"></input></td>';
//            html += '<td style="font-size: 12px;width:80px;" align="right">人员数量:</td>';
//            html += '<td style="width: 180px"><input class="easyui-textbox" type="text" name="name" ' +
//                    'style="width:120px;height:25px;" value="'+convertNullStr(row.rysl)+'" ' +
//                    'editable="false"></input></td>';
            html += ' </tr>';

            html += '<tr style="width: 1000px">';
            html += '<td style="font-size: 12px;width:80px;" align="right">赔偿履行方式描述:</td>';
            html += '<td style="width: 810px" colspan="7"><input class="easyui-textbox" type="text" name="name" ' +
                    'style="width:810px;height:25px;" value="'+convertNullStr(row.pclxfsms)+'" ' +
                    'editable="false"></input></td>';
            html += ' </tr>';

            html += "</table>";
            return html;
        }

        function printWs(){
            var data = $("#acdDg").datagrid("getSelected");
            if(data != null){
                window.open('${ctx}/acd/bxgs/print?lsh='+data.lsh+"&type=bxgs",'newwindow','top=0,left=0,toolbar=yes,menubar=yes,scrollbars=yes, resizable=yes,location=yes, status=yes');
            }else{
                $.messager.alert('提示', '请选择要打印的数据',"warning");
            }
        }

        function logout(){
            $.messager.confirm('提示信息', '确定退出？', function(r){
                if (r){
                    window.location.href="${ctx}/bxlogin/logout";
                }
            });
        }

        function updatePwd(){

            if($("#mm").val() == ""){
                $.messager.alert("错误提示","旧密码不能为空","error");
                return;
            }
            if($("#mmNew").val() == ""){
                $.messager.alert("错误提示","新密码不能为空","error");
                return;
            }
            if($("#mmNew").val() == $("#mm").val()){
                $.messager.alert("错误提示","新密码不能和旧密码相同","error");
                return;
            }
            var regex = new RegExp('(?=.*[0-9])(?=.*[a-zA-Z]).{8,20}');
            if(!regex.test($("#mmNew").val())){
                $.messager.alert("错误提示","您的密码复杂度太低（密码中必须包含字母、数字、8-20位之间）","error");
                return;
            }
            var updateData = $("#updatePwd").serializeObject();
            $.ajax({
                type: 'post',
                url: '${ctx}/bxlogin/updateUser',
                data: JSON.stringify(updateData),
                dataType: 'text',
                contentType: 'application/json',
                success: function (data) {
                    var result = JSON.parse(data);
                    if (result.status != 1){
                        $.messager.alert('错误提示',result.message,"error");
                    }else{
                        $.messager.alert("成功提示",result.message,"success");
                        $("#updatePwdDg").dialog('close');
                    }
                }
            })
        }
    </script>
</head>
<body >
<div id="main" class="easyui-layout" >
    <div class="top">
    </div>

    <div style="width: 80%;margin:0px auto">
        <table style="width: 100%" align="center">
            <tr>
                <td>
                    <div class="user" >
                        <div class="user-img"></div>
                        <div class="user-label">欢迎您!<span class="user-color"></span></div>
                    </div>
                    <div class="clock"><div class="clock-ico"></div>日期：<span id="time"></span></div>
                    <script language="javascript">
                        $('.user').width($('.user-label').width()+35);
                        setInterval("document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);
                    </script>
                    <div class="user-logout">
                        <div class="logout-ico"></div><a href="#" onclick="logout()">安全退出</a>
                    </div>
                    <div class="user-updatePwd">
                        <div class="lock-ico"></div><a href="#" onclick="openUpdatePwd()">修改密码</a>
                    </div>
                </td>
                </tr>
        </table>
    </div>

    <div style="width: 80%;margin:0px auto">
        <!-- 表单编辑区域 -->

        <table id="acdDg" style="width: 100%" title="简易事故查询打印"></table>
        <div id="tb" style="padding:5px;height:auto">
            <div style="margin-bottom:5px">
                <a href="#" class="easyui-linkbutton" iconCls="icon-print" plain="true" onclick="printWs()">打印</a>
            </div>
            <form id="frmSearch" method="post">
                <div>
                    事故编号: <input class="easyui-textbox" type="text" id="sgbh" name="sgbh" data-options="required:false" style="width:220px"/>
                    事故时间: <input id="sgsjStart" name="sgsjStart" class="easyui-datetimebox"  editable="false" style="width:150px">
                    至: <input id="sgsjEnd" name="sgsjEnd" class="easyui-datetimebox"  editable="false" style="width:150px">
                    事故地点: <input class="easyui-textbox" type="text" id="sgdd" name="sgdd" data-options="required:false" style="width:220px"/>
                    当事人: <input id="dsr" name="dsr" class="easyui-textbox"  style="width:150px">

                </div>
                <div style="height: 10px">
                </div>
                <div>
                    号牌号码: <input id="hphm" name="hphm" class="easyui-textbox"  style="width:220px">
                    身份证号: <input id="sfzmhm" name="sfzmhm" class="easyui-textbox"  style="width:150px">
                    手机号: <input id="sjhm" name="sjhm" class="easyui-textbox"  style="width:150px">
                    <a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="searchAcd()">查询</a>
                    <a href="#" class="easyui-linkbutton" iconCls="icon-redo" onclick="resetForm()">重置</a>
                </div>
            </form>
    </div>
</div>
    <div id="tabId" style="width: 80%;margin:0px auto;height: 250px;" class="easyui-tabs">
        <div title="事故自行协商" style="padding:10px">
            <table id="acdInfo"></table>
        </div>

        <div title="事故自行协商人员信息" style="width: 100%;padding:10px">
            <table id="acdRyInfo" style="width: 100%"></table>
        </div>
    </div>
    <div id="updatePwdDg" class="easyui-dialog" title="修改密码窗口" data-options="modal:true,closed:true"
         style="width:400px;height:270px;padding:10px;" >
        <form id="updatePwd"  method="post">
            <div style="height: 20px"></div>
            <table  align="center" valign="middle">
                <tr style="padding: 10px">
                    <td style="font-size: 15px;font-family: 宋体;font-weight:bold;">用户名:</td>
                    <td><input id="yhdm" class="easyui-textbox" type="text" name="yhdm" style="width:220px;height:35px;"
                               data-options="iconCls:'icon-man',iconWidth:38" readonly="readonly"></input></td>
                </tr>

                <tr>
                    <td style="font-size: 15px;font-family: 宋体;font-weight:bold;">原密码:</td>
                    <td><input id="mm" class="easyui-textbox" type="password" name="mm" style="width: 220px;height:35px;" data-options="iconCls:'icon-lock',iconWidth:38"></input>
                    </td>
                </tr>

                <tr>
                    <td style="font-size: 15px;font-family: 宋体;font-weight:bold;">新密码:</td>
                    <td><input id="mmNew" class="easyui-textbox" type="password" name="mmNew" style="width: 220px;
                    height:35px;" data-options="iconCls:'icon-lock',iconWidth:38"></input>
                    </td>
                </tr>


            </table>
        </form>
        <div style="text-align:center;padding:20px">
            <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="updatePwd()">确定</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#updatePwdDg').dialog('close')">关闭</a>
        </div>

    </div>

    <div id="disagreeDg" class="easyui-dialog" title="审核不通过窗口" data-options="modal:true,closed:true"
         style="width:400px;height:270px;padding:10px;" >
        <form id="updateZxxsVerify"  method="post">
            <div style="height: 20px"></div>
            <table  align="center" valign="middle">
                <div id="lsh" hidden="hidden"></div>
                <tr style="padding: 10px">
                    <td style="font-size: 15px;font-family: 宋体;font-weight:bold;">原因:</td>
                    <td><input id="yl2" class="easyui-textbox" type="text" name="yl2" style="width:220px;
                    height:35px;"data-options="multiline:true" ></input></td>
                </tr>
            </table>
        </form>
        <div style="text-align:center;padding:20px">
            <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok"
               onclick="updateZxxsVerify()">确定</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#disagreeDg').dialog('close')">关闭</a>
        </div>

    </div>
    </div>
</div>
</body>

</html>