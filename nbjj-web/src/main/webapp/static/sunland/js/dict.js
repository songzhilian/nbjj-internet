/**
 * 主要是数据的字典
 */
function getDict_Tq(value){
    if(value == '1'){
        return "晴";
    }else if(value == '2'){
        return "阴";
    }else if(value == '3'){
        return "雨";
    }else if(value == '4'){
        return "雪";
    }else if(value == '5'){
        return "雾";
    }else if(value == '6'){
        return "大风";
    }else if(value == '7'){
        return "沙尘";
    }else if(value == '8'){
        return "冰雹";
    }else if(value == '9'){
        return "其它";
    }else{
        return "其它";
    }
}

/**
 * 事故交通方式
 * @param value
 */
function getDict_AcdJtfs(value){
    if(value == 'A1'){
        return "步行";
    }else if(value == 'C1'){
        return "乘大中型汽车";
    }else if(value == 'C2'){
        return "乘小微型客车";
    }else if(value == 'C3'){
        return "乘普通货车";
    }else if(value == 'C4'){
        return "乘汽车列车";
    }else if(value == 'C5'){
        return "乘三轮汽车和低速货车";
    }else if(value == 'C6'){
        return "乘摩托车";
    }else if(value == 'C7'){
        return "乘拖拉机";
    }else if(value == 'C8'){
        return "乘其他机动车";
    }else if(value == 'C9'){
        return "乘其他非机动车";
    }else if(value == 'F1'){
        return "自行车";
    }else if(value == 'F2'){
        return "三轮车";
    }else if(value == 'F3'){
        return "手推车";
    }else if(value == 'F4'){
        return "残疾人专用车";
    }else if(value == 'F5'){
        return "畜力车";
    }else if(value == 'F6'){
        return "电动自行车";
    }else if(value == 'F9'){
        return "其它非机动车";
    }else if(value == 'G1'){
        return "驾驶汽车列车";
    }else if(value == 'H1'){
        return "驾驶重型货车";
    }else if(value == 'H2'){
        return "驾驶中型货车";
    }else if(value == 'H3'){
        return "驾驶轻型货车";
    }else if(value == 'H4'){
        return "驾驶微型货车";
    }else if(value == 'J1'){
        return "驾驶其他机动车";
    }else if(value == 'K1'){
        return "驾驶大型客车";
    }else if(value == 'K2'){
        return "驾驶中型客车";
    }else if(value == 'K3'){
        return "驾驶小型客车";
    }else if(value == 'K4'){
        return "驾驶微型客车";
    }else if(value == 'M1'){
        return "驾驶普通摩托车";
    }else if(value == 'M2'){
        return "驾驶轻便摩托车";
    }else if(value == 'N1'){
        return "驾驶三轮汽车";
    }else if(value == 'N2'){
        return "驾驶低速货车";
    }else if(value == 'Q1'){
        return "驾驶其他汽车";
    }else if(value == 'T1'){
        return "驾驶拖拉机";
    }else if(value == 'X9'){
        return "其它";
    }
}

/**
 * 道路类型
 * @param value
 * @returns {*}
 */
function getDllx(value) {
    if(value == '10'){
        return '高速';
    }else if(value == '11'){
        return '一级';
    }else if(value == '12'){
        return '二级';
    }else if(value == '13'){
        return '三级';
    }else if(value == '14'){
        return '四级';
    }else if(value == '19'){
        return '等外';
    }else if(value == '21'){
        return '城市快速路';
    }else if(value == '22'){
        return '一般城市道路';
    }else if(value == '25'){
        return '单位小区自建路';
    }else if(value == '26'){
        return '公共停车场';
    }else if(value == '27'){
        return '公共广场';
    }else if(value == '29'){
        return '其他路';
    }else{
        return '';
    }
}

/**
 * 公路行政等级
 * @param value
 */
function getGlxzdj(value){
    if(value == '1'){
        return '国道';
    }else if(value == '2'){
        return '省道';
    }else if(value == '3'){
        return '县道';
    }else if(value == '4'){
        return '乡道';
    }else if(value == '9'){
        return '其他';
    }else{
        return '';
    }
}

