prompt --application/set_environment
set define off verify off feedback off
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_180200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2018.05.24'
,p_release=>'18.2.0.00.08'
,p_default_workspace_id=>10
,p_default_application_id=>4163
,p_default_owner=>'APEX_180200'
);
end;
/
 
prompt APPLICATION 4163 - Scheme Authentication Login
--
-- Application Export:
--   Application:     4163
--   Name:            Scheme Authentication Login
--   Exported By:     APEX_180200
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         18.2.0.00.08
--   Instance ID:     248229714707526
--

-- Application Statistics:
--   Pages:                      5
--     Items:                   35
--     Computations:             2
--     Validations:              7
--     Processes:               11
--     Regions:                 25
--     Buttons:                  5
--   Shared Components:
--     Logic:
--       Items:                  1
--     Navigation:
--       Parent Tabs:            4
--       Tab Sets:               1
--         Tabs:                 1
--     Security:
--       Authentication:         1
--     User Interface:
--       Templates:
--         Page:                 3
--         Region:              10
--         Label:                4
--         Popup LOV:            1
--         Button:               3
--       Plug-ins:               1
--     Globalization:
--     Reports:
--     E-Mail:
--   Supporting Objects:  Excluded

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,4163)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'APEX_180200')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Scheme Authentication Login')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A285098069884210350')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_checksum_salt_last_reset=>'20180830074556'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'ko'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(655487206132077960.4163)
,p_populate_roles=>'A'
,p_application_tab_set=>1
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'&PRODUCT_NAME. 18.2.0.00.08'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_deep_linking=>'Y'
,p_authorize_public_pages_yn=>'Y'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'PRODUCT_NAME'
,p_substitution_value_01=>'Application Express'
,p_substitution_string_02=>'APPLICATION_ICON'
,p_substitution_value_02=>'oracle_platform_white.gif'
,p_substitution_string_03=>'MSG_COMPANY'
,p_substitution_value_03=>unistr('\C791\C5C5\C601\C5ED: &COMPANY.')
,p_substitution_string_04=>'MSG_LANGUAGE'
,p_substitution_value_04=>unistr('\C5B8\C5B4')
,p_substitution_string_05=>'MSG_COPYRIGHT'
,p_substitution_value_05=>'Copyright &copy; 1999, 2018, Oracle. All rights reserved.'
,p_substitution_string_06=>'MSG_USER'
,p_substitution_value_06=>unistr('\C0AC\C6A9\C790')
,p_substitution_string_07=>'MSG_JSCRIPT'
,p_substitution_value_07=>unistr('\C774 \C81C\D488\C740 JavaScript\AC00 \C0AC\C6A9\C73C\B85C \C124\C815\B41C \C0C1\D0DC\C5D0\C11C \C2E4\D589\D574\C57C \D569\B2C8\B2E4.')
,p_substitution_string_08=>'MSG_TBL_SUMMARY'
,p_substitution_value_08=>unistr('\D398\C774\C9C0 \B808\C774\C544\C6C3 \D14C\C774\BE14')
,p_substitution_string_09=>'CLOSE'
,p_substitution_value_09=>unistr('\B2EB\AE30')
,p_substitution_string_10=>'DATE_FORMAT'
,p_substitution_value_10=>'rr/mm/dd'
,p_substitution_string_11=>'LONG_DATE_FORMAT'
,p_substitution_value_11=>unistr('fmDay yyyy"\B144"mm"\C6D4"dd"\C77C"')
,p_substitution_string_12=>'TIME_FORMAT'
,p_substitution_value_12=>'AM hh:mi:ss'
,p_substitution_string_13=>'DATE_TIME_FORMAT'
,p_substitution_value_13=>'rr/mm/dd AM hh:mi:ss'
,p_substitution_string_14=>'RETURN_TO_APPLICATION'
,p_substitution_value_14=>unistr('\C560\D50C\B9AC\CF00\C774\C158\C73C\B85C \B3CC\C544\AC00\AE30')
,p_last_updated_by=>'APEX_180200'
,p_last_upd_yyyymmddhh24miss=>'20180830080153'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(150432907379074.4163)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(14858802044941038.4163)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(91979466909572360.4163)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1082517367295623390.4163)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1765072259284712054.4163)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1831780000720994153.4163)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1917632860486939887.4163)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'classic'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(26310914319937994.4163)
,p_name=>'FSP_AFTER_LOGIN_URL'
,p_scope=>'GLOBAL'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(519013824056522.4163)
,p_tab_set=>'One'
,p_tab_sequence=>1
,p_tab_name=>'T_PAGE_1'
,p_tab_text=>unistr('1\D398\C774\C9C0')
,p_tab_step=>1
,p_tab_parent_tabset=>'main'
,p_tab_comment=>'Tab generated by create flow wizard'
);
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
wwv_flow_api.create_toplevel_tab(
 p_id=>wwv_flow_api.id(519104518056523.4163)
,p_tab_set=>'main'
,p_tab_sequence=>1
,p_tab_name=>'One'
,p_tab_text=>'1'
,p_tab_target=>'f?p=4155:1:&SESSION'
,p_current_on_tabset=>'One'
);
wwv_flow_api.create_toplevel_tab(
 p_id=>wwv_flow_api.id(519229449056523.4163)
,p_tab_set=>'main'
,p_tab_sequence=>2
,p_tab_name=>'Two'
,p_tab_text=>'2'
,p_tab_target=>'f?p=4155:10:&SESSION'
,p_current_on_tabset=>'Two'
);
wwv_flow_api.create_toplevel_tab(
 p_id=>wwv_flow_api.id(519313755056523.4163)
,p_tab_set=>'main'
,p_tab_sequence=>3
,p_tab_name=>'Three'
,p_tab_text=>'3'
,p_tab_target=>'f?p=4155:10:&SESSION'
,p_current_on_tabset=>'Three'
);
wwv_flow_api.create_toplevel_tab(
 p_id=>wwv_flow_api.id(519415313056523.4163)
,p_tab_set=>'main'
,p_tab_sequence=>4
,p_tab_name=>'Four'
,p_tab_text=>'4'
,p_tab_target=>'f?p=4155:10:&SESSION'
,p_current_on_tabset=>'Four'
);
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/page/columbus_login_and_logout_page_from_4999
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(515426975056506.4163)
,p_theme_id=>101
,p_name=>'(Columbus) Login and Logout Page From 4999.ko'
,p_internal_name=>'COLUMBUS_LOGIN_AND_LOGOUT_PAGE_FROM_4999'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="no-js lt-ie9 lt-ie8 ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="no-js lt-ie9 ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="no-js ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'  ',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD#>',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#',
'<a name="PAGETOP"></a>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="htmldbLogo2"></div>',
'<div class="htmldbSep"><br/></div>',
'<div id="htmldbBreadcrumbTop"><br /></div>',
'<div class="htmldbBreadcrumbRegion"><br /></div>',
'<a name="SkipRepNav"></a>',
'<div id="htmldbMessageHolder">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div class="htmldbBodyMargin">',
'<table summary="" cellpadding="0" cellspacing="0" border="0" height="70%">',
'<tr>',
'<td valign="top">#REGION_POSITION_01#</td>',
'<td class="htmldbColumnSep"><div class="htmldbColumnSep"><br /></div></td>',
'<td valign="top">#REGION_POSITION_02##REGION_POSITION_04##BODY#</td>',
'<td class="htmldbColumnSep"><div class="htmldbColumnSep"><br /></div></td>',
'<td valign="top" style="width:100%"><div style="float:right;">#REGION_POSITION_03##REGION_POSITION_05#</div></td>',
'</tr>',
'</table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="htmldbFlowL">&MSG_LANGUAGE.: &BROWSER_LANGUAGE.</div>',
'<div class="htmldbFlowV">#FLOW_VERSION#</div>',
'<div class="htmldbNewBottom">',
'<div class="htmldbNewBottom1"><br /></div>',
'<div class="htmldbNewBottom2">&MSG_COPYRIGHT.</div>',
'<br />',
'</div>',
'#FORM_CLOSE#',
'<a name="END"><br /></a>',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aNotification success" id="MESSAGE" role="alert">',
'  <div class="aNotificationText">',
'    <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconMedium success"/>',
'    <p>#SUCCESS_MESSAGE#</p>',
'    <a href="#" class="closeMessage" onclick="$x_Remove(''MESSAGE'');return false;"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#CLOSE_NOTIFICATION#" class="iconSmall close"/></a>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aNotification warning" id="MESSAGE" role="alert">',
'  <div class="aNotificationText">',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconMedium warning"/>',
'    <div class="warningMessage">',
'      <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'      #MESSAGE#',
'    </div>',
'    <a href="#" class="closeMessage" onclick="$x_Remove(''MESSAGE'');return false;"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#CLOSE_NOTIFICATION#" class="iconSmall close"/></a>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br />',
'<br />',
'<pre>#MESSAGE#</pre>',
'<a href="#BACK_LINK#">#RETURN_TO_APPLICATION#</a>'))
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>80966020820422852.4163
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/popup_info
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(24029824597247454.4163)
,p_theme_id=>101
,p_name=>'Popup Info.ko'
,p_internal_name=>'POPUP_INFO'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="no-js lt-ie9 lt-ie8 ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="no-js lt-ie9 ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="no-js ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'',
'  <meta charset="UTF-8">',
'    <title>#TITLE#</title>',
'    <link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'    ',
'    #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body #ONLOAD# class="aPopupPage">',
'    <noscript>&MSG_JSCRIPT.</noscript>#FORM_OPEN#<a name="PAGETOP"></a>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="htmldbMessageHolder">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div>#REGION_POSITION_02##REGION_POSITION_03##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##BODY#</div>',
'<div style="text-align:middle;">#REGION_POSITION_08#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aNotification success" id="MESSAGE" role="alert">',
'  <div class="aNotificationText">',
'    <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconMedium success"/>',
'    <p>#SUCCESS_MESSAGE#</p>',
'    <a href="#" class="closeMessage" onclick="$x_Remove(''MESSAGE'');return false;"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#CLOSE_NOTIFICATION#" class="iconSmall close"/></a>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aNotification warning" id="MESSAGE" role="alert">',
'  <div class="aNotificationText">',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconMedium warning"/>',
'    <div class="warningMessage">',
'      <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'      #MESSAGE#',
'    </div>',
'    <a href="#" class="closeMessage" onclick="$x_Remove(''MESSAGE'');return false;"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#CLOSE_NOTIFICATION#" class="iconSmall close"/></a>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br />',
'<br />',
'<pre>#MESSAGE#</pre>',
'<a href="#BACK_LINK#">#RETURN_TO_APPLICATION#</a>'))
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>19940022257958945.4163
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/apex_5_0_wizard_page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1146777630795684705.4163)
,p_theme_id=>101
,p_name=>'APEX 5.0 - Wizard Page.ko'
,p_internal_name=>'APEX_5.0_WIZARD_PAGE'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.builder.initWizardProgressBar();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="no-js lt-ie9 lt-ie8 ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="no-js lt-ie9 ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="no-js ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'',
'  <meta charset="UTF-8" />',
'  <title>#TITLE#</title>',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'  ',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT# ',
'<!--[if lt IE 9]><script src="#IMAGE_PREFIX#libraries/apex/html5_ie.js"></script><![endif]-->',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body class="a-Page--wizard #PAGE_CSS_CLASSES#" #ONLOAD#>',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#REGION_POSITION_07#',
'#REGION_POSITION_08#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div class="u-Layout u-Layout--centerVertically">',
'  <div class="a-Wizard a-Wizard--default">',
'    #REGION_POSITION_02#',
'    <div class="a-Wizard-controls">#REGION_POSITION_01#</div>',
'    <div class="a-Wizard-body">#BODY#</div>',
'    <div class="a-Wizard-buttons">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'#REGION_POSITION_04#'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer class="a-Footer">',
'',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body></html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-AlertMessages a-AlertMessages--page" role="alert" id="sucessMsg">',
' <div class="a-AlertMessages-item">',
'  <div class="a-MediaBlock a-AlertMessages-message is-success">',
'    <div class="a-MediaBlock-graphic">',
'      <span class="a-Icon a-Icon--medium icon-check"></span> ',
'    </div>',
'    <div class="a-MediaBlock-content">',
'      <h5 class="a-AlertMessages-messageTitle" id="sucessMsg-Message">#SUCCESS_MESSAGE#</h5>',
'      <button id="sucessMsg-Close" class="a-Button a-Button--small a-Button--noUI a-Button--noLabel a-Button--withIcon a-Button--alertMessages" type="button" title="#CLOSE_NOTIFICATION#" onclick="$x_Remove(''sucessMsg'');return false;"><span class="a-I'
||'con icon-remove"></span></button>',
'    </div>',
'  </div>',
' </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-AlertMessages a-AlertMessages--page" role="alert" id="errorMsg">',
' <div class="a-AlertMessages-item">',
'  <div class="a-MediaBlock a-AlertMessages-message is-error">',
'    <div class="a-MediaBlock-graphic">',
'      <span class="a-Icon a-Icon--medium icon-remove"></span> ',
'    </div>',
'    <div class="a-MediaBlock-content">',
'      <h5 class="a-AlertMessages-messageTitle" id="errorMsg-Message">#MESSAGE#</h5>',
'      <button id="errorMsg-Close" class="a-Button a-Button--small a-Button--noUI a-Button--noLabel a-Button--withIcon a-Button--alertMessages" type="button" title="#CLOSE_NOTIFICATION#" onclick="$x_Remove(''errorMsg'');return false;"><span class="a-Ico'
||'n icon-remove"></span></button>',
'    </div>',
'  </div>',
' </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="htmldbNavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_sidebar_def_reg_pos=>'BODY_3'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_08'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--danger a-Alert--wizard a-Alert--defaultIcons">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'      </div>',
'      <div class="a-Alert-body">',
'        <h2 class="a-Alert-subTitle">#MESSAGE#</h2>',
'        #ADDITIONAL_INFO#',
'        #TECHNICAL_INFO#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--large a-Button--hot" onclick="#BACK_LINK#" type="button">#RETURN_TO_APPLICATION#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-grid-container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-col apex-col-#COLUMN_SPAN_NUMBER# #ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button/html_button_legacy_apex_5_migration
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(3791751542872.4163)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_internal_name=>'HTML_BUTTON_LEGACY_APEX_5_MIGRATION'
,p_template=>'<input type="button" value="#LABEL!ATTR#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>'<input type="button" value="#LABEL!ATTR#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_template_comment=>'5.0 upgrade'
,p_theme_id=>101
);
end;
/
prompt --application/shared_components/user_interface/templates/button/apex_4_1_button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(297140727685898042.4163)
,p_template_name=>'APEX 4.1 - Button'
,p_internal_name=>'APEX_4.1_BUTTON'
,p_template=>'<button class="aButton" onclick="#LINK#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL!HTML#</span></button> '
,p_hot_template=>'<button class="aButton hotButton" onclick="#LINK#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL!HTML#</span></button> '
,p_reference_id=>275775519061831382.4163
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="button-gray" role="button" title="#LABEL#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#><span>#LABEL#</span></a> ',
'',
'',
'<a href="#LINK#" class="button-orange" role="button" title="#LABEL#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#><span>#LABEL#</span></a> '))
,p_theme_id=>101
);
end;
/
prompt --application/shared_components/user_interface/templates/button/apex_5_0_button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(1146918375616882531.4163)
,p_template_name=>'APEX 5.0 - Button'
,p_internal_name=>'APEX_5.0_BUTTON'
,p_template=>'<button onclick="#JAVASCRIPT#" class="a-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL!HTML#</button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="a-Button a-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL!HTML#</button>'
,p_reference_id=>174750904387485475.4163
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>101
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_box
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(517201101056507.4163)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aRegion aActionRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="aRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="aRegionContent clearfix">',
'    #BODY#',
'  </div>',
'  <span class="aButtonContainer">',
'    #CLOSE##DELETE##EDIT##CHANGE##PREVIOUS##NEXT##CREATE#',
'  </span>',
'</section>'))
,p_page_plug_template_name=>'Wizard Box'
,p_internal_name=>'WIZARD_BOX'
,p_theme_id=>101
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>18253116293565611.4163
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/copy_of_apex_4_0_wizard_box_warning
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(498992332002296754.4163)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aRegion aActionRegion warningRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="aRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="aRegionContent clearfix">',
'    <div class="aActionRegionIcon">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" />',
'    </div>',
'    #BODY#',
'  </div>',
'  <span class="aButtonContainer">',
'    #CLOSE##DELETE##EDIT##CHANGE##PREVIOUS##NEXT##CREATE#',
'  </span>',
'</section>'))
,p_page_plug_template_name=>'Copy of APEX 4.0 - Wizard Box (Warning)'
,p_internal_name=>'COPY_OF_APEX_4.0_WIZARD_BOX_WARNING'
,p_theme_id=>101
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>162320107014603380.4163
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/gray_box_c_htmldbgbr_no_top_link
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(504630423293932132.4163)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aRegion altHeading editRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="aRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="aButtonContainer">',
'      #EDIT##CLOSE##CREATE##CREATE2##EXPAND##HELP##DELETE##COPY##PREVIOUS##NEXT#',
'    </span>',
'  </div>',
'  <div class="aRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Gray Box (c:htmldbGBR) (No Top Link)'
,p_internal_name=>'GRAY_BOX_C:HTMLDBGBR_NO_TOP_LINK'
,p_theme_id=>101
,p_theme_class_id=>0
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>' '
,p_reference_id=>17352808493599936.4163
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1146723779286487855.4163)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 class="a-Alert-title">#TITLE#</h2>',
'      </div>',
'      <div class="a-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      #PREVIOUS##CLOSE##CREATE##NEXT#',
'    </div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Alert'
,p_internal_name=>'APEX_5.0_ALERT'
,p_theme_id=>101
,p_theme_class_id=>7
,p_default_template_options=>'a-Alert--defaultIcons'
,p_preset_template_options=>'a-Alert--warning:a-Alert--wizard'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>746362351042209764.4163
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_button_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1146753630500658875.4163)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-ButtonRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="a-ButtonRegion-wrap">',
'    <div class="a-ButtonRegion-col a-ButtonRegion-col--left"><div class="a-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="a-ButtonRegion-col a-ButtonRegion-col--content">',
'      <h2 class="a-ButtonRegion-title">#TITLE#</h2>',
'      #BODY#',
'      <div class="a-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="a-ButtonRegion-col a-ButtonRegion-col--right"><div class="a-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Button Region'
,p_internal_name=>'APEX_5.0_BUTTON_REGION'
,p_theme_id=>101
,p_theme_class_id=>21
,p_default_template_options=>'a-ButtonRegion--wizard'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>687153470345619376.4163
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1146757828351658890.4163)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Region #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  <div class="a-Region-header">',
'    <div class="a-Region-headerItems  a-Region-headerItems--title">',
'      <h2 class="a-Region-title">#TITLE#</h2>',
'    </div>',
'    <div class="a-Region-headerItems  a-Region-headerItems--buttons">',
'      #PREVIOUS##EXPAND##EDIT##CHANGE##DELETE##COPY##HELP##NEXT##CREATE##CREATE2##CLOSE#',
'    </div>',
'  </div>',
'  <div class="a-Region-body">',
'  <div class="a-Region-bodyHeader">#REGION_HEADER#</div>',
'  #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Region'
,p_internal_name=>'APEX_5.0_REGION'
,p_theme_id=>101
,p_theme_class_id=>21
,p_preset_template_options=>'a-Region--noPadding'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>174748721787471587.4163
,p_translate_this_template=>'N'
,p_template_comment=>'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI a-Button--goToTop" onclick="uF();" type="button" title="&TOP."><span class="a-Icon icon-up-chevron"></span></button>'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_wizard_header
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1146833868130703375.4163)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="wizardHeader" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Wizard Header'
,p_internal_name=>'APEX_5.0_WIZARD_HEADER'
,p_theme_id=>101
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>42210710875242480.4163
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_wizard_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1146834495802703415.4163)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Wizard-region a-Form #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  <h2 class="u-VisuallyHidden">#TITLE#</h2>',
'  <div class="a-Wizard-regionHeader">#REGION_HEADER#</div>',
'  <div class="a-Wizard-regionBody">#BODY#</div>',
'  <div class="a-Wizard-regionFooter">#REGION_FOOTER#</div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Wizard Region'
,p_internal_name=>'APEX_5.0_WIZARD_REGION'
,p_theme_id=>101
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>702777601713950915.4163
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_wizard_title_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1146873381156733851.4163)
,p_layout=>'TABLE'
,p_template=>'<div class="#REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><h1 class="a-Wizard-title">#TITLE#</h1></div>'
,p_page_plug_template_name=>'APEX 5.0 - Wizard Title Region'
,p_internal_name=>'APEX_5.0_WIZARD_TITLE_REGION'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>101
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>'class="htmldbInstruct"'
,p_reference_id=>703469000349150769.4163
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_wizard_body_hide_show
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1147008167971256777.4163)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aWizardRegion" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  <div class="wizardRegionHeading">',
'    <h1><a href="javascript:void(0);" onclick="$(''##REGION_STATIC_ID#_content'').slideToggle();$(''##REGION_STATIC_ID#_img'').toggleClass(''expanded'');" class="hideShowLink"><img src="#IMAGE_PREFIX#f_spacer.gif" class="hideShow" alt="" id="#REGION_STATIC'
||'_ID#_img"/>#TITLE#</a></h1>',
'    <div class="buttonContainer">',
'    #EDIT##CLOSE##EXPAND##HELP##DELETE##COPY##PREVIOUS##NEXT##CREATE##CREATE2#',
'    </div>',
'  </div>',
'  <div class="hideShowRegion" id="#REGION_STATIC_ID#_content">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'APEX 5.0 - Wizard Body (Hide/Show)'
,p_internal_name=>'APEX_5.0_WIZARD_BODY_HIDE/SHOW'
,p_theme_id=>101
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>399850559367741099.4163
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/formfield_optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(517018400056507.4163)
,p_template_name=>'FormField_Optional'
,p_internal_name=>'FORMFIELD_OPTIONAL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="aLabel aOptional"><a href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_after_label=>'<small class="aError">#ERROR_MESSAGE#</small>'
,p_theme_id=>101
,p_theme_class_id=>1
,p_reference_id=>17388415351892041.4163
,p_translate_this_template=>'N'
,p_template_comment=>'<label for="#CURRENT_ITEM_NAME#"><a class="htmldbLabelOptional" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999">'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/formfield_required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(107535106471295136.4163)
,p_template_name=>'FormField_Required'
,p_internal_name=>'FORMFIELD_REQUIRED'
,p_template_body1=>'<em>*</em><label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="aLabel aRequired"><a href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999">'
,p_template_body2=>' <span class="hideMeButHearMe">(#VALUE_REQUIRED#)</span></a></label>'
,p_on_error_after_label=>'<small class="aError">#ERROR_MESSAGE#</small>'
,p_theme_id=>101
,p_theme_class_id=>2
,p_reference_id=>17388508175892042.4163
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/apex_5_0_optional_label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1146837484282708152.4163)
,p_template_name=>'APEX 5.0 - Optional Label'
,p_internal_name=>'APEX_5.0_OPTIONAL_LABEL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="a-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="a-Form-fieldContainer #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="a-Form-inputContainer">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="a-Button a-Button--noUI a-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#"  aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidde'
||'n="true"></span></button>'
,p_error_template=>'<span class="a-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>101
,p_theme_class_id=>4
,p_reference_id=>487444299516703815.4163
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/apex_5_0_required_label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1146837615734708160.4163)
,p_template_name=>'APEX 5.0 - Required Label'
,p_internal_name=>'APEX_5.0_REQUIRED_LABEL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Form-labelContainer">',
'  <span class="a-Form-required"><span class="a-Icon icon-asterisk"></span></span><label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="a-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="a-Form-fieldContainer #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="a-Form-inputContainer">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="a-Button a-Button--noUI a-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#"  aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidde'
||'n="true"></span></button>'
,p_error_template=>'<span class="a-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>101
,p_theme_class_id=>4
,p_reference_id=>487443659585685414.4163
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(518927322056521.4163)
,p_page_name=>'winlov'
,p_page_title=>unistr('\AC80\C0C9 \B300\D654\C0C1\C790')
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#APEX_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'<link rel="stylesheet" href="#IMAGE_PREFIX#apex_ui/css/Core#MIN#.css?v=#APEX_VERSION#" type="text/css"/>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#apex_ui/css/Theme-Standard#MIN#.css?v=#APEX_VERSION#" type="text/css"/>',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="a-Page a-Page--popupLOV"'
,p_before_field_text=>'<div class="a-PopupLOV-actions a-Form--large">'
,p_filter_width=>'15'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="a-Form-field a-Form-searchField"'
,p_find_button_text=>unistr('\AC80\C0C9')
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>unistr('\B2EB\AE30')
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>unistr('\B2E4\C74C &gt;')
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>unistr('&lt; \C774\C804')
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>unistr('<div class="a-PopupLOV-pagination">\D589 #FIRST_ROW# - #LAST_ROW#</div>')
,p_result_rows_per_pg=>200
,p_before_result_set=>'<div class="a-PopupLOV-links">'
,p_theme_id=>101
,p_theme_class_id=>1
,p_reference_id=>17343114994581872.4163
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(204026132314798041.4163)
,p_theme_id=>101
,p_name=>'Standard'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#apex_ui/css/Core#MIN#.css',
'#IMAGE_PREFIX#apex_ui/css/Theme-Standard#MIN#.css'))
,p_is_current=>true
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1146724143104487863.4163)
,p_theme_id=>101
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1146724462659487863.4163)
,p_theme_id=>101
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1146754092014658878.4163)
,p_theme_id=>101
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1146754358989658879.4163)
,p_theme_id=>101
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1146754729789658879.4163)
,p_theme_id=>101
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1146758446175658891.4163)
,p_theme_id=>101
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1146759398601658893.4163)
,p_theme_id=>101
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1146725670811487866.4163)
,p_theme_id=>101
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146723779286487855.4163)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1146725750422487866.4163)
,p_theme_id=>101
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146723779286487855.4163)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1146725914274487866.4163)
,p_theme_id=>101
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146723779286487855.4163)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_api.id(1146724143104487863)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1146726163815487867.4163)
,p_theme_id=>101
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146723779286487855.4163)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_api.id(1146724143104487863)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1146726316311487867.4163)
,p_theme_id=>101
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146723779286487855.4163)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_api.id(1146724143104487863)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1146726506076487867.4163)
,p_theme_id=>101
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146723779286487855.4163)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(1146724462659487863)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1146726718245487867.4163)
,p_theme_id=>101
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146723779286487855.4163)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_api.id(1146724462659487863)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1146726819613487867.4163)
,p_theme_id=>101
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146723779286487855.4163)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1146727036922487867.4163)
,p_theme_id=>101
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146723779286487855.4163)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_api.id(1146724143104487863)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1146755698969658883.4163)
,p_theme_id=>101
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146753630500658875.4163)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1146755801158658885.4163)
,p_theme_id=>101
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146753630500658875.4163)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(1146754729789658879)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1146756082978658885.4163)
,p_theme_id=>101
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146753630500658875.4163)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(1146754729789658879)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1146756265184658888.4163)
,p_theme_id=>101
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146753630500658875.4163)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(1146754358989658879)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1146756454000658889.4163)
,p_theme_id=>101
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146753630500658875.4163)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(1146754358989658879)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1146756528427658889.4163)
,p_theme_id=>101
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146753630500658875.4163)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1146756794417658889.4163)
,p_theme_id=>101
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146753630500658875.4163)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_api.id(1146754092014658878)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1146756999993658889.4163)
,p_theme_id=>101
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146753630500658875.4163)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_api.id(1146754092014658878)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1554803565325408341.4163)
,p_theme_id=>101
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146757828351658890.4163)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(1146754092014658878)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1554803717040408342.4163)
,p_theme_id=>101
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146757828351658890.4163)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_api.id(1146754092014658878)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1554803989855408342.4163)
,p_theme_id=>101
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1146757828351658890.4163)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_api.id(1146754358989658879)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1554804189766408342.4163)
,p_theme_id=>101
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1146757828351658890.4163)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_api.id(1146754358989658879)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1554804330090408342.4163)
,p_theme_id=>101
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146757828351658890.4163)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_api.id(1146759398601658893)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1554804537318408342.4163)
,p_theme_id=>101
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146757828351658890.4163)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_api.id(1146754729789658879)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1554804780569408343.4163)
,p_theme_id=>101
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146757828351658890.4163)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_api.id(1146758446175658891)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1554804971600408343.4163)
,p_theme_id=>101
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146757828351658890.4163)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_api.id(1146758446175658891)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1554805190489408343.4163)
,p_theme_id=>101
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1146757828351658890.4163)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_api.id(1146754358989658879)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1554805239267408343.4163)
,p_theme_id=>101
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146757828351658890.4163)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1554805471106408343.4163)
,p_theme_id=>101
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1146757828351658890.4163)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_api.id(1146754729789658879)
,p_template_types=>'REGION'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(655487206132077960.4163)
,p_name=>'Authentication'
,p_scheme_type=>'PLUGIN_COM.ORACLE.AUTHENTICATION.4155'
,p_invalid_session_type=>'URL'
,p_invalid_session_url=>'null'
,p_cookie_name=>'-NO_COOKIE-'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/authentication_type/com_oracle_authentication_4155
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(1025089530051554947.4163)
,p_plugin_type=>'AUTHENTICATION TYPE'
,p_name=>'COM.ORACLE.AUTHENTICATION.4155'
,p_display_name=>unistr('\B0B4\BD80 \B85C\ADF8\C778 \C778\C99D')
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('AUTHENTICATION TYPE','COM.ORACLE.AUTHENTICATION.4155'),'')
,p_api_version=>1
,p_session_sentry_function=>'wwv_flow_authentication_f4155.session_sentry'
,p_standard_attributes=>'LOGIN_PAGE'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(4973000124302346.4163)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>unistr('\B370\C2A4\D06C\D1B1')
,p_display_seq=>10
,p_use_auto_detect=>true
,p_is_default=>true
,p_theme_id=>101
,p_home_url=>'f?p=4155:1:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_nav_list_template_options=>'#DEFAULT#'
,p_include_legacy_javascript=>'PRE18:18'
,p_nav_bar_type=>'NAVBAR'
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1.4163
,p_user_interface_id=>wwv_flow_api.id(4973000124302346.4163)
,p_name=>unistr('\B85C\ADF8\C544\C6C3 \ACF5\C6A9 \D398\C774\C9C0')
,p_alias=>'PUBLIC_PAGE'
,p_step_title=>unistr('\B85C\ADF8\C544\C6C3 \ACF5\C6A9 \D398\C774\C9C0')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(24029824597247454.4163)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7642519848874484.4163)
,p_plug_name=>unistr('\C131\ACF5\C801\C73C\B85C \B85C\ADF8\C544\C6C3\B418\C5C8\C2B5\B2C8\B2E4.')
,p_region_template_options=>'a-Alert--defaultIcons:a-Alert--success:a-Alert--wizard'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146723779286487855.4163)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\C778\C99D \CCB4\ACC4\C5D0\C11C \C81C\ACF5\D55C \B85C\ADF8\C544\C6C3 \B9C1\D06C\B97C \C0AC\C6A9\D55C \D6C4 \C5EC\AE30\B85C \C7AC\C9C0\C815\B418\C5C8\C2B5\B2C8\B2E4. \C560\D50C\B9AC\CF00\C774\C158\C758 \D398\C774\C9C0\B85C \B300\C2E0 \C7AC\C9C0\C815\D558\B824\BA74 \B2E4\C74C\ACFC \AC19\C774 \D558\C2ED\C2DC\C624.'),
'<ul>',
unistr('<li>\C560\D50C\B9AC\CF00\C774\C158\C5D0 \D398\C774\C9C0\B97C \C0DD\C131\D558\ACE0 PUBLIC_PAGE\B77C\B294 \BCC4\CE6D\C744 \C9C0\C815\D569\B2C8\B2E4.'),
unistr('<li>\C0DD\C131\AE30 \D398\C774\C9C0\C758 \C18D\C131 \D398\C774\C9C0\C5D0\C11C "\C608 - \ACF5\C6A9 \D398\C774\C9C0" \ACF5\C6A9 \D398\C774\C9C0 \C18D\C131\C744 \C120\D0DD\D569\B2C8\B2E4.'),
unistr('<li>\C778\C99D \D15C\D50C\B9AC\D2B8\C5D0\C11C \B85C\ADF8\C544\C6C3 URL\C744 \BCC0\ACBD\D558\C5EC \B85C\ADF8\C544\C6C3 \D504\B85C\C2DC\C800 \C2E4\D589 \D6C4 \C774 \C0C8 \D398\C774\C9C0\B85C \C7AC\C9C0\C815\D569\B2C8\B2E4. \C608\B97C \B4E4\C5B4, \B2E4\C74C \B85C\ADF8\C544\C6C3 URL\C744 \C0AC\C6A9\D569\B2C8\B2E4.<p>'),
'<pre>f?p=&amp;APP_ID.:PUBLIC_PAGE:&amp;SESSION.</pre>',
'<p>',
'</ul>'))
,p_plug_column_width=>'valign="top"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_api.create_page(
 p_id=>50.4163
