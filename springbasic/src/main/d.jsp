




<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Dashboard</title>
        <meta charset="utf-8">
        
        
        
        
            <link rel="shortcut icon" href="/crm/images/favicon_qic.ico">
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="/crm/plugins/font-awesome/css/font-awesome.css" />
        <link rel="stylesheet" href="/crm/plugins/bootstrap/css/bootstrap.min.css" />
        <link href="/crm/plugins/bootstrap-select/css/bootstrap-select.css" rel="stylesheet" />
        <link href="/crm/css/styleV2.css?v=774067627032165019" rel="stylesheet" />
        <link rel="stylesheet" href="/crm/plugins/innovate/css/main.css?v=774067627032165019" />
        <link rel="stylesheet" href="/crm/plugins/datatables/datatables.min.css" />
        <link rel="stylesheet" href="/crm/plugins/innovate/css/flags.css" />
        <link rel="stylesheet" href="/crm/plugins/magnific-popup/magnific-popup.css">
        <link rel="stylesheet" href="/crm/plugins/innovate/css/line-awesome.min.css">
        <link href="/crm/plugins/richText/css/jquery-te-1.4.0.css" rel="stylesheet" />
        <link href="/crm/plugins/innovate/css/datepicker.css" rel="stylesheet" />
        <link href="/crm/plugins/bootstrap-fileupload/bootstrap-fileupload.min.css" rel="stylesheet" />
        <link href="/crm/plugins/bootstrap-multiselect/bootstrap-multiselect.css" rel="stylesheet" />
        <link href="/crm/plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css" rel="stylesheet" />
        <link rel="stylesheet" href="/crm/plugins/innovate/css/jquery-ui.css" />
        <script type="text/javascript" src="/crm/plugins/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="/crm/plugins/jquery/jquery-ui.js"></script>
        <script src="/crm/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="/crm/plugins/datatables/datatables.min.js"></script>
        <script type="text/javascript" src="/crm/plugins/fileDownload/jquery.fileDownload.js"></script>
        <script type="text/javascript">
            var APP_CONFIG = {
                context: "/crm",
                crmOrigin: window.location.href,
                messageType: {
                    success: "S",
                    error: "E"
                },
                companyList: {"001": {"code": "QA", "name": "Doha"}, "002": {"code": "AE", "name": "Dubai"}, "005": {"code": "KW", "name": "Kuwait"}, "006": {"code": "OM", "name": "Oman"}, "100": {"code": "QA", "name": "Doha"}, "009": {"code": "QA", "name": "Doha"}},
                companyCode: "001",
                appType: "R",
                ameyo: {
                    channel: "QIC_Qatar",
                    url: "https://ameyo.anoudapps.com:8443/",
                    loggedIn: "E"
                },
                agentType: 4,
                extension: "999",
                popupFeatures: "toolbar=0, scrollbars=1, location=0, statusbar=0, menubar=0, resizable=1, width=1100, height=800"
            };
            var ls = localStorage, ss = sessionStorage;
        </script>
        <style type="text/css">
            .ui-front {
                z-index: 99999!important;
            }
        </style>
    </head>
    <body>
        <section class="dashboard-mainfunction">
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <div id="nav-icon1">
                            <span></span>
                            <span></span>
                            <span></span>
                          </div>
                        </button>
                        <a class="navbar-brand log1" href="/crm/home.do"><img src="/crm/images/logo_anoud_crm.svg" class="img-responsive log2"></a>
                    </div>
                    <div class="collapse navbar-collapse navbar-right" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <!--li>
                                <input type="text" name="search" class="form-control" id="txt_gbl_search">
                            </li-->
                            <li class="input-group">
                                <div class=" tp-search-wrapper pull-left">
                                <input type="text" name="search" class="form-control tp-search" id="txt_gbl_search" placeholder="Search">
                                <span class="input-group-addon" onclick="search();"><i class="fa fa-search"></i>
                                </span>
                                </div>
                                <div class="pull-left">
                                    <a href="/crm/openSearchPage.do" alt="Advanced Search"><div class="btn btn-advanced-search" style="">Advanced Search</div></a>
                                </div>
                                <div  class="clearfix"></div>
                            </li>
                            <li><div class="tp-menu-seperator"> <img src="/crm/plugins/innovate/images/tp-menu-seperator.png" alt="separator" class="img-respondsive"/></div></li>
                            <li>  
                                <div id="country"></div>
                            </li>
                            <li>
                                <div class="tp-menu-seperator"> <img src="/crm/plugins/innovate/images/tp-menu-seperator.png" alt="separator" class="img-respondsive"/></div>
                            </li>
                            <li>
                                <span class="user-images">
                                    <img src="/crm/plugins/innovate/images/prof-img.png" alt="user-images" class="img-respondsive"/>
                                </span>
                                <span class="user-details" title="ajithkumar.raja">ajithkumar.raja</span>
                            </li>  
                            <li><div class="tp-menu-seperator"> <img src="/crm/plugins/innovate/images/tp-menu-seperator.png" alt="separator" class="img-respondsive"/></div></li>
                            <li class="logout-tpmm"><a href="javascript:void(0);" onclick="logoutCrm()" class="lgout-small-de" ><img src="/crm/plugins/innovate/images/ico_view_logout_tpmm.svg" height="20" alt="Logout" class="img-respondsive" data-toggle = "tooltip" data-placement = "bottom" title="Logout" /></a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </section>
        <section class="dashboard-function">
            
                <div class="page-container sidebar-collapsed shake" >
                    <div class="sidebar-menu">
                        <div id="sidebar" >
                            <div class="logo">
                                <a href="#" class="sidebar-icon shake"> <span class="fa fa-bars"></span></a>
                            </div>
                            <div class="menu">
                                <ul id="menu">
                                    
                                        <li>
                                            
                                                <a data-toggle="tooltip" data-placement="top" title="Dashboard" href="/crm/home.do"><i class="new-icons"> <img src="/crm/plugins/innovate/images/ico_dashboard2.svg" alt="Dashboard" style="width: 27px; margin-left: -3px;" /></i><span>Dashboard</span></a>
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                             
                                            
                                              
                                            
                                        </li>
                                    
                                        <li>
                                            
                                            
                                                <a data-toggle="tooltip" data-placement="top" title="Task" href="/crm/openTaskDetails.do"><i class="new-icons"> <img src="/crm/plugins/innovate/images/ico_tasks.svg" alt="Tasks" /></i><span>Tasks</span></a>
                                            
                                            
                                            
                                            
                                            
                                            
                                             
                                            
                                              
                                            
                                        </li>
                                    
                                        <li>
                                            
                                            
                                            
                                                <a data-toggle="tooltip" data-placement="top" title="Activities" href="/crm/openActivitiesEntryPage.do"><i class="new-icons"> <img src="/crm/plugins/innovate/images/ico_activities.svg" alt="Activities" /></i><span>Activities</span></a>
                                            
                                            
                                            
                                            
                                            
                                             
                                            
                                              
                                            
                                        </li>
                                    
                                        <li>
                                            
                                            
                                            
                                            
                                                
                                                    <a data-toggle="tooltip" data-placement="top" title="Leads" href="/crm/openLeadsEntryPage.do"><i class="new-icons"> <img src="/crm/plugins/innovate/images/ico_leads.svg" alt="Leads" /></i><span>Leads</span></a>
                                                
                                            
                                            
                                            
                                            
                                             
                                            
                                              
                                            
                                        </li>
                                    
                                        <li>
                                            
                                            
                                            
                                            
                                            
                                                <a data-toggle="tooltip" data-placement="top" title="Contacts" href="/crm/openInsuredDetailPage.do"><i class="new-icons"> <img src="/crm/plugins/innovate/images/ico_contact.svg" alt="Contact" /></i><span>Contact</span></a>   
                                            
                                            
                                            
                                             
                                            
                                              
                                            
                                        </li>
                                    
                                        <li>
                                            
                                            
                                            
                                            
                                            
                                            
                                                <a data-toggle="tooltip" data-placement="top" title="Search" href="/crm/openSearchPage.do"><i class="new-icons"> <img src="/crm/plugins/innovate/images/ico_search.svg" alt="Search" /></i><span>Search</span></a>   
                                            
                                            
                                             
                                            
                                              
                                            
                                        </li>
                                    
                                        <li>
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                                <a data-toggle="tooltip" data-placement="top" title="Reports" href="/crm/LoadDynamicReports.do"><i class="new-icons"> <img src="/crm/plugins/innovate/images/ico_reports.svg" alt="Reports" /></i><span>Reports</span></a>
                                            
                                             
                                            
                                              
                                            
                                        </li>
                                    
                                        <li>
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                                    <a data-toggle="tooltip" data-placement="top" title="Digital &#013; Marketing" href="/crm/camp/openCampaignPage.do"><i class="new-icons"> <img src="/crm/plugins/innovate/images/ico_digital_marketing.svg" alt="Digital Marketing" /></i><span>Digital Marketing</span></a>   
                                                
                                             
                                            
                                              
                                            
                                        </li>
                                    
                                        <li>
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                             
                                            
                                            
                                                <a data-toggle="tooltip" data-placement="top" title="WhatsApp" href="/crm/openWhatsAppDetails.do"><i class="new-icons"> <img src="/crm/plugins/innovate/images/ico_whatsApp.svg" alt="WhatsApp" /></i><span>WhatsApp</span></a>
                                              
                                            
                                        </li>
                                    
                                        <li>
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                             
                                            
                                                <a data-toggle="tooltip" data-placement="top" title="Admin" href="javascript:void(0);"><i class=" new-icons"> <img src="/crm/plugins/innovate/images/ico_admin.svg" alt="Admin" /></i><span>Admin</span></a>    
                                            
                                              
                                            
                                                <ul class="absPos">
                                                    
                                                        <li>
                                                            
                                                                <a href="javascript:void(0);" data-type="page" data-url="/openMissedCallPage.do"><i class="fa fa-phone fa-2x" style="font-size:22px;"></i>Call Log</a>
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                        </li>
                                                    
                                                        <li>
                                                            
                                                            
                                                                <a href="/crm/BulkSMSEmail.do"><i class="fa fa-mobile fa-2x" style="font-size:26px;"></i>Bulk SMS</a>
                                                            
                                                            
                                                            
                                                            
                                                            
                                                        </li>
                                                    
                                                        <li>
                                                            
                                                            
                                                            
                                                                <a href="javascript:void(0);" data-type="page" data-url="/openTaskAttendeePage.do"><i class="fa fa-id-badge" style="font-size:22px;"></i>Agent</a>
                                                            
                                                            
                                                            
                                                            
                                                        </li>
                                                    
                                                        <li>
                                                            
                                                            
                                                            
                                                            
                                                                <a href="/crm/openTaskAllocateEntryPage.do"><i class="fa fa-newspaper-o"></i>Allocation</a>
                                                            
                                                            
                                                            
                                                        </li>
                                                    
                                                </ul>
                                            
                                        </li>
                                    
                                    
                                    
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            
            <div id="block_body" class="crm-dashes">
                