/**
 * 现场
 */
function getXc(value){
    if(value == '1'){
        return '原始';
    }else if(value == '2'){
        return '变动';
    }else if(value == '3'){
        return '驾车逃逸';
    }else if(value == '4'){
        return '弃车逃逸';
    }else if(value == '5'){
        return '无现场';
    }else if(value == '6'){
        return '二次现场';
    }else if(value == '7'){
        return '伪造现场';
    }else{
        return '';
    }
}

/**
 * 事故形态
 * @param value
 */
function getSgxt(value){
    if(value == '11'){
        return '碰撞运动车辆';
    }else if(value == '12'){
        return '碰撞静止车辆';
    }else if(value == '19'){
        return '其他车辆间事故';
    }else if(value == '21'){
        return '刮撞行人';
    }else if(value == '22'){
        return '碾压行人';
    }else if(value == '23'){
        return '碰撞后碾压行人';
    }else if(value == '29'){
        return '其他车辆与人事故';
    }else if(value == '31'){
        return '侧翻';
    }else if(value == '32'){
        return '滚翻';
    }else if(value == '33'){
        return '坠车';
    }else if(value == '34'){
        return '失火';
    }else if(value == '35'){
        return '撞固定物';
    }else if(value == '36'){
        return '撞非固定物';
    }else if(value == '37'){
        return '自身折叠';
    }else if(value == '38'){
        return '乘员跌落或抛出';
    }else{
        return '';
    }
}

/**
 * 车辆间事故
 * @param value
 */
function getCljsg(value){
    if(value == '1'){
        return '追尾碰撞';
    }else if(value == '2'){
        return '正面碰撞';
    }else if(value == '3'){
        return '侧面碰撞(同向)';
    }else if(value == '4'){
        return '侧面碰撞(对向)';
    }else if(value == '5'){
        return '侧面碰撞(直角)';
    }else if(value == '6'){
        return '侧面碰撞(角度不确定)';
    }else if(value == '7'){
        return '同向刮擦';
    }else if(value == '8'){
        return '对向刮擦';
    }else if(value == '9'){
        return '其他角度碰撞';
    }else{
        return '';
    }
}

/**
 * 单车事故
 * @param value
 */
function getDcsg(value){
    if(value == '11'){
        return '中央隔离设施';
    }else if(value == '12'){
        return '同向护栏';
    }else if(value == '13'){
        return '对向护栏';
    }else if(value == '14'){
        return '交通标识支撑物';
    }else if(value == '15'){
        return '缓冲物';
    }else if(value == '16'){
        return '直立的杆或路灯柱';
    }else if(value == '17'){
        return '树木';
    }else if(value == '18'){
        return '桥墩';
    }else if(value == '19'){
        return '隧道口挡墙';
    }else if(value == '20'){
        return '建筑物';
    }else if(value == '21'){
        return '山体';
    }else if(value == '29'){
        return '其他';
    }else if(value == '31'){
        return '动物';
    }else if(value == '32'){
        return '作业/维修设备';
    }else if(value == '39'){
        return '其他';
    }else{
        return '';
    }
}

/**
 * 调解方式
 * @param value
 */
function getTjfs(value){
    if(value == '1'){
        return '自行协商';
    }else if(value == '2'){
        return '人民调解';
    }else if(value == '3'){
        return '行政调解';
    }else if(value == '4'){
        return '司法调解';
    }
}

/**
 * 结案方式
 * @param value
 */
function getJafs(value){
    if(value == '1'){
        return '调解结案';
    }else if(value == '2'){
        return '不同意调解';
    }else if(value == '3'){
        return '对认定有异议';
    }else if(value == '4'){
        return '拒绝签字';
    }
}

/**
 * 号牌种类
 * @param value
 * @param row
 * @param index
 */