,p_user_interface_id=>wwv_flow_api.id(4973000124302346.4163)
,p_name=>unistr('\C77C\BC18 \C0AC\C6A9\C790 \BE44\BC00\BC88\D638 \BCC0\ACBD')
,p_step_title=>unistr('\C77C\BC18 \C0AC\C6A9\C790 \BE44\BC00\BC88\D638 \BCC0\ACBD')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Change End User Password'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1146777630795684705.4163)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8191525547492034.4163)
,p_plug_name=>'reset'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P50_PASSWORD := null;',
':P50_CONFIRM_PASSWORD := null;',
':P50_ENTER_CURRENT_PASSWORD := null;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_translate_title=>'N'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8191706236492034.4163)
,p_plug_name=>unistr('\BE44\BC00\BC88\D638 \BCC0\ACBD - \BCF8\BB38')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146834495802703415.4163)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>wwv_flow_api.id(1939532588110833.4163)
,p_plug_column_width=>'valign="top"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(923579772962744043.4163)
,p_plug_name=>unistr('\BE44\BC00\BC88\D638 \BCC0\ACBD')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146873381156733851.4163)
,p_plug_display_sequence=>21
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_column_width=>'valign="top"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(923580432969744050.4163)
,p_plug_name=>unistr('\BE44\BC00\BC88\D638 \BCC0\ACBD - \B2E8\CD94')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146753630500658875.4163)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_column_width=>'valign="top"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1146875645787737806.4163)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(923580432969744050.4163)
,p_button_name=>'Save'
,p_button_static_id=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1146918375616882531.4163)
,p_button_image_alt=>unistr('\BCC0\ACBD\C0AC\D56D \C801\C6A9')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8192329780492035.4163)
,p_name=>'P50_USER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8191706236492034.4163)
,p_prompt=>unistr('\C0AC\C6A9\C790 \C774\B984:')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fielddatabold'
,p_field_template=>wwv_flow_api.id(1146837615734708160.4163)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_help_text=>unistr('\BE44\BC00\BC88\D638\AC00 \BCC0\ACBD\B41C \C0AC\C6A9\C790\C758 \C774\B984')
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8192820569492035.4163)
,p_name=>'P50_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8191706236492034.4163)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\C0C8 \BE44\BC00\BC88\D638 \C785\B825')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_api.id(1146837615734708160.4163)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>unistr('\C0C8 \BE44\BC00\BC88\D638 \C785\B825')
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8193305833492036.4163)
,p_name=>'P50_CONFIRM_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(8191706236492034.4163)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\C0C8 \BE44\BC00\BC88\D638 \D655\C778')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_api.id(1146837615734708160.4163)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>unistr('\C0C8 \BE44\BC00\BC88\D638 \B2E4\C2DC \C785\B825')
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8193806723492036.4163)
,p_name=>'P50_ENTER_CURRENT_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8191706236492034.4163)
,p_prompt=>unistr('\D604\C7AC \BE44\BC00\BC88\D638 \C785\B825')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1146837615734708160.4163)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>unistr('\D604\C7AC \BE44\BC00\BC88\D638\B97C \C785\B825\D558\C2ED\C2DC\C624.')
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15093006941824438.4163)
,p_name=>'P50_USER_SGID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(8191706236492034.4163)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_protection_level=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(15093732698841347.4163)
,p_computation_sequence=>10
,p_computation_item=>'P50_USER_SGID'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>'return wwv_flow_security.g_security_group_id;'
,p_compute_when_type=>'%null%'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(12378622409765411.4163)
,p_computation_sequence=>20
,p_computation_item=>'P50_USER_NAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>'return wwv_flow_security.get_expired_user_name;'
,p_compute_when=>'CONFIRM'
,p_compute_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8194403614492037.4163)
,p_validation_name=>'P50_ENTER_CURRENT_PASSWORD'
,p_validation_sequence=>.5
,p_validation=>'P50_ENTER_CURRENT_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('\BE44\BC00\BC88\D638\B97C \C9C0\C815\D574\C57C \D569\B2C8\B2E4.')
,p_associated_item=>wwv_flow_api.id(8193806723492036.4163)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8194629425492037.4163)
,p_validation_name=>'P50_PASSWORD Not Null'
,p_validation_sequence=>1
,p_validation=>'P50_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('\BE44\BC00\BC88\D638\B97C \C9C0\C815\D574\C57C \D569\B2C8\B2E4.')
,p_associated_item=>wwv_flow_api.id(8192820569492035.4163)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_validation_comment=>'generated 07-AUG-2002 16:59'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8194822652492037.4163)
,p_validation_name=>'P50_CONFIRM_PASSWORD Not Null'
,p_validation_sequence=>2
,p_validation=>'P50_CONFIRM_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('\D655\C778\C6A9 \BE44\BC00\BC88\D638\B97C \C9C0\C815\D574\C57C \D569\B2C8\B2E4.')
,p_associated_item=>wwv_flow_api.id(8193305833492036.4163)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_validation_comment=>'generated 07-AUG-2002 16:59'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8195026061492037.4163)
,p_validation_name=>'passwd = confirm passwd'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P50_PASSWORD != :P50_CONFIRM_PASSWORD then',
'  :P50_PASSWORD := null;',
'  :P50_CONFIRM_PASSWORD := null;',
'  return false;',
'else',
'  return true;',
'end if;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('\BE44\BC00\BC88\D638\C640 \D655\C778\C6A9 \BE44\BC00\BC88\D638\AC00 \C77C\CE58\D558\C9C0 \C54A\C2B5\B2C8\B2E4.')
,p_validation_condition=>':P50_PASSWORD is not null and :P50_CONFIRM_PASSWORD is not null'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(8193305833492036.4163)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8195417294492037.4163)
,p_validation_name=>'Validate Current Password'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wwv_flow_security.g_security_group_id := :P50_USER_SGID;',
'return wwv_flow_user_api.is_login_password_valid(',
'  p_username=>:P50_USER_NAME,',
'  p_password=>:P50_ENTER_CURRENT_PASSWORD);'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('\BD80\C801\D569\D55C \BE44\BC00\BC88\D638')
,p_validation_condition=>'P50_ENTER_CURRENT_PASSWORD'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(8193806723492036.4163)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(25690303485866343.4163)
,p_validation_name=>'strong password verification'
,p_validation_sequence=>102
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return wwv_flow_security.strong_password_validation(',
'      p_username       => :P50_USER_NAME,',
'      p_password       => :P50_PASSWORD,',
'      p_old_password   => :P50_ENTER_CURRENT_PASSWORD,',
'      p_workspace_name => wwv_flow_security.find_company_name(:WORKSPACE_ID));'))
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>unistr('\C624\B958')
,p_validation_condition=>'P50_ENTER_CURRENT_PASSWORD'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(.4163)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8195726390492038.4163)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'change password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  l_p varchar2(256) := v(''P50_PASSWORD'');',
'begin',
'  wwv_flow_security.g_security_group_id := :P50_USER_SGID;',
'  wwv_flow.update_cache_with_write(''P50_PASSWORD'',null);',
'  wwv_flow.update_cache_with_write(''P50_CONFIRM_PASSWORD'',null);',
'  wwv_flow.update_cache_with_write(''P50_ENTER_CURRENT_PASSWORD'',null);',
'  wwv_flow_api.g_fnd_user_password_action := true;',
'  update wwv_flow_fnd_user ',
'    set web_password = l_p, first_password_use_occurred = ''Y''',
'  where security_group_id = wwv_flow_security.g_security_group_id ',
'    and user_id = (select user_id ',
'                    from wwv_flow_fnd_user ',
'                   where security_group_id = wwv_flow_security.g_security_group_id ',
'                     and user_name = upper(:P50_USER_NAME));',
'  wwv_flow_api.g_fnd_user_password_action := false;',
'  wwv_flow_security.purge_expired_user_header(wwv_flow.g_instance);',
'  commit;',
'end;'))
,p_process_error_message=>unistr('\BE44\BC00\BC88\D638\B97C \BCC0\ACBD\D558\B294 \C911 \C624\B958\AC00 \BC1C\C0DD\D588\C2B5\B2C8\B2E4.')
,p_process_when=>':P50_PASSWORD = :P50_CONFIRM_PASSWORD'
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>unistr('\BE44\BC00\BC88\D638\AC00 \BCC0\ACBD\B418\C5C8\C2B5\B2C8\B2E4.')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8195926102492038.4163)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'50'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8195508618492037.4163)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'return'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  l_gotourl varchar2(4000);',
'begin',
'  wwv_flow.g_unrecoverable_error := true;',
'  l_gotourl := wwv_flow_session_state.get_builtin_global_item_value (',
'                   p_item_name => wwv_flow_session_state.c_deep_link_item_name );',
'  sys.owa_util.redirect_url(apex_util.prepare_url(replace(l_gotourl,''|'','':'')));',
'end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12382112282781418.4163)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set notification'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:REQUEST,''xy5993-'') <> ''CONFIRM'' then ',
'  wwv_flow.g_notification := wwv_flow_lang.system_message(''PASSWORD_MUST_BE_CHANGED'');',
'end if;'))
);
end;
/
prompt --application/pages/page_00099
begin
wwv_flow_api.create_page(
 p_id=>99.4163
,p_user_interface_id=>wwv_flow_api.id(4973000124302346.4163)
,p_name=>unistr('&PRODUCT_NAME. \BE44\D65C\C131 \C791\C5C5\C601\C5ED')
,p_step_title=>unistr('&PRODUCT_NAME. \BE44\D65C\C131 \C791\C5C5\C601\C5ED')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'&PRODUCT_NAME. Inactive Workspace'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(1146777630795684705.4163)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(498926816038101235.4163)
,p_plug_name=>unistr('\C791\C5C5\C601\C5ED')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146834495802703415.4163)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P99_SGID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(498929027949101251.4163)
,p_plug_name=>'Do Not Purge Workspace'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146834495802703415.4163)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('\C544\B798\C758 <b>\C791\C5C5\C601\C5ED \BE44\C6B0\AE30 \C0AC\C6A9 \C548\D568</b>\C744 \B204\B974\BA74 &P99_WORKSPACE_NAME. \C791\C5C5\C601\C5ED\C744 \BE44\C6B0\C9C0 \C54A\B3C4\B85D \C694\CCAD\B429\B2C8\B2E4.  <b>&P99_WORKSPACE_NAME. \C791\C5C5\C601\C5ED\C744 \C0AD\C81C\D558\C9C0 \C54A\C73C\B824\BA74 \C774 \C791\C5C5\C744 \C218\D589\D574\C57C \D569\B2C8\B2E4.</b>  ')
,p_translate_title=>'N'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P99_SGID is not null and :P99_RID is not null and :P99_EID is not null and :P99_OK_TO_DELETE = ''Y'' and :P99_DATE_PURGED is null'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(498929409062101254.4163)
,p_plug_name=>'Purge Workspace'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146834495802703415.4163)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('&P99_WORKSPACE_NAME. \C791\C5C5\C601\C5ED\C758 \AD00\B9AC\C790\C778 &P99_LAST_UPDATED_BY. \C774(\AC00) \C774\BBF8 \C774 \C791\C5C5\C601\C5ED\C744 \BE44\C6B0\C9C0 \C54A\B3C4\B85D \C9C0\C815\D588\C73C\BA70, \C774 \C0AC\D56D\C740 &P99_LAST_UPDATED. \C5D0 &P99_LAST_UPDATED_BY. \C5D0 \C758\D574 \C5C5\B370\C774\D2B8\B418\C5C8\C2B5\B2C8\B2E4.'),
'<p>',
unistr('\C774 \C791\C5C5\C601\C5ED\C774 \B354 \C774\C0C1 \D544\C694\D558\C9C0 \C54A\C740 \ACBD\C6B0 <b>\C791\C5C5\C601\C5ED \BE44\C6B0\AE30 \C0AC\C6A9</b> \B2E8\CD94\B97C \B204\B974\C2ED\C2DC\C624. \ADF8\B7EC\BA74 <span style="font-weight:bold;color:#ff0033;">&P99_DATE_TO_BE_PURGED.</span> \B610\B294 \C774 \B0A0\C9DC \C774\D6C4\C5D0 \C790\B3D9\C73C\B85C \BE44\C6CC\C9D1\B2C8\B2E4.'),
''))
,p_translate_title=>'N'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P99_SGID is not null and :P99_RID is not null and :P99_EID is not null and :P99_OK_TO_DELETE = ''N'' and :P99_DATE_PURGED is null'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(498929808292101255.4163)
,p_plug_name=>unistr('\BD80\C801\D569\D55C \C694\CCAD')
,p_region_template_options=>'#DEFAULT#:a-Alert--warning:a-Alert--wizard'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146723779286487855.4163)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_plug_source=>unistr('\C774 \C560\D50C\B9AC\CF00\C774\C158\C740 &P99_APEX_URL.\C5D0\C11C \C791\C5C5\C601\C5ED \C0AC\C6A9\C744 \D655\C778\D558\B294 \B370 \C0AC\C6A9\B429\B2C8\B2E4. \BD80\C801\D569\D55C URL\C744 \C0AC\C6A9\D558\C5EC \C774 \D398\C774\C9C0\C5D0 \C561\C138\C2A4\D588\C2B5\B2C8\B2E4. \C774 \C560\D50C\B9AC\CF00\C774\C158\C774\B098 \BE44\C6B0\AE30 \D504\B85C\C138\C2A4\C5D0 \B300\D55C \BB38\C758 \C0AC\D56D\C774 \C788\B294 \ACBD\C6B0, \C804\C790 \BA54\C77C\C744 \D1B5\D574 <a href="mailto:&P99_PURGE_ADMIN_EMAIL.">&P99_PURGE_ADMIN_EMAIL.</a>(\C73C)\B85C \BB38\C758\D558\C2ED\C2DC\C624.')
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P99_SGID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(498930028451101256.4163)
,p_plug_name=>unistr('&PRODUCT_NAME. \C791\C5C5\C601\C5ED \BE44\C6B0\AE30')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146873381156733851.4163)
,p_plug_display_sequence=>5
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P99_SGID is not null and :P99_RID is not null and :P99_EID is not null and :P99_DATE_PURGED is null'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(498930208776101256.4163)
,p_plug_name=>unistr('&PRODUCT_NAME. \C744(\B97C) \C0AC\C6A9\D574 \C8FC\C154\C11C \AC10\C0AC\D569\B2C8\B2E4. - \BE44\C6CC\C9C4 \C791\C5C5\C601\C5ED')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146873381156733851.4163)
,p_plug_display_sequence=>25
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P99_SGID is not null and :P99_RID is not null and :P99_EID is not null and :P99_DATE_PURGED is not null'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1146878093898737830.4163)
,p_plug_name=>'Workspace Purge - Info'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146834495802703415.4163)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\BE44\D65C\C131 \C791\C5C5\C601\C5ED &P99_WORKSPACE_NAME.\C740(\B294) &P99_DATE_TO_BE_PURGED.\C5D0 \C0AD\C81C\B418\B3C4\B85D \C77C\C815\C774 \C7A1\D614\C2B5\B2C8\B2E4.'),
'<br/><br/>'))
,p_translate_title=>'N'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P99_SGID is not null and :P99_RID is not null and :P99_EID is not null and :P99_DATE_PURGED is null'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1146878195005737831.4163)
,p_plug_name=>'Workspace Purged  - Info'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146834495802703415.4163)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<strong>&P99_DATE_PURGED.</strong>\C5D0 <strong>&P99_WORKSPACE_NAME.</strong> \C791\C5C5\C601\C5ED\C774 \BE44\C6CC\C84C\C2B5\B2C8\B2E4.'),
'<p>',
unistr('&PRODUCT_NAME.(&P99_APEX_URL.)\C744(\B97C) \C0AC\C6A9\D574 \C8FC\C154\C11C \AC10\C0AC\D569\B2C8\B2E4.  '),
''))
,p_translate_title=>'N'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P99_SGID is not null and :P99_RID is not null and :P99_EID is not null and :P99_DATE_PURGED is not null'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1146878222526737832.4163)
,p_plug_name=>unistr('\B2E8\CD94')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146753630500658875.4163)
,p_plug_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(498929226472101252.4163)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1146878222526737832.4163)
,p_button_name=>'DONTPURGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1146918375616882531.4163)
,p_button_image_alt=>unistr('\C791\C5C5\C601\C5ED \BE44\C6B0\AE30 \C0AC\C6A9 \C548\D568')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P99_OK_TO_DELETE'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(498929614547101255.4163)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1146878222526737832.4163)
,p_button_name=>'PURGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1146918375616882531.4163)
,p_button_image_alt=>unistr('\C791\C5C5\C601\C5ED \BE44\C6B0\AE30 \C0AC\C6A9')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P99_OK_TO_DELETE'
,p_button_condition2=>'N'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(498931017585101269.4163)
,p_branch_action=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498927015083101242.4163)
,p_name=>'P99_EID'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(498926816038101235.4163)
,p_display_as=>'NATIVE_HIDDEN'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498927201924101248.4163)
,p_name=>'P99_DATE_TO_BE_PURGED'
,p_item_sequence=>95
,p_item_plug_id=>wwv_flow_api.id(498926816038101235.4163)
,p_prompt=>unistr('\B300\C0C1 \BE44\C6B0\AE30 \B0A0\C9DC')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fielddatabold'
,p_field_template=>wwv_flow_api.id(1146837484282708152.4163)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_escape_on_http_output=>'N'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498927400231101248.4163)
,p_name=>'P99_LAST_UPDATED_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(498926816038101235.4163)
,p_prompt=>unistr('\C5C5\B370\C774\D2B8 \C218\D589\C790')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fielddatabold'
,p_field_template=>wwv_flow_api.id(1146837484282708152.4163)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498927620508101249.4163)
,p_name=>'P99_SGID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(498926816038101235.4163)
,p_display_as=>'NATIVE_HIDDEN'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498927813465101249.4163)
,p_name=>'P99_RID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(498926816038101235.4163)
,p_display_as=>'NATIVE_HIDDEN'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498928004161101250.4163)
,p_name=>'P99_WORKSPACE_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(498926816038101235.4163)
,p_prompt=>unistr('\C791\C5C5\C601\C5ED \C774\B984')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fielddatabold'
,p_field_template=>wwv_flow_api.id(1146837484282708152.4163)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498928221678101250.4163)
,p_name=>'P99_ADMIN_EMAIL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(498926816038101235.4163)
,p_prompt=>unistr('\C791\C5C5\C601\C5ED \C6D0\B798 \C694\CCAD\C790:')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fielddatabold'
,p_field_template=>wwv_flow_api.id(1146837484282708152.4163)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498928405763101250.4163)
,p_name=>'P99_OK_TO_DELETE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(498926816038101235.4163)
,p_prompt=>unistr('\C791\C5C5\C601\C5ED \BE44\C6C0?')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_tag_css_classes=>'fielddatabold'
,p_field_template=>wwv_flow_api.id(1146837484282708152.4163)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498928608702101251.4163)
,p_name=>'P99_LAST_UPDATED'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(498926816038101235.4163)
,p_prompt=>unistr('\C5C5\B370\C774\D2B8 \B0A0\C9DC')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fielddatabold'
,p_field_template=>wwv_flow_api.id(1146837484282708152.4163)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_escape_on_http_output=>'N'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(498928817636101251.4163)
,p_name=>'P99_DATE_PURGED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(498926816038101235.4163)
,p_prompt=>unistr('\BE44\C6B4 \B0A0\C9DC')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fielddatabold'
,p_display_when=>'P99_DATE_PURGED'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1146837484282708152.4163)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(502441507830936748.4163)
,p_name=>'P99_APEX_URL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(498926816038101235.4163)
,p_prompt=>unistr('\C791\C5C5\C601\C5ED URL')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fielddatabold'
,p_field_template=>wwv_flow_api.id(1146837484282708152.4163)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(504639132530012441.4163)
,p_name=>'P99_PURGE_ADMIN_EMAIL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(498926816038101235.4163)
,p_display_as=>'NATIVE_HIDDEN'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(504753932501485476.4163)
,p_name=>'P99_WORKSPACE_ADMINS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(498926816038101235.4163)
,p_prompt=>unistr('\C791\C5C5\C601\C5ED \AD00\B9AC\C790')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_return_val varchar2(32767);',
'begin',
'    for c1 in (select distinct email from wwv_purge_emails where security_group_id = :P99_SGID order by 1) loop',
'        l_return_val := l_return_val || c1.email || '', '';',
'    end loop;',
'    return substr(l_return_val, 1, length(l_return_val)-2);',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'fielddatabold'
,p_field_template=>wwv_flow_api.id(1146837484282708152.4163)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(498930401204101258.4163)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Retain workspace'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wwv_purge.save_response( ',
'    p_purge_email_id => :P99_EID,',
'    p_response_code  => ''RETAIN'' );',
'commit;'))
,p_process_when_button_id=>wwv_flow_api.id(498929226472101252.4163)
,p_process_success_message=>unistr('&P99_WORKSPACE_NAME. \C791\C5C5\C601\C5ED\C740 \BE44\C6B0\C9C0 \C54A\C2B5\B2C8\B2E4.')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(498930608172101261.4163)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Purge Workspace'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wwv_purge.save_response( ',
'    p_purge_email_id => :P99_EID,',
'    p_response_code  => ''PURGE'' );',
'commit;'))
,p_process_when_button_id=>wwv_flow_api.id(498929614547101255.4163)
,p_process_success_message=>unistr('&P99_DATE_TO_BE_PURGED. \B610\B294 \C774 \B0A0\C9DC \C774\D6C4\C5D0 &P99_WORKSPACE_NAME. \C791\C5C5\C601\C5ED\C744 \BE44\C6B8 \C608\C815\C785\B2C8\B2E4.')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(498930813327101266.4163)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch workspace details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_found boolean := FALSE;',
'begin',
'    :P99_APEX_URL := wwv_flow_utilities.host_url( ''SCRIPT'' );',
'    :P99_PURGE_ADMIN_EMAIL := wwv_flow_platform.get_preference( p_preference_name => ''PURGE_ADMIN_EMAIL'' );',
'',
'    for c1 in (select w.workspace_name, w.date_to_purge, w.purged_ts, w.admin_email, w.security_group_id, w.id',
'                 from wwv_purge_workspaces w, wwv_purge_emails e',
'                where e.purge_workspace_id = w.id',
'                  and e.security_group_id = w.security_group_id',
'                  and e.id = :P99_EID) loop',
'        :P99_WORKSPACE_NAME    := c1.workspace_name;',
'        :P99_ADMIN_EMAIL       := c1.admin_email;',
'        :P99_DATE_PURGED       := to_char(c1.purged_ts, ''Month DD, YYYY HH24:MI'');',
'        :P99_DATE_TO_BE_PURGED := to_char(c1.date_to_purge, ''Month DD, YYYY'');',
'        :P99_OK_TO_DELETE      := ''Y'';',
'        :P99_SGID              := c1.security_group_id;',
'        :P99_RID               := c1.id;',
'        --',
'        for c2 in (select r.response_code, r.created_ts, e.email',
'                     from wwv_purge_workspace_responses r, wwv_purge_emails e',
'                    where e.security_group_id = c1.security_group_id',
'                      and e.id = r.purge_email_id',
'                      and r.created_ts = (select max(r2.created_ts) ',
'                                          from wwv_purge_workspace_responses r2, wwv_purge_emails e2',
'                                         where e2.id = r2.purge_email_id',
'                                           and e2.security_group_id = c1.security_group_id)) loop',
'            if c2.response_code = ''PURGE'' then',
'                :P99_OK_TO_DELETE := ''Y'';',
'            else',
'                :P99_OK_TO_DELETE := ''N'';',
'            end if;',
'            :P99_LAST_UPDATED := to_char(c2.created_ts, ''Month DD, YYYY HH24:MI'' );',
'            :P99_LAST_UPDATED_BY := c2.email;',
'        end loop;',
'        --',
'        l_found := TRUE;',
'        exit;',
'    end loop;',
'    --',
'    if l_found = FALSE then',
'        :P99_WORKSPACE_NAME    := null;',
'        :P99_ADMIN_EMAIL       := null;',
'        :P99_SGID              := null;',
'        :P99_RID               := null;',
'        :P99_EID               := null;',
'        :P99_DATE_TO_BE_PURGED := null;',
'        :P99_LAST_UPDATED      := null;',
'        :P99_LAST_UPDATED_BY   := null;',
'        :P99_APEX_URL          := null;',
'    end if;',
'end;'))
,p_process_error_message=>unistr('\C791\C5C5\C601\C5ED \BC0F \C694\CCAD \C2DD\BCC4\C790\AC00 \BD80\C801\D569\D569\B2C8\B2E4.')
);
end;
/
prompt --application/pages/page_00200
begin
wwv_flow_api.create_page(
 p_id=>200.4163
,p_user_interface_id=>wwv_flow_api.id(4973000124302346.4163)
,p_name=>unistr('\B300\D654\C2DD \BCF4\ACE0\C11C \C801\C6A9 \D574\C81C')
,p_step_title=>unistr('\B300\D654\C2DD \BCF4\ACE0\C11C \C801\C6A9 \D574\C81C')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(1146777630795684705.4163)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23238304177115429.4163)
,p_plug_name=>'Unsubscribe - Body'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146834495802703415.4163)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>unistr('\D604\C7AC <strong>&P200_EMAIL.</strong>(\C73C)\B85C \C544\B798 \BCF4\ACE0\C11C\C5D0 \C801\C6A9\B418\C5B4 \C788\C2B5\B2C8\B2E4. \C804\C790 \BA54\C77C \C8FC\C18C\B85C \B354 \C774\C0C1 \C804\C790 \BA54\C77C\C744 \BC1B\C9C0 \C54A\C73C\B824\BA74 \C544\B798\C5D0\C11C <strong>\C801\C6A9 \D574\C81C</strong>\B97C \B204\B974\C2ED\C2DC\C624.')
,p_translate_title=>'N'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P200_ID is not null and :P200_SGID is not null and :P200_RID is not null'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24076722086058097.4163)
,p_plug_name=>unistr('\AC10\C0AC\D569\B2C8\B2E4. \C801\C6A9 \D574\C81C\B418\C5C8\C2B5\B2C8\B2E4.')
,p_region_template_options=>'#DEFAULT#:a-Alert--success:a-Alert--wizard'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146723779286487855.4163)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>unistr('\AC10\C0AC\D569\B2C8\B2E4. \C774\C81C\BD80\D130\B294 \BCF4\ACE0\C11C \C801\C6A9 \C804\C790 \BA54\C77C\C758 \C801\C6A9\C774 \D574\C81C\B418\C5C8\C2B5\B2C8\B2E4.  ')
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P200_ID is null and :P200_SGID is null and :P200_RID is null and :P200_UNSUBSCRIBED = ''Y'''
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24076913092131160.4163)
,p_plug_name=>unistr('\BD80\C801\D569\D55C \C694\CCAD')
,p_region_template_options=>'#DEFAULT#:a-Alert--warning:a-Alert--wizard'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146723779286487855.4163)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_source=>unistr('\C774 \C560\D50C\B9AC\CF00\C774\C158\C740 \BCF4\ACE0\C11C \C801\C6A9\C744 \D574\C81C\D558\B294 \B370 \C0AC\C6A9\B429\B2C8\B2E4. \BD80\C801\D569\D55C URL\C744 \C0AC\C6A9\D558\C5EC \C774 \D398\C774\C9C0\C5D0 \C561\C138\C2A4\D588\C2B5\B2C8\B2E4.')
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P200_SGID is null and :P200_RID is null and :P200_UNSUBSCRIBED is null'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24078523883238409.4163)
,p_plug_name=>'Report'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_translate_title=>'N'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P200_RID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1146878390734737833.4163)
,p_plug_name=>unistr('\C801\C6A9 \D574\C81C')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146873381156733851.4163)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_item_display_point=>'BELOW'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P200_ID is not null and :P200_SGID is not null and :P200_RID is not null'
,p_plug_footer=>'<br/><br/>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1146878524267737835.4163)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146753630500658875.4163)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_translate_title=>'N'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P200_RID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23241020416235620.4163)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1146878524267737835.4163)
,p_button_name=>'UNSUBSCRIBE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(1146918375616882531.4163)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\C801\C6A9 \D574\C81C')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24075027356965025.4163)
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23239325947161488.4163)
,p_name=>'P200_EMAIL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(24078523883238409.4163)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23240324656217886.4163)
,p_name=>'P200_APPLICATION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24078523883238409.4163)
,p_prompt=>unistr('\C560\D50C\B9AC\CF00\C774\C158:')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1146837484282708152.4163)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>unistr('\C560\D50C\B9AC\CF00\C774\C158\C758 \C774\B984\C785\B2C8\B2E4.')
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23240509896223103.4163)
,p_name=>'P200_PAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(24078523883238409.4163)
,p_prompt=>unistr('\D398\C774\C9C0:')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1146837484282708152.4163)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>unistr('\D398\C774\C9C0\C758 \C774\B984\C785\B2C8\B2E4.')
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23240719592225871.4163)
,p_name=>'P200_REPORT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(24078523883238409.4163)
,p_prompt=>unistr('\BCF4\ACE0\C11C:')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1146837484282708152.4163)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>unistr('\C801\C6A9\B418\C5B4 \C788\B294 \BCF4\ACE0\C11C\C758 \C774\B984\C785\B2C8\B2E4.')
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23240927557228254.4163)
,p_name=>'P200_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(24078523883238409.4163)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23241516784272398.4163)
,p_name=>'P200_SGID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(24078523883238409.4163)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24080425624314564.4163)
,p_name=>'P200_UNSUBSCRIBED'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(24078523883238409.4163)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24084004265516600.4163)
,p_name=>'P200_RID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(24078523883238409.4163)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24070713831809643.4163)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'remove subscription'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wwv_flow_worksheet_api.unsubscribe_email (',
'    p_subscription_id      => :P200_ID,',
'    p_security_group_id  => :P200_SGID,',
'    p_email                      => :P200_EMAIL',
'    );',
':P200_UNSUBSCRIBED := ''Y'';'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23241020416235620.4163)
,p_process_success_message=>unistr('\C801\C6A9 \D574\C81C\B418\C5C8\C2B5\B2C8\B2E4. \AC10\C0AC\D569\B2C8\B2E4.')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24059901749058684.4163)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'fetch subscription info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_found boolean := FALSE;',
'begin',
'    for c1 in (select ',
'               n.security_group_id,',
'               n.email_address,',
'               n.report_id,',
'               (select c.short_name from wwv_flow_companies c where c.provisioning_company_id = n.security_group_id) workspace_name,',
'               (select f.id||'' - ''||f.name from wwv_flows f where f.id = w.flow_id) app_name,',
'               (select p.id||'' - ''||p.name from wwv_flow_steps p where p.id = w.page_id and p.flow_id = w.flow_id) page_name,',
'               r.name||',
'               (case when r.is_default = ''Y'' and r.application_user=''APXWS_DEFAULT'' then',
'                       wwv_flow_lang.system_message(''APEXIR_PRIMARY_REPORT'')',
'                     when r.is_default = ''Y'' and r.application_user=''APXWS_ALTERNATIVE'' then',
'                       '' (''||wwv_flow_lang.system_message(''SAVED_REPORTS.ALTERNATIVE.DEFAULT'')||'')''',
'                     when r.session_id is null and r.status=''PUBLIC'' then',
'                       '' (''||wwv_flow_lang.system_message(''APEXIR_PUBLIC'')||'')''',
'                     when r.session_id is null and r.status=''PRIVATE'' then',
'                       '' (''||wwv_flow_lang.system_message(''APEXIR_PRIVATE'')||'')''',
'               end) report_name',
'               from wwv_flow_worksheet_notify n, wwv_flow_worksheets w, wwv_flow_worksheet_rpts r',
'               where n.worksheet_id = w.id',
'               and n.report_id = r.id',
'               and w.id = r.worksheet_id',
'               and n.id = :P200_ID',
'               and (instr(n.email_address, :P200_EMAIL) > 0 or :P200_EMAIL is null)',
'               )',
'    loop',
'        if :P200_EMAIL is null then',
'            :P200_EMAIL := c1.email_address;',
'        end if;',
'        :P200_APPLICATION   := c1.app_name;',
'        :P200_PAGE          := c1.page_name;',
'        :P200_REPORT        := c1.report_name;',
'        :P200_RID           := c1.report_id;',
'        :P200_SGID          := c1.security_group_id;',
'        l_found := TRUE;',
'        exit;',
'    end loop;',
'    --',
'    if l_found = FALSE then',
'        :P200_EMAIL         := null;',
'        :P200_APPLICATION   := null;',
'        :P200_PAGE          := null;',
'        :P200_REPORT        := null;',
'        :P200_RID           := null;',
'        :P200_SGID          := null;',
'        :P200_ID            := null;',
'    end if;',
'end;'))
,p_process_error_message=>unistr('\BD80\C801\D569\D55C \C801\C6A9 \BC0F \C694\CCAD \C2DD\BCC4\C790\C785\B2C8\B2E4.')
);
end;
/
prompt --application/pages/page_01000
begin
wwv_flow_api.create_page(
 p_id=>1000.4163
,p_user_interface_id=>wwv_flow_api.id(4973000124302346.4163)
,p_name=>unistr('\B85C\ADF8\C778')
,p_alias=>'LOGIN'
,p_step_title=>unistr('\B85C\ADF8\C778')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'<!--',
'function submitenter(myfield,e)',
'{',
'var keycode;',
'if (window.event) keycode = window.event.keyCode;',
'else if (e) keycode = e.which;',
'else return true;',
'',
'if (keycode == 13)',
'   {',
'   doSubmit(''LOGIN_BUTTON'');',
'   return false;',
'   }',
'else',
'   return true;',
'}',
'',
' function putFocus() {',
'  document.wwv_flow.p_t04.focus();',
' }',
'//-->',
'</SCRIPT>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.builder.initWizardProgressBar = function() {',
'    apex.theme.initWizardProgressBar( "a-WizardSteps" );',
'};'))
,p_step_template=>wwv_flow_api.id(1146777630795684705.4163)
,p_page_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1402815470381580.4163)
,p_plug_name=>'Tips'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146834495802703415.4163)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>unistr('\C774 &PRODUCT_NAME. \C560\D50C\B9AC\CF00\C774\C158\C5D0\C11C \C0C8 \C138\C158\C744 \C2DC\C791\D558\B824\BA74 \C774 \D3FC\C5D0 \C778\C99D\C11C\B97C \C785\B825\D569\B2C8\B2E4.')
,p_translate_title=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57075215208721471.4163)
,p_plug_name=>'login body'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146834495802703415.4163)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_translate_title=>'N'
,p_plug_column_width=>'valign="top"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>'Region generated by create flow wizard'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(643964332163437775.4163)
,p_plug_name=>'Help'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146834495802703415.4163)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    procedure p(p_str in varchar2)',
'    is',
'    begin',
'        sys.htp.p(''<p>'');',
'        sys.htp.p(wwv_flow.do_substitutions(regexp_replace(p_str,''&amp;([A-Z0-9_]+\.)'',''&\1'')));',
'        sys.htp.p(''</p>'');',
'    end;',
'begin',
'    p(:F4155_AUTHENTICATION_HELP_TEXT);',
'    p(:F4155_PLUGIN_HELP_TEXT);',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_translate_title=>'N'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1146876836521737818.4163)
,p_plug_name=>'login buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146753630500658875.4163)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_column=>2
,p_plug_display_point=>'REGION_POSITION_03'
,p_translate_title=>'N'
,p_plug_column_width=>'valign="top"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>'Region generated by create flow wizard'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1146877779285737827.4163)
,p_plug_name=>unistr('\C560\D50C\B9AC\CF00\C774\C158 &F4155_P1000_APP_ID.\C5D0 \B85C\ADF8\C778\D569\B2C8\B2E4.')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1146873381156733851.4163)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57079816296853917.4163)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1146876836521737818.4163)
,p_button_name=>'LOGIN_BUTTON'
,p_button_static_id=>'LOGIN_BUTTON'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1146918375616882531.4163)
,p_button_image_alt=>unistr('\B85C\ADF8\C778')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_cattributes=>'class="button10"'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34456324362177919.4163)
,p_branch_action=>'1000'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_STEP'
,p_branch_sequence=>10
,p_branch_condition_type=>'PLSQL_EXPRESSION'
,p_branch_condition=>'wwv_flow.g_notification is not null'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(476622691412236.4163)
,p_name=>'F4155_P1000_USERNAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(57075215208721471.4163)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\C0AC\C6A9\C790 \C774\B984')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_tag_attributes=>'tabindex="1"'
,p_field_template=>wwv_flow_api.id(1146837615734708160.4163)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(477505160416649.4163)
,p_name=>'F4155_P1000_PASSWORD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(57075215208721471.4163)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\BE44\BC00\BC88\D638')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_tag_attributes=>'tabindex="2"'
,p_display_when=>'F4155_P1000_NEEDS_PASSWORD_YN'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(1146837615734708160.4163)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(485932199001641.4163)
,p_name=>'F4155_P1000_FLOW_PAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(57075215208721471.4163)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1441703804737288.4163)
,p_name=>'F4155_P1000_SETUP_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(57075215208721471.4163)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(643811309110241934.4163)
,p_name=>'F4155_PLUGIN_HELP_TEXT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(1402815470381580.4163)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(643833917075244221.4163)
,p_name=>'F4155_AUTHENTICATION_HELP_TEXT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(1402815470381580.4163)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(643856524001246239.4163)
,p_name=>'F4155_WORKSPACE_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(1402815470381580.4163)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(644127827193502573.4163)
,p_name=>'F4155_P1000_NEEDS_PASSWORD_YN'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(57075215208721471.4163)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1146877882588737828.4163)
,p_name=>'F4155_P1000_APP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1146877779285737827.4163)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(57188216053643298.4163)
,p_validation_name=>'pass req'
,p_validation_sequence=>10
,p_validation=>'F4155_P1000_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('\BE44\BC00\BC88\D638\B97C \C785\B825\D574\C57C \D569\B2C8\B2E4.')
,p_validation_condition=>'F4155_P1000_NEEDS_PASSWORD_YN'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_api.id(.4163)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(475708492408121.4163)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_flow_page varchar2(4000);',
'begin',
'    wwv_flow_custom_auth_std.login(',
'        p_uname=>wwv_flow_escape.html(:F4155_P1000_USERNAME),',
'        p_password=>:F4155_P1000_PASSWORD,',
'        p_session_id=>:FLOW_SESSION,',
'        p_flow_page=>:F4155_P1000_FLOW_PAGE);',
'',
'    l_flow_page := :F4155_P1000_FLOW_PAGE;',
'    wwv_flow.clear_page_cache (',
'        p_flow_page_id => wwv_flow.g_flow_step_id );',
'    :F4155_P1000_FLOW_PAGE := l_flow_page;',
'end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(643777621100235936.4163)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_login_help_for_app'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_app_str           varchar2(80);',
'    l_app_id            number;',
'begin',
'    l_app_str := regexp_substr(:F4155_P1000_FLOW_PAGE,''\d+([,.]\d+)?'');',
'    begin',
'        l_app_id := to_number(replace(l_app_str,'','',''.''));',
'    exception when VALUE_ERROR then',
'        l_app_id := to_number(replace(l_app_str,''.'','',''));',
'    end;',
'',
'    wwv_flow_authentication_dev.get_login_help_for_app (',
'        p_app_id                   => l_app_id,',
'        p_plugin_help_text         => :F4155_PLUGIN_HELP_TEXT,',
'        p_authentication_help_text => :F4155_AUTHENTICATION_HELP_TEXT,',
'        p_workspace_name           => :F4155_WORKSPACE_NAME,',
'        p_needs_password_yn        => :F4155_P1000_NEEDS_PASSWORD_YN );',
'    :F4155_P1000_APP_ID := l_app_str;',
'end;'))
);
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