<style type="text/css">
    .home-card {
        min-height: 370px;
    }
    .no-data:after {
        content: "No data available";
        color: rgba(30, 127, 210, 0.62);
    }
    .list-group {
        word-break:break-all;
    }
    #tbl_reminder_filter.dataTables_filter input {
       /* width: 100% !important;*/
    }
</style>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-6 right-pad fullscreen-block">
            <div class="act-period">
                <div class="my-bord ">
                    <h3>Activities For A Period</h3>
                    <div class="board-icons">
                        <a class="fullscreen fa fa-expand fa-2x" href="#" data-fs-id="div_chart_activity" ></a>

                    </div>
                </div>   		  
                <div class="activ ities-per">
                    <ul class="period-list">
                        <li style="width:45%"> 
                            <select name="userId" id="sel_pie_userId" class="form-control">
    <option value="abdol">Abdol Salam Baloch Zehi (B)</option>
    <option value="haji">Abdulla Haji</option>
    <option value="alqahtani">Abdullah A. Al Qahtani</option>
    <option value="ahmedj">Ahmed Al Jarboey</option>
    <option value="ahmedm">Ahmed Mohammed Samy Ahmed</option>
    <option value="khormooji">Ali Khormooji</option>
    <option value="alibek">Alibek Tnaliyev</option>
    <option value="almas">Almas Aisin</option>
    <option value="alpher">Alpher Castuera</option>
    <option value="amina">Amina Bibi Mumtaz</option>
    <option value="anand">Anand Prabhu Selvakumar</option>
    <option value="arthur">Arthur Zotov</option>
    <option value="akshat">Askhat Surauov</option>
    <option value="deepa">Deepa S</option>
    <option value="dmitry">Dmitry Noskov</option>
    <option value="raeisi">Ebrahim Raeisi</option>
    <option value="ebram">Ebram Azer</option>
    <option value="ehab">Ehab M. El Wasiff</option>
    <option value="elham">Elham Alfadil Altayb Ahmed</option>
    <option value="eman">Eman Al Hilal</option>
    <option value="faisal">Fadi A Faisal</option>
    <option value="fadi">Fadi Al Natsha</option>
    <option value="fakher">Fakher Hussain</option>
    <option value="farahnaz">Farahnaz Abdul Ghafour (B)</option>
    <option value="fatema">Fatema Salman Thani</option>
    <option value="fatima">Fatima Haji Akbar</option>
    <option value="fayyadh">Fayyadh Ebrahim</option>
    <option value="audit">Group Audit</option>
    <option value="hajar">Hajar Ibrahim (B)</option>
    <option value="hassan">Hassan Ali Ismail</option>
    <option value="salari">Hassan Salari</option>
    <option value="hosam">Hosam Fowzi</option>
    <option value="houssem">Houssem Eddine Trabelssi</option>
    <option value="huda">Huda Mohammed Zourob</option>
    <option value="islami">Islam Mohamed</option>
    <option value="jonna">Jonna Mae Redondo</option>
    <option value="khaldoon">Khaldoon Khaleel</option>
    <option value="ghazwani">Khalid Ghazwani</option>
    <option value="kumar">Kumar K V</option>
    <option value="layla">Layla Jaidah</option>
    <option value="leahmae">Leahmae DE Jesus Arellano</option>
    <option value="schedule_api">Mail Scheduler API</option>
    <option value="maria">Maria Lourdes Cuevas</option>
    <option value="mena">Mena Mounir</option>
    <option value="meryem">Meryem Slama</option>
    <option value="muneer">Mk Muneeruddin</option>
    <option value="kafrawi">Mohammed Kafrawi</option>
    <option value="mancef">Mohammed Mancef</option>
    <option value="riza">Mohammed Riza Nasrollah</option>
    <option value="smuhannadi">Mohammed S. Al Mohannadi</option>
    <option value="msamir">Msamir</option>
    <option value="khaleel">Murath Syed Khaleel</option>
    <option value="mustafa">Mustafa Tawfig Elsayed</option>
    <option value="nasserj">Nasser Jassim N. Al-Mohannadi</option>
    <option value="nisha">Nisha Pinto</option>
    <option value="nisrine">Nisrine Rahme</option>
    <option value="noor">Noor B. Al Dosari</option>
    <option value="noorb">Noor Buhusain</option>
    <option value="nourj">Nour Jlassi (B)</option>
    <option value="sarwat">Oussama Sarwat</option>
    <option value="radwa">Radwa Aljack</option>
    <option value="rana.m">Rana Mahmoud</option>
    <option value="ravindar">Ravindar Singh T</option>
    <option value="rayane">Rayane Malak</option>
    <option value="rehab">Rehab Zakir</option>
    <option value="reza">Reza M. Zadeh</option>
    <option value="sriram">SR SRIRAM</option>
    <option value="saba">Saba Saleh</option>
    <option value="sachin">Sachin Kumbalath</option>
    <option value="khalil">Saleh K. Al Mohannadi</option>
    <option value="samit">Samit Taleb</option>
    <option value="sarag">Sara Gharsallah</option>
    <option value="sekhar">Sekhar</option>
    <option value="seyed">Seyed Ebrahim Moosavy</option>
    <option value="shakeel">Shakeel Akbar</option>
    <option value="shanavas">Shanavas Nellullathil</option>
    <option value="shankari">Shankari</option>
    <option value="shannon">Shannon George</option>
    <option value="shihab">Shihab</option>
    <option value="sinchita">Sinchita Mukherjee</option>
    <option value="soumya">Soumya Nair</option>
    <option value="swapna">Swapna J Abraham</option>
    <option value="motaleb">Syed Abdel Motaleb</option>
    <option value="sabry">Tamer Mohamed Sabry Abderhman</option>
    <option value="tariqa">Tariq Alouatni (A)</option>
    <option value="timo">Timo Dreger</option>
    <option value="uma">Uma Maheshwari Manhoharan</option>
    <option value="varun">Varun Kumar M R</option>
    <option value="vboy">Vboy Abraham Jacob</option>
    <option value="vladislav">Vladislav Belochkin</option>
    <option value="wasim">Wasim Kamboo</option>
    <option value="yousefa">Yousef Al Mana</option>
    <option value="ziaul">Ziaul Kader</option>
    <option value="abdul.k">abdul.kadar</option>
    <option value="ajithkumar.r" selected="selected">ajithkumar.raja</option>
    <option value="akash.s">akash.sureshbabu</option>
    <option value="ariya.r">ariya.ramakrishnan</option>
    <option value="dharmalingam">dharmalingam.m</option>
    <option value="harikrishnan">harikrishnan.r</option>
    <option value="joseph.a">joseph.azhikannickel</option>
    <option value="muthukumar.m">muthukumar.m</option>
    <option value="prasanth.m">prasanth.muthunadan</option>
    <option value="rajesh.k">rajesh.kannan</option>


</select>


                        </li>
                        <li style="width:45%">
                            <!--s:select class="form-control" name="dateRange" id="sel_pie_dateRange" list="dateRangeList" listKey="key" listValue="value"/-->
                            <div id="date_range" class="form-control cal-dp-down">
                                <span>This month</span>
                                <input type="hidden" name="dateRange" value="THIS_MONTH" id="sel_pie_dateRange"/>
                                <input type="hidden" name="dateRangeValue" value="" id="hid_dateRangeValue"/>
                            </div>
                            <div class="clearfix"></div>
                        </li>
                        <li style="width:10%"><a class=" fa-2x btn_reload_chart_activity" href="#" id="btn_reload_chart_activity"><img src="plugins/innovate/images/ico_refresh_grey.svg" height="24" alt="Reload data" ></a></li>
                    </ul>
                </div>
                <div class="printer pull-right ">
                    <div id="div_chart_activity" style="height: 290px; width: 100%;"></div>
                </div>
            </div>
        </div>
        <div class="col-md-6  right-pad fullscreen-block">
            <div class="my-tasks">
                <div class="my-bord">
                    <h3>My Tasks</h3>
                    <div class="board-icons">
                        <a class="fullscreen fa fa-expand fa-2x" href="#" data-fs-id="div_chart_task" ></a>
                    </div>
                </div>	
                <div class="dash-task">
                    <div class="body">
                        <div class="row clearfix top_search">
                            <div class="col-lg-12 col-md-12 ">
                                <div id="div_chart_task" style="height: 290px; width: 100%; margin-top: 30px;"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="clearfix"></div> 
