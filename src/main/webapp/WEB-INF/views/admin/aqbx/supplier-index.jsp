<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>借款列表</title>
</head>
<body>
	<div class="row search-form-default">
		<div class="col-md-12">
			<form method="get" class="form-inline form-validation form-search form-search-init control-label-sm"
				data-grid-search="#grid-supplier-index">
				<div class="form-group">
					<div class="controls controls-clearfix">
						<input type="text" name="search['CN_name']" class="form-control input-large" placeholder="名称">
					</div>
				</div>
				<div class="form-group search-group-btn">
					<button class="btn green" type="submmit">
						<i class="m-icon-swapright m-icon-white"></i>&nbsp; 查&nbsp;询
					</button>
					<button class="btn default" type="reset">
						<i class="fa fa-undo"></i>&nbsp; 重&nbsp;置
					</button>
				</div>
			</form>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<table id="grid-supplier-index"></table>
		</div>
	</div>

	<script type="text/javascript">
        $(function() {
            $("#grid-supplier-index").data("gridOptions", {
                url : WEB_ROOT + '/admin/aqbx/supplier/list',
                colModel : [ {
                    label : '供货商编号',
                    name : 'id',
                    align : 'center',
                    width : 100
                }, {
                    label : '供货商名称',
                    name : 'name',
                    align : 'center',
                    width : 200
                }, {
                    label : '供货商联系人',
                    name : 'null',
                    align : 'center',
                    width : 200
                }, {
                    label : '联系人电话',
                    name : 'null',
                    align : 'center',
                    width : 100
                }, {
                    label : '客服QQ',
                    name : 'null',
                    align : 'center',
                    width : 200
                } ],
                multiselect : false
            });
        });
    </script>
</body>
</html>