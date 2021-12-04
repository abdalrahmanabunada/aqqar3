@extends('layouts.ClientPanel')


@section('css')


@endsection


@section('content')
	<form class="docs-content d-flex flex-column flex-column-fluid ViewController" id="kt_docs_content" name="ViewController" id="ViewController" method="post" ng-controller="ViewController">
    						<input type="hidden" id="_token" name="_token" value="{{ csrf_token() }}" />

    <!--begin::Container-->
						<div class="container" id="kt_docs_content_container">
							<!--begin::Card-->
							<div class="card mb-2">
								<!--begin::Card Body-->
								<div class="card-body fs-6 py-15 px-10 py-lg-15 px-lg-15 text-gray-700">
									<!--begin::Section-->
									<div class="p-0">
										<!--begin::Heading-->
										<h1 class="anchor fw-bolder mb-5" id="server-side">
										<a href="#server-side"></a>إدارة الطلبات</h1>
										
										<div class="py-5">
											<div class="d-flex flex-stack mb-5">
												<div class="d-flex align-items-center position-relative my-1">
													<span class="svg-icon svg-icon-1 position-absolute ms-6">
														{!!__("icon.search")!!}
													</span>
													<input type="text" id="search" class="form-control form-control-solid w-250px ps-15" placeholder="{{__('user.Search')}}" />

												</div>
                                                
												<div class="d-flex justify-content-end" data-kt-docs-table-toolbar="base">

													<a class="btn btn-primary" href="{{ route('client.application.add') }}" title="إضافة طلب جديد">


                                                    <span class="svg-icon svg-icon-2">
                                                        {!!__("icon.add")!!}
														
													</span>
													إضافة طلب جديد</a>

												</div>
											</div>

                                            <div class="d-flex align-items-center position-relative my-5" style="margin-top:-15px;">
                                                <button type="button" id="btnSearch" class="btn btn-warning">

                                                    <span class="svg-icon svg-icon-2">
                                                        {!!__("icon.search")!!}
														
													</span>
													{{__('user.Search')}}</button>
                                                
                                                </div>

                                            <div>

                                                </div>
                                            
											<!--end::Datatable-->
										</div>
									</div>
                                    <div class="tbl_content">
											    <!--end::Wrapper-->
											    <!--begin::Datatable-->
											    <table id="kt-datatable" class="table align-middle table-row-dashed fs-6 gy-5">
												    <thead>
													    <tr class="text-start text-gray-400 fw-bolder fs-7 text-uppercase gs-0">
														    <th class="" width="5%">
															    <div class="form-check form-check-sm form-check-custom form-check-solid me-3">
																    <input class="form-check-input" type="checkbox" data-kt-check="true" data-kt-check-target="#kt-datatable .form-check-input" value="1" />
															    </div>
														    </th>
														    <th>إسم المشروع</th>
														    <th>تاريخ الإدخال</th>  
														    <th class="text-end min-w-100px">{{__('user.Actions')}}</th>
													    </tr>
												    </thead>
												    <tbody class="text-gray-600 fw-bold"></tbody>
											    </table>
                                            </div>
									<!--end::Section-->
								</div>
								<!--end::Card Body-->
							</div>
							<!--end::Card-->
						</div>
						<!--end::Container-->
					</form>

    
@endsection

@section('js')
	
	<script src="{{ asset('assets/plugins/custom/prismjs/prismjs.bundle.js') }}"></script>
		<script src="{{ asset('assets/plugins/custom/datatables/datatables.bundle.js') }}"></script>

	<!--
	<script src="{{ asset('assets/js/custom/documentation/documentation.js') }}"></script>
	 <script src="{{ asset('assets/js/custom/documentation/general/datatables/server-side.js') }}"></script>
	-->
    
	<script>
    var data;
    var ajax;
    function filters(){
        data = {
			d: document.getElementById("search").value,
            //active: document.getElementById("active").value,
		};
        ajax = {
            url: "{{ route('user-get-data') }}"
		    , data: data
	    };
    }
    filters();
    function buildSearchData(){
        var len = 10;
        var sort_by;
        var $sort_type;
        if($("[name=kt-datatable_length]").val() != null){
            len = $("[name=kt-datatable_length]").val();

            sort_by =  $('#kt-datatable').DataTable().settings().init().aoColumns[
                $('#kt-datatable').DataTable().order()[0][0]
            ]['data'];
            
            sort_type = $('#kt-datatable').DataTable().order()[0][1];
        }
        
         var obj = {
             d: document.getElementById("search").value,
             _token: $("[name=_token]").val(),
             length: len,
             sort_by: sort_by,
             sort_type: sort_type

        };
        return obj;
    }

    var table;
	"use strict";