<div class="container-fluid">
    <div class="row">
        <div class="col-md-6 right-pad fullscreen-block">
            <div class="act-period">
                <div class="my-bord">
                    <h3>Call Log</h3>
                    <div class="board-icons">
                        <a class="fullscreen fa fa-expand fa-2x" href="#" data-fs-id="div_chart_call_log" ></a>
                    </div>
                </div> 
                <div class="body">
                    <div class="printer pull-right">
                        <div id="div_chart_call_log" style="height: 290px; width: 100%; margin-top:25px;"></div>
                    </div>  	
                </div>
            </div>
        </div>

        <div class="col-md-6 right-pad fullscreen-block">
            <div class="dash-leader">
                <div class="my-bord">
                    <h3>Leader Board</h3>
                    <div class="board-icons">
                        
                        <a href="#" class="view-btn" id="btn_leader_board_more" style="width: 53px; height: 29px; display: none;"></a>
                            <a class="fullscreen fa fa-expand fa-2x" href="javascript:void(0);"></a>
                        </div>
                    </div>
                    <div class="call-details">
                        <table class="table table-striped table-bordered display dataTable dtr-inline" id="tbl_leader_board">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Attend Call</th>
                                    <th>Missed call</th>
                                </tr>
                            </thead>

                            <tbody>
                            
                            
                                <tr><td colspan="3"><div class="no-data"></div></td></tr>
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
         
    </div>
</div>
<div class="clearfix"></div>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-6 right-pad">
            <div class="my-reminder">
                <div class="my-bord">
                    <h3>My Task Reminder</h3>
                    <div class="board-icons">
                        <a class="fullscreen" href="#"></a>
                    </div>
                </div>
                <div class="reminder-alert">
                    <table class="table table-striped table-bordered display dataTable dtr-inline" id="tbl_reminder">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Reminder</th>
                                <th>Due On</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
              <!--  <a href="#" class="view-btn mbtn" id="btn_reminder_more" >More</a> -->
                </div>
            </div>
            <div class="col-md-6 right-pad">
                <div class="clearfix"></div>
                <div class="dash-leads-sec">
                    <h3>Recent Activities<span class="pull-right"></span></h3>
                    <div class="leads-tab">
                        <table class="table table-striped table-bordered display dataTable dtr-inline" id="tbl_activity">
                            <thead>
                                <tr>
                                    <th class="col-md-3">Type</th>
                                    <th class="col-md-7">Activities</th>
                                    <th class="col-md-2">Time</th>
                                </tr>
                            </thead>
                            <tbody>
                            
                            
                                <tr><td colspan="3"><div class="no-data"></div></td></tr>
                            
                        </tbody>
                    </table>
                </div>
                
            </div>
        </div>     
    </div>
</div>
<div class="clearfix"></div>
<br /><br /><br />