function getHpzl(value, row, index){
    if(value == '01'){
        return '大型汽车';
    }else if(value == '02'){
        return '小型汽车';
    }else if(value == '03'){
        return '使馆汽车';
    }else if(value == '04'){
        return '领馆汽车';
    }else if(value == '05'){
        return '境外汽车';
    }else if(value == '06'){
        return '外籍汽车';
    }else if(value == '07'){
        return '普通摩托车';
    }else if(value == '08'){
        return '轻便摩托车';
    }else if(value == '09'){
        return '使馆摩托车';
    }else if(value == '10'){
        return '领馆摩托车';
    }else if(value == '11'){
        return '境外摩托车';
    }else if(value == '12'){
        return '外籍摩托车';
    }else if(value == '13'){
        return '低速车';
    }else if(value == '14'){
        return '拖拉机';
    }else if(value == '15'){
        return '挂车';
    }else if(value == '16'){
        return '教练汽车';
    }else if(value == '17'){
        return '教练摩托车';
    }else if(value == '18'){
        return '试验汽车';
    }else if(value == '19'){
        return '试验摩托车';
    }else if(value == '20'){
        return '临时入境汽车';
    }else if(value == '21'){
        return '临时入境摩托车';
    }else if(value == '22'){
        return '临时行驶车';
    }else if(value == '23'){
        return '警用汽车';
    }else if(value == '24'){
        return '警用摩托';
    }else if(value == '25'){
        return '原农机号牌';
    }else if(value == '26'){
        return '香港入出境车';
    }else if(value == '27'){
        return '澳门入出境车';
    }else if(value == '31'){
        return '武警号牌';
    }else if(value == '32'){
        return '军队号牌';
    }else if(value == '41'){
        return '无号牌';
    }else if(value == '42'){
        return '假号牌';
    }else if(value == '43'){
        return '挪用号牌';
    }else if(value == '99'){
        return '其他号牌';
    }else{
        return '';
    }
}

/**
 * 车身颜色
 * @param value
 */
function getCsys(value){
    var csys = '';
    if(value != ''){
        if(value.indexOf('A')!=-1){
            csys += '白';
        }
        if(value.indexOf('B')!=-1){
            csys += '灰';
        }
        if(value.indexOf('C')!=-1){
            csys += '黄';
        }
        if(value.indexOf('D')!=-1){
            csys += '粉';
        }
        if(value.indexOf('E')!=-1){
            csys += '红';
        }
        if(value.indexOf('F')!=-1){
            csys += '紫';
        }
        if(value.indexOf('G')!=-1){
            csys += '绿';
        }
        if(value.indexOf('H')!=-1){
            csys += '蓝';
        }
        if(value.indexOf('I')!=-1){
            csys += '棕';
        }
        if(value.indexOf('J')!=-1){
            csys += '黑';
        }

    }
    return csys;
}

/**
 * 使用性质
 * @param value
 */
function getSyxz(value){
    var str = value.replace(/(^\s*)|(\s*$)/g, "");
    if(str == 'A'){
        return '非营运';
    }else if(str == 'B'){
        return '公路客运';
    }else if(str == 'C'){
        return '公交客运';
    }else if(str == 'D'){
        return '出租客运';
    }else if(str == 'E'){
        return '旅游客运';
    }else if(str == 'F'){
        return '货运';
    }else if(str == 'G'){
        return '租赁';
    }else if(str == 'H'){
        return '警用';
    }else if(str == 'I'){
        return '消防';
    }else if(str == 'J'){
        return '救护';
    }else if(str == 'K'){
        return '工程抢险';
    }else if(str == 'L'){
        return '营转非';
    }else if(str == 'M'){
        return '出租转非';
    }else if(str == 'N'){
        return '教练';
    }else if(str == 'O'){
        return '幼儿校车';
    }else if(str == 'P'){
        return '小学生校车';
    }else if(str == 'Q'){
        return '初中生校车';
    }else if(str == 'R'){
        return '危化品运输';
    }else if(str == 'S'){
        return '中小学生校车';
    }else{
        return '';
    }
}