var KTDatatablesServerSide = function () {
    var e, t = function () {
        document.querySelector("#kt-datatable").querySelectorAll('[type="checkbox"]').forEach((e => {
            e.addEventListener("click", (function () {
                setTimeout((function () {
                    //n()
                }), 50)
            }))
        }))
    },
        table = function () {
            const e = document.querySelector("#kt-datatable"),
                t = document.querySelector('[data-kt-docs-table-toolbar="base"]'),
                table = document.querySelector('[data-kt-docs-table-toolbar="selected"]'),
                a = document.querySelector('[data-kt-docs-table-select="selected_count"]'),
                r = e.querySelectorAll('tbody [type="checkbox"]');
            let s = !1,
                o = 0;
            r.forEach((e => {
                e.checked && (s = !0, o++)
            })), s ? (a.innerHTML = o, t.classList.add("d-none"), table.classList.remove("d-none")) : (t.classList.remove("d-none"), table.classList.add("d-none"))
        };
    return {
        reload: function () {
           //$('#kt-datatable').DataTable().destroy();
            //KTDatatablesServerSide.init();
            //$(".form-check-input").prop("checked", '');

            filters();
            $('#kt-datatable').DataTable().ajax = ajax;
            $('#kt-datatable').DataTable().ajax.reload();
            $(".form-check-input").prop("checked", '');
        },
        init: function () {
            e = $("#kt-datatable").DataTable({
                responsive: !0,
                searchDelay: 500,
                processing: !0,
                serverSide: !0,
                order: [
                    [1, "desc"]
                ],
                stateSave: !0,
                select: {
                    style: "os",
                    selector: "td:first-child",
                    className: "row-selected"
                },
                ajax: {
                    url: "{{ route('application.view.ajax') }}"
		            , data: buildSearchData
	            },
                columns: [
				{
                    data: "id"
                }, 
				{
                    data: "project_title"
                },
                {
                    'data': 'created_at' ,
                    "type": "date",
                    "render": function (value) {
                        if (value === null) return "";
                        return window.moment(value).format('MM/DD/YYYY HH:mm');
                    }
                },
				
				{
                    data: null
                }
				],
                columnDefs: [
				{
                    targets: 0,
                    orderable: !1,
                    render: function (e, t, n) {
                        return `\n                            <div class="form-check form-check-sm form-check-custom form-check-solid">\n                                <input class="form-check-input" type="checkbox" value="${e}" />\n                            </div>`
                    }
                }, 
				{
                    targets: 3,
                    data: null,
                    orderable: !1,
                    className: "text-end",
                    render: function (e, t, n) {
                        
                        var x = '\
                                <div class="d-flex justify-content-end flex-shrink-0">\
									<a href="{{ route("application.pdf.page4") }}/'+n.id+'" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1" target="_blank" title="{{__("user.Permission")}} '+n.name+'">\
										<span class="svg-icon svg-icon-3">\
											{!!__("icon.permmision")!!}\
										</span>\
									</a>\
									</div>\
                                    ';
                        return x;
                    }
                },
				/*{
                    targets: 3,
                    data: null,
                    orderable: !1,
                    className: "text-end",
                    render: function(e, t, n) {
						if(n.active == 1)
							return '<div class="badge badge-light-success fw-bolder">Enabled</div>'
						else
							return '<div class="badge badge-light-danger fw-bolder">Disable</div>'
					}
				}*/
				]
            })
			//, e.$, e.on("draw", (function ()	{
            //    t(), n(), KTMenu.createInstances()
           // })), document.querySelector('[data-kt-docs-table-filter="search"]').addEventListener("keyup", (function (t) {
             //   e.search(t.target.value).draw()
            //})), t()
        }
    }
}();
KTUtil.onDOMContentLoaded((function () {
    KTDatatablesServerSide.init()
}));
$("#btnSearch").click(function(){
	KTDatatablesServerSide.reload();
});
$(document).on('click', '.include', function(){
    /*event.preventDefault();
    var link = $(this).attr("href");
    console.log(link + '?date=' + Date());
    angular.element('#IncludeController').scope().link = link + '?date=' + Date();
    angular.element('#IncludeController').scope().$apply();
    $("#IncludeController").modal("show");*/
});


myApp.controller('ViewController', function ($scope, $http, $rootScope) {
            $scope.init = function () {
            }
            $scope.Apply = function () {
                $scope.$apply();
            }
 });
 
 
	</script>
@endsection