<script type="text/javascript">
    var chart_activity, chart_activity_option, chart_task, chart_task_option, chart_call_log, chart_call_log_option;
    var DATE_RANGES = {};
    var DATE_RANGES_LIST = {};
    
    $(document).ready(function() {
    
        Object.assign(DATE_RANGES_LIST, {'TODAY': 'Today'});
    
        Object.assign(DATE_RANGES_LIST, {'YESTERDAY': 'Yesterday'});
    
        Object.assign(DATE_RANGES_LIST, {'THIS_WEEK': 'This week'});
    
        Object.assign(DATE_RANGES_LIST, {'LAST_WEEK': 'Last week'});
    
        Object.assign(DATE_RANGES_LIST, {'THIS_MONTH': 'This month'});
    
        Object.assign(DATE_RANGES_LIST, {'LAST_MONTH': 'Last month'});
    
        Object.assign(DATE_RANGES_LIST, {'THIS_QUARTER': 'This quarter'});
    
        Object.assign(DATE_RANGES_LIST, {'LAST_QUARTER': 'Last quarter'});
    
        Object.assign(DATE_RANGES_LIST, {'THIS_YEAR': 'This year'});
    
        Object.assign(DATE_RANGES_LIST, {'LAST_YEAR': 'Last year'});
    
        Object.assign(DATE_RANGES_LIST, {'CUSTOM': 'Custom'});
    
        //Object.assign(DATE_RANGES, DATE_RANGES_LIST);
        var keys = Object.keys(DATE_RANGES_LIST);
        for (i = 0; i < keys.length; i++) {
            if ('CUSTOM' !== keys[i]) {
                DATE_RANGES[DATE_RANGES_LIST[keys[i]]] = [moment().subtract(i, 'days'), moment().subtract(i, 'days')];
            }
        }

        //DATE_RANGES = DATE_RANGES_LIST.reduce((json, o, i) => { console.log(i); json[o[Object.keys(o)[0]]] = [moment().subtract(i, 'days'), moment().subtract(i, 'days')]; return json; }, {});
        setupDateRange();
        $('.fullscreen').click(function() {
            $(this).parents('.fullscreen-block').toggleClass('panel-fullscreen');
            if ($(this).hasClass("fa-expand")) {
                $(this).removeClass("fa-expand").addClass("fa-compress");
                $("#" + $(this).data("fs-id")).css({height: $(this).data("fs-height-on")});
            } else {
                $(this).removeClass("fa-compress").addClass("fa-expand");
                $("#" + $(this).data("fs-id")).css({height: $(this).data("fs-height-off")});
            }
            if ($(this).data("fs-id") === "div_chart_activity") {
                setTimeout(function() {
                    chart_activity.resize();
                }, 100);
            } else if ($(this).data("fs-id") === "div_chart_task") {
                setTimeout(function() {
                    chart_task.resize();
                }, 100);
            } else if ($(this).data("fs-id") === "div_chart_call_log") {
                setTimeout(function() {
                    chart_call_log.resize();
                }, 100);
            }
        });
        $("#opportunities").hide();
        $("#revenue").hide();
        var pieData = [], legendData = [];
        chart_activity = echarts.init(document.getElementById('div_chart_activity'));
        chart_task = echarts.init(document.getElementById('div_chart_task'));
        chart_call_log = echarts.init(document.getElementById('div_chart_call_log'));
        chart_activity_option = {
            title: {
                text: "No data",
                show: true,
                zlevel: 50,
                x: 'center',
                y: '45%',
                formatter: "value",
                textStyle: {
                    fontWeight: 'normal',
                    color: '#666666',
                   fontSize: '16'
                }
            },
            tooltip: {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                orient: 'vertical',
                //x: 'left',
                y: '17%',
                left: 'right',
                data: legendData,
                show: false
            },
            toolbox: {
                show: true,
                fontSize: '5',
                feature: {
                    mark: {show: true},
                    dataView: {show: false, readOnly: false},
                    magicType: {show: true, type: ['pie', 'funnel'], option: {
                        funnel: {
                            x: '25%',
                            width: '10%',
                            funnelAlign: 'right',
                            max: 1700
                        },
                        textStyle: {
                            fontWeight: 'normal',
                            color: '#666666',
                           fontSize: '12'
                        }
                    }},
                    restore: {show: false},
                    saveAsImage: {show: false, x:'5%'}
                },
                labelLine: {
                    normal: {
                        show: true
                    } 
                }
            },
            calculable: true,
            series: [
                {
                    type: 'pie',
                    avoidLabelOverlap: true,
                    center: ["50%", "50%"],
                    radius: ["45%", "65%"],
                    itemStyle : 'labelFromatter',
                    data: pieData,
                    color: ['#44b8e2','#db9bc8','#8ad0f9','#fdc16c','#00a640','#fa5840','#00a640','#cd5c5c','#ba55d3','#ffa500','#40e0d0','#ff69b4','#6495ed','#32cd32','#da70d6','#87cefa','#87cefa','#ff69b4','#c37cca','#8f95e7'],
                    label: {
                        normal:{
                          formatter: "{b}\n{d}%"
                        }
                    },
                    labelLine: {
                        textStyle: {
                        fontSize: '100',
                        fontWeight: 'bold'
                    },
                    normal:{
                        show: true,
                        length: 15,
                        lineStyle:{
                            color: '#dbdbdb'
                        }
                    }
                }
              }
            ],
             textStyle: {
                fontWeight: 'normal',
                fontSize: '10'
            }
        };
        
        chart_task_option = {
            title: {
                text: "No data ",
                show: true,
                zlevel: 20,
                x: 'center',
                y: '45%',
                textStyle: {
                    fontWeight: 'normal',
                    color: '#666666',
                    fontSize: '16'
                }
            },
            tooltip: {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                orient: 'vertical',
                //x: 'left',
                 y: '17%',
                left: 'right',
                data: legendData,
                show: false
            },
            toolbox: {
                show: true,
                fontSize: '5',
                feature: {
                    mark: {show: true},
                    dataView: {show: false, readOnly: false},
                    magicType: {show: true, type: ['pie', 'funnel'], option: {
                        funnel: {
                            x: '25%',
                            width: '60%',
                            funnelAlign: 'right',
                            max: 1700
                        },
                        textStyle: {
                            fontWeight: 'normal',
                            color: '#666666',
                            fontSize: '12'
                        }
                    }},
                    restore: {show: false},
                    saveAsImage: {show: false, x:'5%'}
                },
                labelLine: {
                    normal: {
                        show: true
                    }
                }
            },
            calculable: true,
            series: [
                {
                    type: 'pie',
                    avoidLabelOverlap: true,
                    center: ["50%", "50%"],
                    radius: ["45%", "65%"],
                    itemStyle : 'labelFromatter',
                    data: pieData,
                    color: ['#44b8e2','#db9bc8','#8ad0f9','#fdc16c','#b1d653','#fa5840','#00a640','#cd5c5c','#ba55d3','#ffa500','#40e0d0','#ff69b4','#6495ed','#32cd32','#da70d6','#87cefa','#87cefa','#ff69b4','#c37cca','#8f95e7'],
                    label: {
                        normal:{
                            formatter: "{b}\n{d}%"
                           
                        }
                    },
                    labelLine: {
                        textStyle: {
                            fontSize: '50',
                            fontWeight: 'normal'
                           
                        },
                        normal:{
                            show: true,
                            length: 8,
                            lineStyle:{
                                color: '#dbdbdb'
                            }
                        }
                    }
                }
            ],
            textStyle: {
                fontWeight: 'normal',
                fontSize: '10'
            }
        };
        
        chart_call_log_option = {
            title: {
                text: "No data ",
                show: true,
                zlevel: 20,
                x: 'center',
                y: '40%',
                textStyle: {
                    fontWeight: 'normal',
                    color: '#666666',
                    fontSize: '16'
                }
            },
            tooltip: {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                orient: 'vertical',
                //x: 'left',
                 y: '17%',
                left: 'right',
                data: legendData,
                show: false
            },
            toolbox: {
                show: true,
                fontSize: '5',
                feature: {
                    mark: {show: true},
                    dataView: {show: false, readOnly: false},
                    magicType: {show: true, type: ['pie', 'funnel'], option: {
                        funnel: {
                            x: '25%',
                            width: '60%',
                            funnelAlign: 'right',
                            max: 1700
                        },
                        textStyle: {
                            fontWeight: 'normal',
                            color: '#666666',
                            fontSize: '12'
                        }
                    }},
                    restore: {show: false},
                    saveAsImage: {show: false, x:'5%'}
                },
                labelLine: {
                    normal: {
                        show: true
                    }
                }
            },
            calculable: true,
            series: [
                {
                    type: 'pie',
                     //radius: '75%',
                    //radius : ['40%', '50%'],
                    avoidLabelOverlap: true,
                    center: ["50%", "45%"],
                    radius: ["45%", "65%"],
                    itemStyle : 'labelFromatter',
                    data: pieData,
                    color: ['#44b8e2','#db9bc8','#8ad0f9','#fdc16c','#b1d653','#fa5840','#00a640','#cd5c5c','#ba55d3','#ffa500','#40e0d0','#ff69b4','#6495ed','#32cd32','#da70d6','#87cefa','#87cefa','#ff69b4','#c37cca','#8f95e7'],
                    label: {
                        normal:{
                            formatter: "{b}\n{d}%"
                        }
                    },
                    labelLine: {
                        textStyle: {
                        fontSize: '100',
                        fontWeight: 'bold'
                    },
                    normal:{
                        show: true,
                        length: 15,
                        lineStyle:{
                            color: '#dbdbdb'
                        }
                    }
                }
              }
            ],
            textStyle: {
                fontWeight: 'normal',
                fontSize: '10'
            }
        };
        chart_activity.setOption(chart_activity_option);
        chart_task.setOption(chart_task_option);
        chart_call_log.setOption(chart_call_log_option);
        window.onresize = function() {
            setTimeout(function() {
                chart_activity.resize();
                chart_task.resize();
                chart_call_log.resize();
            }, 200);
        };
        $("#btn_task_more").on("click", function() {
            window.location.href = "/crm/openTaskEntryPage.do";
        });
        $("#btn_activity_more").on("click", function() {
            window.location.href = "/crm/openActivitiesEntryPage.do";
        });
        $("#btn_opportunity_more").on("click", function() {
            window.location.href = "/crm/openOpportunitiesEntryPage.do";
        });
        $("#btn_leads_more").on("click", function() {
            window.location.href = "/crm/openLeadsEntryPage.do";
        });
        $("#btn_reload_chart_activity").on("click", function() {
            var userId = $("#sel_pie_userId").val();
            var dateRange = $("#sel_pie_dateRange").val();
            var dateRangeValue = $("#hid_dateRangeValue").val();
            activitiesFilter(userId, dateRange, dateRangeValue);
            myTaskFilter(userId, dateRange, dateRangeValue);
            calllogFilter(userId, dateRange, dateRangeValue);
            leaderBoardDateFilter("", dateRange, dateRangeValue);
            myRemaindersFilter(userId, "");
            myRecentActivitiesFilter(userId);
            opportunityFilter(userId, "");
            revenueFilter("", dateRange, dateRangeValue);
            leadsDateFilter("", dateRange, dateRangeValue);
        });
        $(".date-range").on("click", function() {
            $(this).parent().parent().data("range", $(this).data("range"));
        });
        $(".status-by").on("click", function() {
            $(this).parent().parent().data("status", $(this).data("status"));
        });
        $("#btn_leader_board_more").on("click", function() {
            leaderBoardDateFilter("ALL", $("#sel_pie_dateRange").val(), $("#hid_dateRangeValue").val());
        });
        $("#btn_reminder_more").on("click", function() {
            myRemaindersFilter($("#sel_pie_userId").val(), 'ALL');
        });
        
        $("#btn_reload_chart_activity").trigger("click");
    });
    function activitiesFilter(userId, dateRange, dateRangeValue) {
        chart_activity.showLoading({
            text: 'Please wait!... '
        });
        chart_activity.clear();
        $.getJSON(APP_CONFIG.context + "/loadActivityChartData.do", {"userId": userId, "dateRange": dateRange, "dateRangeValue": dateRangeValue}, function() {
        }).done(function(result) {
            chart_activity_option.legend.data = [];
            chart_activity_option.series[0].data = [];
            let tot = 0;
            $.each(result.aaData, function(i, o) {
                chart_activity_option.legend.data.push(o.key);
                chart_activity_option.series[0].data.push({"name": o.key, "value": Number(o.value)});
                tot += Number(o.value);
            });
            chart_activity_option.title.text = (tot > 0 ? "Total: " + tot : "No data");
            chart_activity.setOption(chart_activity_option);
        }).fail(function() {

        }).always(function() {
            chart_activity.hideLoading();
        });
    }
    function calllogFilter(userId, dateRange, dateRangeValue) {
        chart_call_log.showLoading({
            text: 'Please wait!... '
        });
        chart_call_log.clear();
        $.getJSON(APP_CONFIG.context + "/loadCallLogDetails.do", {"userId": userId, "dateRange": dateRange, "dateRangeValue": dateRangeValue}, function() {
        }).done(function(result) {
            chart_call_log_option.legend.data = [];
            chart_call_log_option.series[0].data = [];
            let tot = 0;
            $.each(result.aaData, function(i, o) {
                chart_call_log_option.legend.data.push(o.cclCrmTypeDesc);
                chart_call_log_option.series[0].data.push({"name": o.cclCrmTypeDesc, "value": Number(o.cclCallRefId)});
                if (o.cclCrmType === '008') {
                    chart_call_log_option.legend.data.push(o.cclCrmTypeDesc + " - Answered");
                    chart_call_log_option.series[0].data.push({"name": o.cclCrmTypeDesc + " - Answered", "value": Number(o.cclNotAnswered)});
                }
                tot += Number(o.cclCallRefId);
                //chart_call_log_option.legend.data.push(o.cclCrmTypeDesc);
                //chart_call_log_option.series[0].data.push({"name": o.cclCrmTypeDesc , "value": Number(o.cclNotAnswered),"value": Number(o.cclNotAnswered)});
            });
            chart_call_log_option.title.text = (tot > 0 ? "Total: " + tot : "No data");
            chart_call_log.setOption(chart_call_log_option);
        }).fail(function() {

        }).always(function() {
            chart_call_log.hideLoading();
        });
    }
    function myTaskFilter(userId, dateRange, dateRangeValue) {
        chart_task.showLoading({
            text: 'Please wait!... '
        });
        chart_task.clear();
        $.getJSON(APP_CONFIG.context + "/loadMyTaskFilterData.do", {"userId": userId, "dateRange": dateRange, "dateRangeValue": dateRangeValue}, function() {
        }).done(function(result) {
            chart_task_option.legend.data = [];
            chart_task_option.series[0].data = [];
            let tot = 0;
            $.each(result.aaData, function(i, o) {
                chart_task_option.legend.data.push(o.key);
                chart_task_option.series[0].data.push({"name": o.key, "value": Number(o.value)});
                tot += Number(o.value);
            });
            chart_task_option.title.text = (tot > 0 ? "Total: " + tot : "No data");
            chart_task.setOption(chart_task_option);
        }).fail(function() {

        }).always(function() {
            chart_task.hideLoading();
        });
    }

    function myRemaindersFilter(userId, fetch) {
        $.ajax({
            type: "POST",
            data: {"userId": userId, "flex1": fetch},
            url: APP_CONFIG.context + "/loadReminderFilterData.do",
            success: function(result) {
                reloadDataTable("#tbl_reminder", result.aaData);
                /* var data = "";
                 $.each(result.aaData, function(i, o) {
                 if (i > 5)
                 return false;
                 data += ("<tr><td><a href=\"javascript:viewTasks('" + o.key + "');\">" + o.key + "</a></td><td>" + o.value + "</td><td data-timeago=\"" + o.info1 + "\">" + o.info1 + "</td></tr>");
                 });
                 if (result.aaData.length > 5) {
                 $("#btn_reminder_more").show();
                 } else {
                 $("#btn_reminder_more").hide();
                 }
                 if (data === "") {
                 data = "<tr><td colspan=\"3\"><div class=\"no-data\"></div></td></tr>";
                 }
                 if (fetch === "ALL") {
                 viewMore("tbl_reminder", data, "My Task Reminders");
                 } else {
                 $("#tbl_reminder > tbody").html(data);
                 }
                 TIMEAGO.init();
                 delete data;*/
            },
            error: function(xhr, status, error) {
                alert("Error: " + error);
            },
            complete: function() {
            }
        });
        return false;
    }

    function myRecentActivitiesFilter(userId) {
        $.ajax({
            type: "POST",
            data: {"userId": userId},
            url: APP_CONFIG.context + "/loadMyRecentFilterData.do",
            success: function(result) {
                var data = "";
                $.each(result.aaData, function(i, o) {
                    data += ("<tr><td>" + o.key + "</td><td>" + o.value + "</td><td>" + o.info1 + "</td></tr>");
                });
                if (data === "") {
                    data = "<tr><td colspan=\"3\"><div class=\"no-data\"></div></td></tr>";
                }
                $("#tbl_activity > tbody").html(data);
                delete data;
            },
            error: function(xhr, status, error) {
                alert("Error: " + error);
            },
            complete: function() {
            }
        });
        return false;
    }

    function opportunityFilter(userId, fetch) {
        fetch = fetch ? fetch : "";
        $.ajax({
            type: "POST",
            data: {"userId": userId, "flex1": fetch},
            url: APP_CONFIG.context + "/loadOpportunityFilterData.do",
            success: function(result) {
                var data = "";
                $.each(result.aaData, function(i, o) {
                    data += ("<tr><td>" + o.key + "</td><td>" + o.value + "</td><td>" + o.info1 + "</td><td>" + o.info2 + "</td></tr>");
                });
                if (data === "") {
                    data = "<tr><td colspan=\"3\"><div class=\"no-data\"></div></td></tr>";
                }
                if (fetch === "ALL") {
                    viewMore("tbl_opportunity", data, "Opportunity");
                } else {
                    $("#tbl_opportunity > tbody").html(data);
                }
                delete data;
            },
            error: function(xhr, status, error) {
                alert("Error: " + error);
            },
            complete: function() {
            }
        });
    }

    function revenueFilter(fetch, dateRange, dateRangeValue) {
        fetch = fetch ? fetch : "";
        $.ajax({
            type: "POST",
            data: {"userId": $("#sel_pie_userId").val(), "dateRange": dateRange, "dateRangeValue": dateRangeValue, "flex1": fetch},
            url: APP_CONFIG.context + "/loadRevenueFilterData.do",
            success: function(result) {
                var data = "";
                $.each(result.aaData, function(i, o) {
                    data += ("<tr><td>" + o.key + "</td><td>" + o.value + "</td></tr>");
                });
                if (data === "") {
                    data = "<tr><td colspan=\"2\"><div class=\"no-data\"></div></td></tr>";
                }
                if (fetch === "ALL") {
                    viewMore("tbl_revenue", data, "Revenue");
                } else {
                    $("#tbl_revenue > tbody").html(data);
                }
                delete data;
            },
            error: function(xhr, status, error) {
                alert("Error: " + error);
            },
            complete: function() {
            }
        });
    }

    function leaderBoardDateFilter(fetch, dateRange, dateRangeValue) {
        fetch = fetch ? fetch : "";
        block('block_body');
        $.ajax({
            type: "POST",
            data: {"dateRange": dateRange, "flex1": fetch, "dateRangeValue": dateRangeValue},
            url: APP_CONFIG.context + "/loadLeaderBoardFilterData.do",
            success: function(result) {
                var data = "";
                $.each(result.aaData, function(i, o) {
                    if (i >= 5 && fetch !== "ALL") {
                        return false;
                    }
                    data += ("<tr><td>" + o.key + "</td><td>" + o.value + "</td><td>" + o.info1 + "</td></tr>");
                });
                if (data === "") {
                    data = "<tr><td colspan=\"3\"><div class=\"no-data\"></div></td></tr>";
                }
                if (fetch === "ALL") {
                    viewMore("tbl_leader_board", data, "Leader Board");
                } else {
                    $("#tbl_leader_board > tbody").html(data);
                    if (result.aaData.length > 5) {
                        $("#btn_leader_board_more").show();
                    } else {
                        $("#btn_leader_board_more").hide();
                    }
                }
                delete data;
            },
            error: function(xhr, status, error) {
                alert("Error: " + error);
            },
            complete: function() {
                unblock('block_body');
            }
        });
    }

    function leadsDateFilter(fetch, dateRange, dateRangeValue) {
        fetch = fetch ? fetch : "";
        $.ajax({
            type: "POST",
            data: {"userId": $("#sel_pie_userId").val(), "dateRange": dateRange, "dateRangeValue": dateRangeValue, "flex1": fetch},
            url: APP_CONFIG.context + "/loadLeadsFilterData.do",
            success: function(result) {
                var data = "";
                $.each(result.aaData, function(i, o) {
                    data += ("<tr><td>" + o.key + "</td><td>" + o.value + "</td><td>" + o.info1 + "</td></tr>");
                });
                if (data === "") {
                    data = "<tr><td colspan=\"3\"><div class=\"no-data\"></div></td></tr>";
                }
                if (fetch === "ALL") {
                    viewMore("tbl_leads", data, "Leads");
                } else {
                    $("#tbl_leads > tbody").html(data);
                }
                delete data;
                        },
            error: function(xhr, status, error) {
                alert("Error: " + error);
            },
            complete: function() {
            }
        });
    }

    function viewMore(tblId, data, title) {
        $('#plugin_modal_dialog .modal-dialog').removeClass("modal-lg modal-sm").addClass("modal-mm");
        var clone_tbl = $("#" + tblId).clone();
        $(clone_tbl).find("tbody").append(data);
        $('#plugin_modal_dialog .modal-content').empty().html($(clone_tbl));
        $('#plugin_modal_dialog .modal-content').html('<div class="card">' +
                '<div class="modal-header">' +
                '<h4 class="m-tb-6 d-inline-block">' + title + '</h4>' +
                '<div class="pull-right cstm_btn">' +
                '<button type="button" class="close-btn btn" data-dismiss="modal" aria-hidden="true" style="margin-left:6%;margin-top: -19px;"><i class="fa fa-close"></i> Close</button>' +
                '</div>' +
                '</div>' +
                '<div class="body">' +
                '<div class="row">' +
                '<div class="col-md-12">' +
                $('#plugin_modal_dialog .modal-content').html() +
                '</div>' +
                '</div>' +
                '</div>' +
                '</div>');
        $('#plugin_modal_dialog').modal('show');
        delete clone_tbl;
    }

    $(document).ready(function() {
        block('tbl_reminder');
        tbl_reminder = $("#tbl_reminder").DataTable({
            paging: true,
            searching: true,
            ordering: true,
            info: true,
            lengthChange: false,
            autoWidth: false,
            pageLength: 5,
            responsive: true,
            destory: true,
            processing: true,
            serverSide: false,
            /*"ajax": {
                url: APP_CONFIG.context + "/loadReminderFilterData.do?userId=ajithkumar.r",
                "type": "POST",
                "contentType": "application/json",
                "dataSrc": "aaData"
            },*/
            columns: [
                {data: "key",
                    render: function(data, type, row, meta) {
                        if (row.key !== "" && row.key !== null) {
                            return '<a href="javascript:viewTasks(' + row.key + ');">' + row.key + '</a>';
                        }
                    }
                },
                {data: "value"},
                {data: "info1",
                    render: function(data, type, row, meta) {
                        return '<span data-timeago="'+data+'"></span>';
                    }
                }
            ],
            dom: '<"clear">lfltipT',
            tableTools: {
                "sRowSelect": "none",
                "aButtons": []
            },
            order: [[0, "desc"]],
            initComplete: function() {
                $("#tbl_reminder tr td").css('cursor', 'default');
                unblock('tbl_reminder');
            },
            "drawCallback": function( settings  ) {
                 TIMEAGO.init();    
            }
        });
    });
