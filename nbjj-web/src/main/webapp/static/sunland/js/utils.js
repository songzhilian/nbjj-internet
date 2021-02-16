function showMsg(msg,msgType) {
    var div = $("#divMsg", parent.document);
    div.find("span").html(msg);
    div.removeClass();
    if(msgType) {
        switch(msgType) {
            case "success":
                div.addClass("alert");
                break;
            case "error":
                div.addClass("alert alert-error");
                break;
        }
    } else {
        div.addClass("alert");
    }

    var w = div.outerWidth(true);
    div.show().css('margin-left',-w/2).delay(2000).fadeOut();
}

$.fn.serializeObject = function () {
    var o = {};
    var a = this.serializeArray();
    $.each(a, function () {
        if (o[this.name] !== undefined) {
            if (!o[this.name].push) {
                o[this.name] = [o[$.trim(this.name)]];
            }
            o[this.name].push($.trim(this.value) || '');
        } else {
            //o[this.name] = this.value.trim() || '';
            o[this.name] = $.trim(this.value) || '';
        }
    });
    return o;
};

$.fn.tree.defaults.loadFilter = function (data, parent) {
    var opt = $(this).data().tree.options;
    var idField, textField, parentField;
    if (opt.parentField) {
        idField = opt.idField || 'id';
        textField = opt.textField || 'text';
        parentField = opt.parentField;
        var i, l, treeData = [], tmpMap = [];
        for (i = 0, l = data.length; i < l; i++) {
            tmpMap[data[i][idField]] = data[i];
        }
        for (i = 0, l = data.length; i < l; i++) {
            if (tmpMap[data[i][parentField]] && data[i][idField] != data[i][parentField]) {
                if (!tmpMap[data[i][parentField]]['children'])
                    tmpMap[data[i][parentField]]['children'] = [];
                data[i]['text'] = data[i][textField];
                tmpMap[data[i][parentField]]['children'].push(data[i]);
            } else {
                data[i]['text'] = data[i][textField];
                treeData.push(data[i]);
            }
        }
        return treeData;
    }
    return data;
};

$.fn.treegrid.defaults.loadFilter = function (data, parentId) {
    var opt = $(this).data().treegrid.options;
    var idField, textField, parentField;
    if (opt.parentField) {
        idField = opt.idField || 'id';
        textField = opt.textField || 'text';
        parentField = opt.parentField;
        var i, l, treeData = [], tmpMap = [];
        for (i = 0, l = data.length; i < l; i++) {
            tmpMap[data[i][idField]] = data[i];
        }
        for (i = 0, l = data.length; i < l; i++) {
            if (tmpMap[data[i][parentField]] && data[i][idField] != data[i][parentField]) {
                if (!tmpMap[data[i][parentField]]['children'])
                    tmpMap[data[i][parentField]]['children'] = [];
                data[i]['text'] = data[i][textField];
                tmpMap[data[i][parentField]]['children'].push(data[i]);
            } else {
                data[i]['text'] = data[i][textField];
                treeData.push(data[i]);
            }
        }
        return treeData;
    }
    return data;
};

$.fn.combotree.defaults.loadFilter = $.fn.tree.defaults.loadFilter;

