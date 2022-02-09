layui.config({
    base: "js/"
}).use(['form', 'layer', 'jquery', 'laypage', 'table', 'laytpl'], function () {
    var form = layui.form, table = layui.table;
    layer = parent.layer === undefined ? layui.layer : parent.layer,
        laypage = layui.laypage,
        $ = layui.jquery;
//数据表格
    table.render({
        id: 'wenjuanjieguoList',
        elem: '#wenjuanjieguoList'
        , url: ctx + '/manage/queryWenjuanjieguoList' //数据接口
        , cellMinWidth: 80
        , limit: 10//每页默认数
        , limits: [10, 20, 30, 40]
        , cols: [[ //表头
            {type: 'checkbox'},
            {field: 'id', title: 'ID', width: 60, align: 'center', sort: true},
            {field: 'userId', title: '用户id', width: 140, align: 'center'},
            {field: 'username', title: '用户名', width: 140, align: 'center'},
            {field: 'score', title: '用户总得分', width: 140, align: 'center'},
            {
                field: 'createTime',
                title: '提交时间',
                templet: '<div>{{ formatTime(d.createTime,"yyyy-MM-dd hh:mm:ss")}}</div>'
            },
            {title: '操作', toolbar: '#barEdit'}
        ]]
        , page: true //开启分页
    });
//监听工具条
    table.on('tool(test)', function (obj) {
        var data = obj.data;
        if (obj.event === 'del') {
            layer.confirm('真的删除行么?', function (index) {
                $.ajax({
                    url: ctx + '/manage/deleteWenjuanjieguo?id=' + data.id,
                    type: "get",
                    success: function (d) {
                        if (d.code == 0) {
                            table.reload('wenjuanjieguoList', {})
                        } else {
                            layer.msg("操作失败，请重试", {icon: 5});
                        }
                    }
                })
                layer.close(index);
            });
        } else if (obj.event === 'edit') {
            var url = ctx + "/manage/editWenjuanjieguo?id=" + data.id;//路径拼接
            location.href = url;
        } else if (obj.event === 'infoDetail') {
            var url = ctx + "/manage/wenjuanjieguoInfo?id=" + data.userId;
            layer.open({
                type: 2,
                btn: ['关闭'],
                btnAlign: 'c',
                title: "问卷结果详情查看",
                skin: 'layui-layer-molv', //加上边框
                area: ['1000px', '600px'], //宽高
                shadeClose: true,
                content: url
            });
        }

    });

//添加问卷结果
    $(".addBtn").click(function () {
        var url = ctx + "/manage/addWenjuanjieguo";
        location.href = url;  //路径跳转
    })


//批量删除问卷结果
    $(".batchDel").click(function () {
        var checkStatus = table.checkStatus('wenjuanjieguoList')
            , data = checkStatus.data, idsStr = '';
//   layer.alert(JSON.stringify(data));
        if (data.length > 0) {
            $.each(data, function (n, value) {
                idsStr += value.id + ',';
            });
            idsStr = idsStr.substring(0, idsStr.length - 1);
            layer.confirm('真的要删除<strong>' + data.length + '</strong>条数据吗？', function (index) {
//调用删除接口
                $.ajax({
                    url: 'deletesWenjuanjieguo?idsStr=' + idsStr,//接口地址
                    type: "get",
                    success: function (d) {
                        if (d.code == 0) {
//重载表格
                            table.reload('wenjuanjieguoList', {})
                        } else {
                            layer.msg("删除错误，稍后再试！", {icon: 5});
                        }
                    }
                })
                layer.close(index);
            });
        } else {
            layer.msg("请选择要操作的数据！");
        }

    })

})