</script>

<script type="text/javascript" src="/crm/js/dashboard.js"></script>
                



<div class="modal fade" id="taskview_modal_dialog" data-backdrop="static" tabindex="-1" role="dialog" aria-hidden="false">
    <div class="modal-dialog modal-mm">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">VIEW TASK &nbsp;<button class="btn save-btn" id="btn_call_cust" data-phone="" data-id=""><i class="fa fa-phone-square"></i>&nbsp;<span id="btn_call_cust_no"></span></button></h4>
                <button class="close-btn btn pull-right" style="margin-top: -50px;" id="btn_view_close">&#10006; Close</button>
            </div>
            <div class="modal-body" style="margin-top: 10px;">
                <div class="row">
                    <div class="col-md-12">
                        <form id="frm_task_attach" name="frm_task_attach" action="/crm/home.do" method="post">
                            <div class="form-fields clearfix">
                                <div class="form-group col-sm-12 col-md-12 col-xs-12 spac">
                                    <input type="text" name="task.ctSubject" value="" readonly="readonly" id="ctSubject" class="textbox" title="Subject" data-toggle="tooltip" data-placement="top"/>
                                    <label class="textboxlabel">Subject<span>*</span></label>
                                </div>
                            </div>
                            <div class="form-fields clearfix">
                                <div class="form-group col-sm-12 col-md-12 col-xs-12 spac">
                                    <textarea name="task.ctMessage" cols="" rows="" readonly="readonly" id="ctMessage" class="textbox" style="height: 200px; resize: vertical;" title="Please Enter Message"></textarea>
                                    <label class="textboxlabel">Message<span>*</span></label>
                                </div>
                            </div>
                            <!--h4 class="modal-title">TASK ATTACHMENTS</h4-->
                            <div class="col-md-12" id="block_task_attach">
                                <table class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Sr. No.</th>
                                            <th>File Name</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </form>



                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $("#btn_call_cust").on("click", function () {
            calltask($(this).data("phone"), $(this).data("id"));
        });
        
        $("#btn_view_close").on("click",function (){
            $("#taskview_modal_dialog").modal("hide");
        });
    });
    
    function viewTasks(id) {
        block('block_body');
        var mode = "view";
        var data = {"task.ctId": id, "operation": mode};
        var DmsData = APP_CONFIG.context + "/LoadDmsDocs.do?docInfoBean.cdiTransId=" + id + "&docInfoBean.cdiDocType=CRM_TASKS&companyCode=001";
        data["operation"] = mode;
        block('block_body');
        $.ajax({
            type: "POST",
            url: APP_CONFIG.context + "/openTaskEntryCloseForm.do",
            data: data,
            success: function (result) {
                $("#frm_task_attach #ctSubject").val(result.task.ctSubject);
                $("#frm_task_attach #ctMessage").val(result.task.ctMessage);
                if(result.task.ctFlex01) {
                    $("#taskview_modal_dialog #btn_call_cust_no").text(result.task.ctFlex01);
                    $("#taskview_modal_dialog #btn_call_cust").data("id", result.task.ctId);
                    $("#taskview_modal_dialog #btn_call_cust").data("phone", result.task.ctFlex01);
                    $("#btn_call_cust").show();
                } else {
                    $("#btn_call_cust").hide();
                }
                $("#frm_task_attach #block_task_attach").load(DmsData);
                
                $("#taskview_modal_dialog").modal("show");
            },
            error: function (xhr, status, error) {
                alert("Error: " + error);
            },
            complete: function () {
                unblock('block_body');
            }
        });
    }
    
    function calltask(mobile, id) {
        
        
        var data = {"customer.mobileNo": mobile};
        $.ajax({
            type: "POST",
            url: APP_CONFIG.context + "/callCustomer.do",
            data: data,
            async: true,
            success: function (result) {
                if (result.messageType === "S") {
                    $.notify(mobile + " calling...", "custom");
                    openTaskClForm(mobile, id);
                } else {
                    $.notify("CTI not configured", "custom");
                }
            },
            error: function (xhr, status, error) {
                alert("Error: " + error);
            },
            complete: function () {
            }
        });
        
    }