$(document).ready(function () {
    var elements = $("input,select,textarea[class='note']");
    for (var i = 0; i < elements.length; i++) {
        var className = elements[i].className;
        if (className.indexOf("notEmpty") != -1) {
            var divElement = document.createElement("div");
            divElement.style.display = "inline";
            elements[i].parentNode.appendChild(divElement);
            elements[i].onblur = function () {
                var k = strlen(this.value.trim());
                if (k == 0) {
                    this.parentNode.childNodes[2].innerHTML = "<div class='validatebox-tip' style='display: inline; '><span class='validatebox-tip-content'>禁止为空,请输入！</span><span class='validatebox-tip-pointer' style='top: 6px;'></span></div>";
                } else {
                    this.parentNode.childNodes[2].innerHTML = "";
                }
            }
        }
        if (className.indexOf("ContactName") != -1) {
            var divElement = document.createElement("div");
            divElement.style.display = "inline";
            elements[i].parentNode.appendChild(divElement);
            elements[i].onblur = function () {
                var k = strlen(this.value.trim());
                if (k > 30 && k > 0) {
                    this.parentNode.childNodes[1].innerHTML = "<div class='validatebox-tip' style='display: inline; '><span class='validatebox-tip-content'>联系人不能超过30个字节！</span><span class='validatebox-tip-pointer' style='top: 6px;'></span></div>";
                } else {
                    this.parentNode.childNodes[1].innerHTML = "";
                }
            }
        }
        if (className.indexOf("contactMobile") != -1) {
            var patrn = /^\d{11}$/;
            var divElement = document.createElement("div");
            divElement.style.display = "inline";
            elements[i].parentNode.appendChild(divElement);
            elements[i].onblur = function () {
                if (patrn.test(this.value.trim()) == false && this.value.trim() != "") {
                    this.parentNode.childNodes[1].innerHTML = "<div class='validatebox-tip' style='display: inline; '><span class='validatebox-tip-content'>手机号码11位数！</span><span class='validatebox-tip-pointer' style='top: 6px;'></span></div>";
                } else {
                    this.parentNode.childNodes[1].innerHTML = "";
                }
            }
        }
        if (className.indexOf("note") != -1) {
            var divElement = document.createElement("div");
            divElement.style.display = "inline";
            elements[i].parentNode.appendChild(divElement);
            elements[i].onblur = function () {
                var k = strlen(this.value.trim());
                if (k > 60) {
                    this.parentNode.childNodes[3].innerHTML = "<div class='validatebox-tip' style='display: inline; '><span class='validatebox-tip-content'>备注不能超过60个字节！</span><span class='validatebox-tip-pointer' style='top: 6px;'></span></div>";
                } else {
                    this.parentNode.childNodes[3].innerHTML = "";
                }
            }
        }
    }
});



function strlen(str) {
    var len = 0;
    for (var i = 0; i < str.length; i++) {
        var c = str.charCodeAt(i);
        //单字节加1
        if ((c >= 0x0001 && c <= 0x007e) || (0xff60 <= c && c <= 0xff9f)) {
            len++;
        }
        else {
            len += 2;
        }
    }
    return len;
}

/*$.extend($.fn.validatebox.defaults.rules, {
    mobile: {
        validator: function (value, param) {
            var patrn = /^\d{11}$/;
            return patrn.test(value);
        },
        message: '手机号为11位数字!'
    }
});*/

function checkAll(id, checkName) {
    var isCheck = document.getElementById("" + id).checked;
    var allElement = document.getElementsByName("" + checkName);
    if (isCheck) {
        for (var i = 0; i < allElement.length; i++) {
            allElement[i].checked = true;
        }

    } else {
        for (var i = 0; i < allElement.length; i++) {
            allElement[i].checked = false;
        }
    }
}

function checkElements(checkName) {
    var total = 0;
    var allElement = document.getElementsByName("" + checkName);
    for (var i = 0; i < allElement.length; i++) {
        if (allElement[i].checked == true) {
            total++;
        }
    }
    return total;
}

function twoDecimal(value, rowData, rowIndex) {
    if (!value || isNaN(value)) {
        return 0;
    } else {
        return parseFloat(value).toFixed(2);
    }
}
function fourDecimal(value, rowData, rowIndex) {
    if (!value || isNaN(value)) {
        return 0;
    } else {
        return parseFloat(value).toFixed(4);
    }
}

function parseInteger(value, rowData, rowIndex) {
    if (!value || isNaN(value)) {
        return 0;
    } else {
        return parseInt(value);
    }
}

function convertNullStr(value){
    if(value == null || value == undefined){
        return "";
    }else{
        return value;
    }
}

function convertNullStr2(value){
    if(value == null || value == undefined){
        return "无";
    }else{
        return value;
    }
}

function closeDiv() {
    var elements = $("input,select,textarea[class='note']");
    for (var i = 0; i < elements.length; i++) {
        var className = elements[i].className;
        if (className.indexOf("notEmpty") != -1 || className.indexOf("ContactName") != -1 || className.indexOf("contactMobile") != -1 || className.indexOf("note") != -1) {
            var span = elements[i].parentNode.childNodes[1];
            span.innerHTML = "";
        }
    }
}

//CheckBox三状态
function checkboxInit(checkbox, initValue) {
    switch (initValue) {
        case 0:
            checkbox.data('checked', 0).prop('indeterminate', false).prop('checked', false);
            break;
        case 1:
            checkbox.data('checked', 1).prop('indeterminate', false).prop('checked', true);
            break;
        default :
            checkbox.data('checked', -1).prop('indeterminate', true).prop('checked', false);
            break;
    }
    checkbox.unbind("click").bind('click', function () {
        switch (checkbox.data('checked')) {
            // 不选中  转变为  选中
            case 0:
                checkbox.data('checked', 1);
                checkbox.prop('indeterminate', false);
                checkbox.prop('checked', true);
                break;
            // 半选中  转变为  不选中
            case -1:
                checkbox.data('checked', 0);
                checkbox.prop('indeterminate', false);
                checkbox.prop('checked', false);
                break;
            // 选中  转变为  半选中
            case 1:
                checkbox.data('checked', -1);
                checkbox.prop('indeterminate', true);
                checkbox.prop('checked', false);
        }
    });
}

function convertNull(data) {
    if (data == null || data == undefined) {
        return '';
    }
    return data;
}

function setCheckboxValue(checkbox,value){
    if(value!=null && value.toString()!=''){
        checkboxInit(checkbox,value?1:0);
    }else{
        checkboxInit(checkbox,-1);
    }
}

Date.prototype.format = function (fmt) {
    var o = {
        "M+": this.getMonth() + 1,                 //月份
        "d+": this.getDate(),                    //日
        "h+": this.getHours(),                   //小时
        "m+": this.getMinutes(),                 //分
        "s+": this.getSeconds(),                 //秒
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度
        "S": this.getMilliseconds()             //毫秒
    };
    if (/(y+)/.test(fmt))
        fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt))
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
};

$.extend($.fn.datagrid.defaults.editors, {
    datetimebox: {
        init: function (container, options) {
            var input = $('<input />').appendTo(container);
            return input.datetimebox();
        },
        getValue: function (target) {
            return $(target).datetimebox("getValue");
        },
        setValue: function (target, value) {
            $(target).datetimebox("setValue", value);
        },
        resize: function (target, width) {
            $(target).datetimebox('resize', width);
        },
        destroy: function (target) {
            $(target).datetimebox('destroy');
        }
    }
});

function dateTimeFormatter(value, row, index) {
    if (value == undefined) {
        return "";
    }
    return new Date(value).format("yyyy-MM-dd hh:mm:ss");
}

function phoneCheck(value,type) {
    if(value.replace(/(^\s*)|(\s*$)/g,"")) {
    var pubPat = /(\*)+/;
    var pubPattern = /(^(\d{11})$|(^(\d{7,8})$|^(\d{4}|\d{3})(-|(\s)*)(\d{7,8})$|^(\d{4}|\d{3})(-|(\s)*)(\d{7,8})(-|(\s)*)(\d{4}|\d{3}|\d{2}|\d{1})$|^(\d{7,8})(-|(\s)*)(\d{4}|\d{3}|\d{2}|\d{1})$))/;
    var mobile = /^(\d{11,14})/;
    var phone = /^((\d{7,8})|^(\d{4}|\d{3})(-|(\s)*)(\d{7,8})|(\d{4}|\d{3})(-|(\s)*)(\d{7,8})(-|(\s)*)(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})(-|(\s)*)(\d{4}|\d{3}|\d{2}|\d{1}))$/;

    switch (type) {
        case 'mobile':
            if (mobile.test(value)) {
                return true;
            }else{
                return false;
            }
            break;

        case 'phone' :
            if (phone.test(value)) {
                return true;
            }else{
                return false;
            }
            break;
        default :
            if (pubPat.test(value)) {
                return false;
            }else{
                return true;
            }
            break;

    }
    }else {
        return true;
    }
}