</script>
            </div>
        </section>
        <style type="text/css">
            .softPhone {
                position: fixed;
                top: 0px;
                z-index: 999999999;
            }
            .applyTab {
                width: 42px;
                cursor: pointer;
                left: -52px;
                top: 150px;
                margin: 0;
                padding: 0;
                position: relative;
            }
            .contentWrap {
                margin: 0px 0 0;
                overflow-x: auto;
                overflow-y: hidden;
                padding: 10px 10px 10px;
                width: 300px;
                background-color: #ffffff;
                border: 1px solid #ddd;
                border-right: none;
                box-shadow: 10px 0 10px #666;
                -webkit-box-shadow: 10px 0 10px #666;
                position:absolute;
                top:30%;
            }
            .contentWrapRht {
                width: 100%;
                height: auto;
            }
            .slideWrap {
            }
            .if-ameyo {
                border: 0px;
                height: 100% !important;
                width: 280px;
                border: 0px;
                min-height:450px;
                overflow: auto
            }
            .callFeedback {
                position: fixed;
                top: 44px;
                z-index: 999999999;
            }
            .callFeedbackWrap {
                height: 165px;
                margin: 201px 0 0;
                overflow: hidden;
                padding: 10px 20px 20px;
                width: 300px;
                background-color: #ffffff;
                border: 1px solid #ddd;
                border-right: none;
                box-shadow: 10px 0 10px #666;
                -webkit-box-shadow: 10px 0 10px #666;
            }
        </style>
        
        
        <div id="callFeedback" style="display: none;">
            <div class="callFeedback" style="right: -300px;">
                <div class="applyTab">
                    <ul class="sticky">
                        <li class="fl-logo" style="margin-top: 100px;">
                            <a href="javascript:;" id="callFeedbackIcon">
                                <img class="atIcon atIconform" src="/crm/images/social.png" alt="" style="width:22px;"/>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="callFeedbackWrap">
                    <div class="contentWrapRht">
                        <div class="popover-title">
                            <h4 class="modal-title" style="font-weight: bold;">Call feedback for <span id="callNo"></span></h4>
                        </div>
                        <div class="form-group">
                            <form id="feed_form" name="feed_form" action="/crm/home.do" method="post">
                                <div class="form-fields clearfix">
                                    <textarea name="callLog.cclRemarks" cols="" rows="" id="cclRemarks" class="form-control"></textarea>
                                    </div>
                            </form>



                        </div> 
                        <button class="save-btn btn btn-primary" onclick="saveFeedBack();">&#10004;Save</button>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
                $(document).ready(function () {
                    $("#callFeedback #callFeedbackIcon").on("click", function () {
                        if ($("#callFeedback .callFeedback").css("right") === "0px")
                            $("#callFeedback .callFeedback").animate({"right": "-300px"}, "slow");
                        else
                            $("#callFeedback .callFeedback").animate({"right": "0px"}, "slow");
                    });
                });
                function openCallFeedback(callId) {
                    /*$("#callFeedback #callNo").text(callId);
                     $("#callFeedback #cclRemarks").val("");
                     $("#callFeedback").show();
                     if ($("#callFeedback .callFeedback").css("right") === "-300px")
                     $("#callFeedback .callFeedback").animate({"right": "0px"}, "slow");*/
                }
                
            </script>
        </div>
        <section class="float-icons">
            <div class="sticky-container">
                <ul class="social-share hidden-rsidebar">
                    <li class="anoud">
                        <a href="#" id="out_btn_anoud"><span><img title="Anoud" src="/crm/images/logo_anoud_crm.svg" width="80"></span></a>
                    </li>
                    <li class="email">
                        <a href="#" onclick="callEmail();"><span><i class="fa fa-envelope fa-2x" title="Email"></i></span></a>
                    </li>
                    <li class="message-sidebar">
                        <a href="#" onclick="callSms();"><span><i class="fa fa-comment-o fa-2x" title="SMS"></i></span></a>
                    </li>
                    
                    
                    <li class="hide-button">
                        <a class="fa fa-arrow-right" href="javascript:void(0);"></a> </li>
                </ul>
            </div>
            <div class="popup-wrap" id="popup_custom"></div>
        </section>
        <script type="text/javascript" src="/crm/plugins/innovate/js/jquery.flagstrap.min.js"></script>
        <script type="text/javascript" src="/crm/plugins/jquery/jquery.form.js"></script>
        <script type="text/javascript" src="/crm/plugins/validator/jquery.validate.min.js"></script>
        <script type="text/javascript" src="/crm/plugins/echarts/echarts.min.js"></script>
        <script type="text/javascript" src="/crm/plugins/autoNumeric/autoNumeric.min.js"></script>
        <script type="text/javascript" src="/crm/plugins/echarts/plotly-latest.min.js"></script>
        <script type="text/javascript" src="/crm/plugins/innovate/js/jquery.slimscroll.js"></script>
        <script type="text/javascript" src="/crm/plugins/node-waves/waves.js"></script>
        <script type="text/javascript" src="/crm/plugins/blockUI/blockui.min.js"></script>
        <script type="text/javascript" src="/crm/plugins/notify/notify.min.js"></script>
        <script type="text/javascript" src="/crm/plugins/momentjs/moment.js"></script>
        <script type="text/javascript" src="/crm/plugins/innovate/js/datepicker.js"></script>
        <script type="text/javascript" src="/crm/plugins/richText/jquery-te-1.4.0.min.js"></script>
        <script type="text/javascript" src="/crm/plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>
        <script type="text/javascript" src="/crm/plugins/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
        <script type="text/javascript" src="/crm/plugins/bootstrap-multiselect/bootstrap-multiselect.min.js"></script>
        <script type="text/javascript" src="/crm/js/admin.js?v=774067627032165019"></script>
        <script type="text/javascript" src="/crm/js/util.min.js?v=774067627032165019"></script>
        
        <script type="text/javascript" src="/crm/plugins/maxlength/jquery.maxlength.min.js"></script>
        <script type="text/javascript" src="/crm/plugins/context-menu/contextMenu.min.js"></script>
        <link rel="stylesheet" href="/crm/plugins/context-menu/contextMenu.min.css"/>
        <link rel="stylesheet" href="/crm/plugins/daterangepicker/daterangepicker.css"/>
        <script type="text/javascript" src="/crm/plugins/daterangepicker/daterangepicker.js"></script>
        <link rel="stylesheet" href="/crm/plugins/datetimepicker/css/bootstrap-datetimepicker.min.css"/>
        <script src="/crm/plugins/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
        <style>
            .notifyjs-task-base {
                opacity: 0.90;
                width: 400px;
                background: #1a1919;
                padding: 5px;
                border-radius: 10px;
            }

            .notifyjs-task-base .title {
                width: 380px;
                margin: 10px 0 0 10px;
                text-align: left;
                color: #ffffff;
            }

            .notifyjs-task-base .buttons {
                width: 380px;
                font-size: 9px;
                padding: 5px;
                margin: 2px;
                text-align: center;
            }

            .notifyjs-task-base button {
                font-size: 9px;
                padding: 5px;
                margin: 2px;
                width: 60px;
            }
        </style>
        <script>
                                var crmLogout = false;
                                function ameyoLogout() {
                                    if (crmLogout) {
                                        window.location.href = APP_CONFIG.context + "/logout.do";
                                    }
                                }

                                function logoutCrm() {
                                    crmLogout = true;
                                    if (APP_CONFIG.ameyo.channel !== "N" && APP_CONFIG.agentType === 1) {
                                        setTimeout(function () {
                                            ameyoLogout();
                                        }, 1000);
                                        try {
                                            doLogout();
                                        } catch (err) {
                                            ameyoLogout();
                                        }
                                    } else {
                                        ameyoLogout();
                                    }
                                }

                                $(document).ready(function () {
            
                                    
                                    var el_height = $('.social-share').height();
                                    $('.social-share').css('margin-top', - ( el_height / 2 ));

                                    $('.social-share li.hide-button a').click(function() {
                                        $('.social-share').toggleClass('hidden-rsidebar'); 
                                    });
                                    
                                    $.notify.addStyle('task', {
                                        html:
                                                "<div>" +
                                                "<div class='clearfix'>" +
                                                "<div class='title' data-notify-html='title'/>" +
                                                "<div class='buttons'>" +
                                                "<button class='no close-btn btn'>Close</button>" +
                                                "<button class='yes btn save-btn'>View</button>" +
                                                "</div>" +
                                                "</div>" +
                                                "</div>"
                                    });

                                    $(document).on('click', '.notifyjs-task-base .no', function () {
                                        $(this).trigger('notify-hide');
                                    });
                                    $(document).on('click', '.notifyjs-task-base .yes', function () {
                                        viewTasks($(this).parent().parent().find("input[name='taskId']").val());
                                        //hide notification
                                        $(this).trigger('notify-hide');
                                    });
                                });

                                function loadTaskNotify() {
                                    $.ajax({
                                        type: "POST",
                                        url: APP_CONFIG.context + '/loadTaskEntryNotifyData.do',
                                        data: {},
                                        success: function (result) {
                                            if (result.aaData && result.aaData.length > 0) {
                                                $.each(result.aaData, function (i, o) {
                                                    $.notify(
                                                            {taskId: o.ctId, title: $('<p style="">' + o.ctSubCatgDesc + '<input type="hidden" name="taskId" value="' + o.ctId + '"/> (Task Id: ' + o.ctId + ')</p>')},
                                                            {style: "task", autoHide: false, clickToHide: false, globalPosition: "top right"});
                                                });
                                            }
                                        },
                                        complete: function () {
                                        },
                                        error: function (xhr, status, error) {
                                            alert("Error: " + error);
                                        }
                                    });
                                }

                                $(document).ready(function () {
                                    $('[data-toggle="tooltip"]').tooltip();
                                    $('a[data-toggle="tooltip"]').tooltip({
                                        container: 'body'
                                    });
                                    $("#txt_gbl_search").on("keypress", function (event) {
                                        var keyCode = (event.keyCode ? event.keyCode : event.which);
                                        if (keyCode === 13) {
                                            if ($.trim($("#txt_gbl_search").val()) !== "") {
                                                window.location.href = APP_CONFIG.context + "/openInsuredDetailPage.do?search=" + $("#txt_gbl_search").val();
                                            }
                                            event.preventDefault();
                                        }
                                    });

                                    $('#sidebar').slimScroll({
                                        height: '100%',
                                        width: '100%',
                                    });

                                    $("#dropdown").on("click", function (e) {
                                        e.preventDefault();

                                        if ($(this).hasClass("open")) {
                                            $(this).removeClass("open");
                                            $(this).children("ul").slideUp("fast");
                                        } else {
                                            $(this).addClass("open");
                                            $(this).children("ul").slideDown("fast");
                                        }
                                    });
                                    var countries = {};
                                    
                                    if (Object.keys(countries).length === 0) {
                                        countries[APP_CONFIG.companyList["001"].code] = APP_CONFIG.companyList["001"].name;
                                    }
                                    //console.log("Countries", countries);
                                    $('#country').flagStrap({
                                        inputName: "company",
                                        countries: countries,
                                        buttonSize: "btn-sm",
                                        buttonType: "btn-info",
                                        labelMargin: "10px",
                                        slimScroll: true,
                                        SlimScrollableHeight: "350px",
                                        selectedCountry: APP_CONFIG.companyList["001"].code,
                                        onSelect: function (value, element) {
                                            if (value !== "" && Object.keys(countries).length > 1) {
                                                $('<form action="' + APP_CONFIG.context + "/changeCrmAppCompany.do" + '" method="post"></form>').append(element).appendTo('body').submit();
                                            }
                                        },
                                        placeholder: {
                                            value: "",
                                            text: "Select Country"
                                        }
                                    });
                                    $('[data-type="page"]').openpage();
                                });
        </script>
        <script type="text/javascript">
            $(document).ready(function () {
                $(window).on("load resize ", function () {
                    var scrollWidth = $('.sidebar-menu').width() - $('.sidebar-menu menu').width();
                    $('.sidebar-menu');
                }).resize();
                $("#out_btn_anoud").on("click", function () {
                    if ($("#contact_block_left").hasClass("active")) {
                        $("#contact_block_left .title_block").trigger("click");
                    }
            
            
                    window.open(APP_CONFIG.context + "/AnoudAppIntegration.do?flex1=SSO");
            
                });
            });

            $(document).ready(function () {
                $('#plugin_modal_dialog').on('shown.bs.modal', function () {
                    //Get the datatable which has previously been initialized
                    var dataTable = $('#plugin_modal_dialog .table1').DataTable();
                    //recalculate the dimensions
                    dataTable.columns.adjust().responsive.recalc();
                });

                $('#select_country').attr('data-selected-country', 'QA');
                $('#select_country').flagStrap();
            });

            function callEmail() {
                block('block_body');
                var data = {"company": "001", "agentid": "", "customer.mobileNo": "", "customer.civilId": "", "customer.emailId": "", "customer.name": ""};
                if ($("#contact_block_left").hasClass("active")) {
                    $("#contact_block_left .title_block").trigger("click");
                }
                $.ajax({
                    type: "POST",
                    url: APP_CONFIG.context + "/openEmailActivityForm.do",
                    data: data,
                    success: function (result) {
                        $('#plugin_modal_dialog .modal-dialog').removeClass("modal-lg modal-sm").addClass("modal-mm");
                        $('#plugin_modal_dialog .modal-content').empty().html(result);
                        $('#plugin_modal_dialog').modal('show');
                    },
                    error: function (xhr, status, error) {
                        alert("Error: " + error);
                    },
                    complete: function () {
                        unblock('block_body');
                    }
                });
            }

            function callSms(mobileNo) {
                block('block_body');
                var data = {"company": "001", "agentid": "", "customer.mobileNo": mobileNo, "customer.civilId": "", "customer.emailId": "", "customer.name": "", "customer.mobileNo1": mobileNo, "customer.mobileNo2": mobileNo};
                if ($("#contact_block_left").hasClass("active")) {
                    $("#contact_block_left .title_block").trigger("click");
                }
                $.ajax({
                    type: "POST",
                    url: APP_CONFIG.context + "/openSmsActivityForm.do",
                    data: data,
                    success: function (result) {
                        $('#plugin_modal_dialog .modal-dialog').removeClass("modal-lg modal-sm").addClass("modal-mm");
                        $('#plugin_modal_dialog .modal-content').empty().html(result);
                        $('#plugin_modal_dialog').modal('show');
                    },
                    error: function (xhr, status, error) {
                        alert("Error: " + error);
                    },
                    complete: function () {
                        unblock('block_body');
                    }
                });
            }

            function callProvider() {
                block('block_body');
                $.ajax({
                    type: "POST",
                    url: APP_CONFIG.context + "/AddPharmacypreApproval.do",
                    success: function (result) {
                        $('#plugin_modal_dialog .modal-dialog').removeClass("modal-lg modal-sm").addClass("modal-mm");
                        $('#plugin_modal_dialog .modal-content').empty().html(result);
                        $('#plugin_modal_dialog').modal('show');
                    },
                    error: function (xhr, status, error) {
                        alert("Error: " + error);
                    },
                    complete: function () {
                        unblock('block_body');
                    }
                });

            }

            function saveFeedBack() {
                $.ajax({
                    type: "POST",
                    url: APP_CONFIG.context + "/saveCallActivityFeedBack.do",
                    data: $("#feed_form").serialize(),
                    success: function (result) {
                        $("#callFeedback").hide();
                    },
                    error: function (xhr, status, error) {
                        alert("Error: " + error);
                    },
                    complete: function () {
                    }
                });
            }

            function call() {
                $("#contact_block_left .title_block").trigger("click");
            }
            function search() {
                var text = $("#txt_gbl_search").val();
                if (text === "") {
                    alert("Please Enter Text")
                    return false;
                }
                window.location.href = APP_CONFIG.context + "/openInsuredDetailPage.do?search=" + text;
            }
        </script>
        <style>
            #contact_block_left {
                position: fixed;
                right: 60px;
                bottom: -385px;/*-350px;*/
                width: 310px;
                background: #fff;
                -webkit-transition: bottom 0.5s ease-in-out 0s;
                transition: bottom 0.5s ease-in-out 0s;
            }
            #contact_block_left {
                border-radius: 0;
                overflow: hidden;
                z-index: 1000;
                margin-bottom: 0;
            }
            #contact_block_left .title_block {
                letter-spacing: 0;
                text-align: center;
                padding: 6px 10px;
                cursor: pointer;
            }
            #contact_block_left .title_block {
                font-weight: 400;
                margin: 0;
                background-color: #346EA3;
                color: #fff;
                font-family: "droid Sans", sans-serif;
            }
            #contact_block_left .block_content {
                padding: 10px 20px 20px;
                color: #777777;
                border: 1px solid #346EA3;
                border-width: 0 1px;
            }
            #contact_block_left.active {
                bottom: 0
            }
            strong,p,sub,sup,ol,ul,li{margin:0;padding:0;border:0;font:inherit;font-size:100%;vertical-align:baseline}ol,ul{list-style:none}
            .dialpad .number{position:relative;z-index:2;padding:0px 5px;color:#4d4d4d;font-weight:300;font-size:40px;background:#fff;height:50px}.dialpad .dials{margin:-1px 0 0 -1px;background:#1d1918;cursor:pointer}.dialpad .dials:before,.dialpad .dials:after{content:"\0020";display:block;height:0;overflow:hidden}.dialpad .dials:after{clear:both}.dialpad .dials .digits{float:left;width:33.33%}.dialpad .dials .digits p{font-weight:600;padding:15px 25px;border-top:1px solid #4d4d4d;border-right:1px solid #000;border-bottom:1px solid #000;border-left:1px solid #4d4d4d}.dialpad .dials .digits p strong{font-size:50px;margin-right:8px;color:#fff}.dialpad .dials .digits:active{background:#00caf2;border-top-color:#b2f2ff}
            .compact .dials .digits p{padding:5px 8px}.compact .dials .digits p strong{font-size:30px}.compact .dials .digits p sup{text-transform:uppercase;color:#c1c1c1}.compact .dials .pad-action{background:#093}.compact .dials .pad-action:active{background:#0c3}.ir{background-color:transparent;border:0;overflow:hidden;*text-indent:-9999px}.ir:before{content:"";display:block;width:0;height:150%}.hidden{display:none !important;visibility:hidden}.visuallyhidden{border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.visuallyhidden.focusable:active,.visuallyhidden.focusable:focus{clip:auto;height:auto;margin:0;overflow:visible;position:static;width:auto}.invisible{visibility:hidden}.clearfix:before,.clearfix:after{content:" ";display:table}.clearfix:after{clear:both}.clearfix{*zoom:1}
            .dialpad .dials .digits.active {
                background: #00caf2;
                border-top-color: #b2f2ff;
            }
        </style>
        <div id="contact_block_left" class="block pts-contact hidden-xs hidden-sm hidden-md">
            <h4 class="title_block">Call</h4>
            <div class="block_content clearfix">
                <div class="dialpad compact">
                    <div class="number"></div>
                    <div class="dials">
                        <ol>
                            <li class="digits"><p><strong>1</strong></p></li>
                            <li class="digits"><p><strong>2</strong><sup>abc</sup></p></li>
                            <li class="digits"><p><strong>3</strong><sup>def</sup></p></li>
                            <li class="digits"><p><strong>4</strong><sup>ghi</sup></p></li>
                            <li class="digits"><p><strong>5</strong><sup>jkl</sup></p></li>
                            <li class="digits"><p><strong>6</strong><sup>mno</sup></p></li>
                            <li class="digits"><p><strong>7</strong><sup>pqrs</sup></p></li>
                            <li class="digits"><p><strong>8</strong><sup>tuv</sup></p></li>
                            <li class="digits"><p><strong>9</strong><sup>wxyz</sup></p></li>
                            <li class="digits"><p><strong>*</strong></p></li>
                            <li class="digits"><p><strong>0</strong><sup>+</sup></p></li>
                            <li class="digits"><p><strong>#</strong></p></li>
                            <li class="digits"><p><strong style="margin-right:1px;"><i class=""></i></strong><sup>Clear</sup></p></li>
                            <li class="digits"><p><strong style="margin-right:3px;"><i class=""></i></strong><sup>Del</sup></p></li>
                            <li class="digits pad-action"><p><strong style="margin-right:0px;"><i class=""></i></strong> <sup>Call</sup></p></li>
                        </ol>
                    </div>
                </div>
            </div>

            <script type="text/javascript">

                $('#contact_block_left .title_block').click(function () {
                    if ($(this).parent().hasClass('active'))
                        $(this).parent().removeClass('active');
                    else
                        $(this).parent().addClass('active');
                });

                $(function () {
                    var dials = $(".dials ol li");
                    var index;
                    var number = $(".dialpad .number");
                    var total;

                    dials.click(function () {
                        index = dials.index(this);
                        if (index === 9) {
                            number.append("*");
                        } else if (index === 10) {
                            number.append("0");
                        } else if (index === 11) {
                            number.append("#");
                        } else if (index === 12) {
                            number.empty();
                        } else if (index === 13) {
                            total = number.text();
                            total = total.slice(0, -1);
                            number.empty().append(total);
                        } else if (index === 14) {
                            var callNo = number.text();
                            if ($.trim(callNo).length < 8) {
                                alert("Invalid No");
                                return;
                            }
                            $.ajax({
                                type: "POST",
                                url: APP_CONFIG.context + "/callCustomer.do",
                                data: {"customer.mobileNo": number.text()},
                                async: true,
                                success: function (result) {
                                    if (result.messageType === "S") {
                                        $.notify(number.text() + " calling...", "custom");
                                    }
                                },
                                error: function (xhr, status, error) {
                                    alert("Error: " + error);
                                },
                                complete: function () {
                                    unblock('block_body');
                                }
                            });
                        } else {
                            number.append(index + 1);
                        }
                    });

                    $(document).keydown(function (e) {
                        if (!$("#contact_block_left").hasClass('active')) {
                            return;
                        }
                        switch (e.which) {
                            case 96:
                                $(".dials ol li:eq(10)").addClass("active");
                                number.append("0");
                                break;
                            case 97:
                                $(".dials ol li:eq(0)").addClass("active");
                                number.append("1");
                                break;
                            case 98:
                                $(".dials ol li:eq(1)").addClass("active");
                                number.append("2");
                                break;
                            case 99:
                                $(".dials ol li:eq(2)").addClass("active");
                                number.append("3");
                                break;
                            case 100:
                                $(".dials ol li:eq(3)").addClass("active");
                                number.append("4");
                                break;
                            case 101:
                                $(".dials ol li:eq(4)").addClass("active");
                                number.append("5");
                                break;
                            case 102:
                                $(".dials ol li:eq(5)").addClass("active");
                                number.append("6");
                                break;
                            case 103:
                                $(".dials ol li:eq(6)").addClass("active");
                                number.append("7");
                                break;
                            case 104:
                                $(".dials ol li:eq(7)").addClass("active");
                                number.append("8");
                                break;
                            case 105:
                                $(".dials ol li:eq(8)").addClass("active");
                                number.append("9");
                                break;
                            case 8:
                                $(".dials ol li:eq(13)").addClass("active");
                                total = number.text();
                                total = total.slice(0, -1);
                                number.empty().append(total);
                                break;
                            case 27:
                                $(".dials ol li:eq(12)").addClass("active");
                                number.empty();
                                break;
                            case 106:
                                number.append("*");
                                break;
                            case 35:
                                number.append("#");
                                break;
                            case 13:
                                $('.pad-action').click();
                                break;
                            default:
                                return;
                        }
                        setTimeout(function () {
                            $(".dials ol li").removeClass("active");
                        }, 50);
                        e.preventDefault();
                    });
                });
            </script>
            <script>

                var toggle = true;

                $(".sidebar-icon").click(function () {
                    if (toggle)
                    {
                        $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
                        $("#menu span").css({"position": "relative"});
                    } else
                    {
                        $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
                        setTimeout(function () {
                            $("#menu span").css({"position": "absolute"});
                        }, 400);
                    }
                    toggle = !toggle;
                });
            </script>
            <script>
               $(".absPos").parent().hover(
                       function () {
                          $(".slimScrollDiv, #sidebar").css({"overflow": "hidden", "position": "fixed"});
                       }, function () {
                   $(".slimScrollDiv, #sidebar").css({"overflow": "hidden", "position": "relative"});
               }
                );
            </script>
            <script>
                $(document).ready(function(){
                    $('#nav-icon1').click(function(){
                        $(this).toggleClass('open');
                    });
                    
                    $('ul.nav li.dropdown').hover(function() {
                        $(this).find('.dropdown-menu').stop(true, true).delay(20).fadeIn(500);
                    }, function() {
                        $(this).find('.dropdown-menu').stop(true, true).delay(20).fadeOut(500);
                    });
                    
                    $("#nav-toggle").click(function() {
                        $(this).toggleClass("active");
                        $("#softPhone").toggleClass("sidenav-actif");
                    });
                    
                    $("#block_body").click(function() {
                        toggle = false;
                        $(".sidebar-icon").trigger('click');
                    });
                });
            </script>
            <script>
                $(function(){
                    var current_page_URL = location.href;
                    $( "#menu a" ).each(function() {
                        if ($(this).attr("href") !== "#") {
                            var target_URL = $(this).prop("href");
                            if (target_URL === current_page_URL) {
                                $('#menu li').parents('li').removeClass('active');
                                $(this).parent('li').addClass('active');
                                return false;
                            }
                        }
                    });
                });
            </script>
        </div>
        <style>
            /*.blockOverlay {background:red !important;}*/
            .blockUI.blockOverlay {background:#000 !important; opacity: .7 !important;}
            .blockUI.blockOverlay:before {content:"Please wait.."; color:#fff; position: absolute; top:40%; left:50%; z-index: 100000; font-size:2em;}
        </style>
    </body>
    <!--Common modal window -->
    <div class="modal fade" id="plugin_modal_dialog" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="plugin_modal_dialog_heading" aria-hidden="false">
        <div class="modal-dialog  modal-lg">
            <div class="modal-content">
            </div>
        </div>
    </div>
</html>
