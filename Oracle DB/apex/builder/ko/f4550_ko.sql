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
,p_default_application_id=>4558
,p_default_owner=>'APEX_180200'
);
end;
/
 
prompt APPLICATION 4558 - Oracle APEX Login
--
-- Application Export:
--   Application:     4558
--   Name:            Oracle APEX Login
--   Exported By:     APEX_180200
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         18.2.0.00.08
--   Instance ID:     248229714707526
--

-- Application Statistics:
--   Pages:                      8
--     Items:                   19
--     Computations:             4
--     Validations:              7
--     Processes:               16
--     Regions:                 31
--     Buttons:                 12
--     Dynamic Actions:          4
--   Shared Components:
--     Logic:
--       Items:                  7
--       Computations:           2
--       Build Options:          3
--     Navigation:
--       Lists:                  5
--     Security:
--       Authentication:         1
--       Authorization:          1
--     User Interface:
--       Templates:
--         Page:                 6
--         Region:               9
--         Label:                4
--         List:                 3
--         Popup LOV:            1
--         Button:               8
--         Report:               2
--       LOVs:                   4
--       Shortcuts:              3
--       Plug-ins:               6
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
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,4558)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'APEX_180200')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Oracle APEX Login')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A285108871388220369')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_page_protection_enabled_y_n=>'N'
,p_checksum_salt_last_reset=>'20180830074618'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'ko'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(540118315091694248.4558)
,p_populate_roles=>'A'
,p_application_tab_set=>1
,p_logo_image=>'#IMAGE_PREFIX#apex_ui/apexlogo.png'
,p_logo_image_attributes=>'width="280" height="20" alt="&PRODUCT_NAME."'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'&PRODUCT_NAME.'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_authorize_public_pages_yn=>'Y'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_error_handling_function=>'wwv_flow_error_dev.internal_error_handler'
,p_substitution_string_01=>'PRODUCT_NAME'
,p_substitution_value_01=>'Application Express'
,p_substitution_string_02=>'REGISTER_LINK'
,p_substitution_value_02=>'development_service_signup'
,p_substitution_string_03=>'CLOSE'
,p_substitution_value_03=>unistr('\B2EB\AE30')
,p_substitution_string_04=>'DATE_FORMAT'
,p_substitution_value_04=>'rr/mm/dd'
,p_substitution_string_05=>'LONG_DATE_FORMAT'
,p_substitution_value_05=>unistr('fmDay yyyy"\B144"mm"\C6D4"dd"\C77C"')
,p_substitution_string_06=>'TIME_FORMAT'
,p_substitution_value_06=>'AM hh:mi:ss'
,p_substitution_string_07=>'DATE_TIME_FORMAT'
,p_substitution_value_07=>'rr/mm/dd AM hh:mi:ss'
,p_substitution_string_08=>'RETURN_TO_APPLICATION'
,p_substitution_value_08=>unistr('\C560\D50C\B9AC\CF00\C774\C158\C73C\B85C \B3CC\C544\AC00\AE30')
,p_substitution_string_09=>'MSG_LANGUAGE'
,p_substitution_value_09=>unistr('\C5B8\C5B4')
,p_substitution_string_10=>'MSG_COMPANY'
,p_substitution_value_10=>unistr('\C791\C5C5\C601\C5ED: &COMPANY.')
,p_substitution_string_11=>'MSG_COPYRIGHT'
,p_substitution_value_11=>'Copyright &copy; 1999, 2018, Oracle. All rights reserved.'
,p_substitution_string_12=>'VIEW'
,p_substitution_value_12=>unistr('\BCF4\AE30')
,p_last_updated_by=>'APEX_180200'
,p_last_upd_yyyymmddhh24miss=>'20180830080334'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/more_information
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(8560508234436339.4558)
,p_name=>'More Information'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(8561901018538328.4558)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Oracle Technology Network'
,p_list_item_link_target=>'https://otn.oracle.com/apex'
,p_list_item_icon=>'menu/blue_function_16x16.gif'
,p_list_item_icon_attributes=>'alt=""'
,p_list_text_01=>unistr('\CD5C\C2E0 \BC84\C804\C744 \B2E4\C6B4\B85C\B4DC\D558\ACE0, \C124\BA85\C11C\B97C \AC80\D1A0\D558\ACE0, \B2E4\C591\D55C \BD80\C218 \C790\B8CC\C5D0 \C561\C138\C2A4\D560 \C218 \C788\B294 Oracle Application Express \D648 \D398\C774\C9C0\C785\B2C8\B2E4.')
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(8561519934534279.4558)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\D1A0\B860 \D3EC\B7FC')
,p_list_item_link_target=>'https://apex.oracle.com/forum'
,p_list_item_icon=>'menu/blue_function_16x16.gif'
,p_list_item_icon_attributes=>' alt=""'
,p_list_text_01=>unistr('OTN \D1A0\B860 \D3EC\B7FC\C5D0\C11C Application Express \C9C8\BB38\C5D0 \B300\D55C \BB34\B8CC \CEE4\BBA4\B2C8\D2F0 \C81C\ACF5 \C9C0\C6D0\C744 \BC1B\C73C\C2ED\C2DC\C624. ')
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(8565818427600114.4558)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Application Express \CEE4\BBA4\B2C8\D2F0')
,p_list_item_link_target=>'https://apex.oracle.com/community'
,p_list_item_icon=>'menu/blue_function_16x16.gif'
,p_list_item_icon_attributes=>'alt=""'
,p_list_text_01=>unistr('\CC38\C870 \C790\B8CC, \C560\D50C\B9AC\CF00\C774\C158, \CEE8\C124\D305 \D68C\C0AC, \D638\C2A4\D305 \D68C\C0AC \B4F1\C744 \AC80\D1A0\D558\C2ED\C2DC\C624.')
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
end;
/
prompt --application/shared_components/navigation/lists/getting_started
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(8566004359605487.4558)
,p_name=>'Getting Started'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(8567403776605488.4558)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\C790\C138\D788')
,p_list_item_link_target=>'https://apex.oracle.com/learnmore'
,p_list_text_01=>unistr('\C2DC\C791\D558\B824\B294 \ACBD\C6B0 \B610\B294 Oracle Application Express\C5D0 \B300\D574 \C790\C138\D788 \C54C\C544\BCF4\B824\B294 \ACBD\C6B0 \C720\C6A9\D55C \D398\C774\C9C0\C785\B2C8\B2E4.')
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(8567723889605492.4558)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'apex.oracle.com'
,p_list_item_link_target=>'https://apex.oracle.com'
,p_list_item_icon=>'menu/blue_function_16x16.gif'
,p_list_item_icon_attributes=>'alt=""'
,p_list_text_01=>unistr('Oracle Application Express\C758 \CD5C\C2E0 \BC84\C804\C744 \C0AC\C6A9\D574 \BCFC \C218 \C788\B294 \BB34\B8CC\B85C \D638\C2A4\D305\B418\B294 \C11C\BE44\C2A4\C785\B2C8\B2E4.')
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(8568019160605492.4558)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Oracle \AD50\C721 \B77C\C774\BE0C\B7EC\B9AC')
,p_list_item_link_target=>'https://apex.oracle.com/pls/apex/f?p=44785:2:0:FORCE_QUERY::2,RIR,CIR:P2_GROUP_ID,P2_PRODUCT_ID,P2_TYPE_ID:1000%2C2039%2C1'
,p_list_item_icon=>'menu/blue_function_16x16.gif'
,p_list_item_icon_attributes=>'alt=""'
,p_list_text_01=>unistr('OBE(Oracle by Examples)\B294 \B2E4\C591\D55C \C560\D50C\B9AC\CF00\C774\C158 \AD6C\C131\C694\C18C\B97C \C791\C131\D560 \C218 \C788\B3C4\B85D \C548\B0B4\D558\B294 \C2A4\D06C\B9B0 \C0F7 \D3EC\D568 \B2E8\ACC4\BCC4 \C9C0\CE68 \BC0F \D544\C694 \C870\AC74 \D30C\C77C\C744 \C81C\ACF5\D569\B2C8\B2E4.')
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
end;
/
prompt --application/shared_components/navigation/lists/tasks
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(115315832368341144.4558)
,p_name=>'Tasks'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(155871030948668683.4558)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\BE44\BC00\BC88\D638 \C7AC\C124\C815')
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/blue_function_16x16.gif'
,p_list_item_icon_attributes=>'alt=""'
,p_list_text_01=>unistr('\C791\C5C5\C601\C5ED\C5D0 \C0AC\C778\C778\D560 \C218 \C5C6\C2B5\B2C8\AE4C? \C5EC\AE30\C11C \BE44\BC00\BC88\D638\B97C \C7AC\C124\C815\D558\C2ED\C2DC\C624.')
,p_translate_list_text_y_n=>'Y'
,p_security_scheme=>'!'||wwv_flow_api.id(6153929631135099)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22951230716918778.4558)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\B0B4 \C791\C5C5\C601\C5ED \CC3E\AE30')
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/blue_function_16x16.gif'
,p_list_item_icon_attributes=>'alt=""'
,p_list_text_01=>unistr('\B098\C640 \C5F0\AD00\B41C \C791\C5C5\C601\C5ED\C744 \C78A\C5C8\C2B5\B2C8\AE4C? \C5EC\AE30\C11C \CC3E\C744 \C218 \C788\C2B5\B2C8\B2E4.')
,p_translate_list_text_y_n=>'Y'
,p_security_scheme=>'!'||wwv_flow_api.id(6153929631135099)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6096909608250810.4558)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\AD00\B9AC')
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/blue_function_16x16.gif'
,p_list_item_icon_attributes=>'alt=""'
,p_list_item_disp_cond_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_list_item_disp_condition=>'10'
,p_list_text_01=>unistr('\C778\C2A4\D134\C2A4 \AD00\B9AC\B85C \B85C\ADF8\C778\D569\B2C8\B2E4.')
,p_translate_list_text_y_n=>'Y'
,p_security_scheme=>'!'||wwv_flow_api.id(6153929631135099)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11365419809816264.4558)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>unistr('\C791\C5C5\C601\C5ED \C694\CCAD')
,p_list_item_link_target=>'&F4550_SERVICE_REQUEST_URL.'
,p_list_item_icon=>'menu/blue_function_16x16.gif'
,p_list_item_icon_attributes=>'alt=""'
,p_list_item_disp_cond_type=>'PLSQL_EXPRESSION'
,p_list_item_disp_condition=>'wwv_flow_platform.get_preference( p_preference_name => ''SERVICE_REQUEST_FLOW'' ) <> ''MANUAL'''
,p_list_text_01=>unistr('\C790\CCB4 \C791\C5C5\C601\C5ED\C744 \C694\CCAD\D558\B824\BA74 \C774 \B9C8\BC95\C0AC\B97C \C644\B8CC\D558\C2ED\C2DC\C624.')
,p_list_text_10=>'javascript:popUp2(''&F4550_SERVICE_REQUEST_URL.'',''1000'',''600'');'
,p_translate_list_text_y_n=>'Y'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
end;
/
prompt --application/shared_components/navigation/lists/site_specific_tasks
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(787389949330441085.4558)
,p_name=>'Site Specific Tasks'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1, task_name label, ',
'       nvl(task_link,''#'')            target, ',
'       null             is_current_list_entry,',
'       null             image, ',
'       null             image_attribute,',
'       null             image_alt_attribute,',
'       null             attribute1,',
'       null             attribute2,',
'       null             attribute3,',
'       null             attribute4,',
'       null             attribute5,',
'       null             attribute6,',
'       null             attribute7,',
'       null             attribute8,',
'       null             attribute9,',
'       null             attribute10',
'from wwv_flow_customized_tasks ',
'where displayed = ''Y'' and display_location = ''WORKSPACE_LOGIN'' and',
'      task_name is not null',
'order by display_sequence'))
,p_list_status=>'PUBLIC'
);
end;
/
prompt --application/shared_components/navigation/lists/list_of_workspaces
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(788072921346081694.4558)
,p_name=>'List of Workspaces'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select 1, nvl(workspace_display_name,workspace_short_name) label, ',
'       ''javascript:apex.submit(''''GO_WORKSPACE ''||wwv_flow_escape.js_literal(workspace_short_name,null)||'''''');'' target, ',
'       null is_current_list_entry,',
'       ''icon-login-workspace'' image, ',
'       null image_attribute,',
'       null image_alt_attribute,',
'       wwv_flow_lang.system_message(''LAST_LOGIN'')||'' ''||nvl(apex_util.get_since(last_login),wwv_flow_lang.system_message(''UNKNOWN'')) attribute1,',
'       developer_role             attribute2,',
'       null attribute3,',
'       null attribute4,',
'       null attribute5,',
'       null attribute6,',
'       null attribute7,',
'       null attribute8,',
'       null attribute9,',
'       null attribute10',
'  from wwv_flow_developer_workspaces',
' where developer_name   = :APP_USER',
'   and workspace_status = ''ASSIGNED''',
' order by workspace_display_name'))
,p_list_status=>'PUBLIC'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1779057191405033.4558)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(14859123746941041.4558)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(92013858147572468.4558)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1082517774399623391.4558)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1765072874220712055.4558)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1831780317545994155.4558)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1917654134230939994.4558)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'classic'
);
end;
/
prompt --application/shared_components/security/authorizations/sso_authentication
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(6153929631135099.4558)
,p_name=>'SSO Authentication'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return wwv_flow_authentication_dev.get_internal_authentication not in (''APEX'',''CLOUD_IDM'',''LDAP'',''DB'');'
,p_error_message=>unistr('\C0DD\C131\AE30 SSO\AC00 \C0AC\C6A9\C73C\B85C \C124\C815\B418\C9C0 \C54A\C558\C2B5\B2C8\B2E4.')
,p_reference_id=>6738410669854771.4558
,p_caching=>'BY_USER_BY_SESSION'
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
 p_id=>wwv_flow_api.id(387608696699373799.4558)
,p_name=>'COMPANY'
,p_scope=>'GLOBAL'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(47291523209584096.4558)
,p_name=>'ERROR_OCCURRED'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(16763020509404219.4558)
,p_name=>'F4550_SERVICE_REQUEST_URL'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(510231751281890.4558)
,p_name=>'FSP_AFTER_LOGIN_URL'
,p_item_comment=>'Used by Custom2 authentication for deep linking support'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(1788752932141210549.4558)
,p_name=>'G_CLOUD_RETURN_URL'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(6109409795714510.4558)
,p_name=>'LOGIN_MESSAGE'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(5714319922471249.4558)
,p_name=>'PRODUCT_TYPE'
,p_protection_level=>'N'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(387608942992380280.4558)
,p_computation_sequence=>10
,p_computation_item=>'COMPANY'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'PLSQL_EXPRESSION'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'wwv_flow.get_company_name;'
,p_computation_error_message=>unistr('\C791\C5C5\C601\C5ED \C774\B984\C744 \ACC4\C0B0\D560 \C218 \C5C6\C2B5\B2C8\B2E4.')
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(16766113976430755.4558)
,p_computation_sequence=>10
,p_computation_item=>'F4550_SERVICE_REQUEST_URL'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_url varchar2(255) := null;',
'begin',
'    l_url := wwv_flow_platform.get_preference(''SERVICE_REQUEST_FLOW'');',
'    if l_url = ''EMAIL'' then',
'        l_url := ''4700'';',
'    end if;',
'',
'    return ''f?p='' || l_url || '':1'';',
'end;'))
,p_compute_when=>'nvl(wwv_flow_platform.get_preference(''SERVICE_REQUEST_FLOW''),''MANUAL'') <> ''MANUAL'''
,p_compute_when_type=>'PLSQL_EXPRESSION'
,p_computation_error_message=>unistr('F4550_SERVICE_REQUEST_URL \ACC4\C0B0 \C911 \C624\B958 \BC1C\C0DD: #SQLERRM#')
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/hr_or_new
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(20203615154961597.4558)
,p_lov_name=>'HR_OR_NEW'
,p_lov_query=>'.'||wwv_flow_api.id(20203615154961597)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(20203830364961608.4558)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>unistr('HR \C0D8\D50C \C0AC\C6A9\C790 \ACC4\C815 \C7A0\AE08 \D574\C81C')
,p_lov_return_value=>'HR'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(20204016953961621.4558)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>unistr('\C0C8 \C0AC\C6A9\C790 \ACC4\C815 \C0DD\C131')
,p_lov_return_value=>'NEW'
);
end;
/
prompt --application/shared_components/user_interface/lovs/language_pref
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(91126801753691270.4558)
,p_lov_name=>'LANGUAGE_PREF'
,p_lov_query=>'.'||wwv_flow_api.id(91126801753691270)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(91127127653691273.4558)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\C911\AD6D\C5B4(\C911\AD6D)')
,p_lov_return_value=>'zh-cn'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(91127305990691273.4558)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\C911\AD6D\C5B4(\B300\B9CC)')
,p_lov_return_value=>'zh-tw'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(91127504317691273.4558)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\C601\C5B4')
,p_lov_return_value=>'en'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(91127702350691274.4558)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('\D504\B791\C2A4\C5B4')
,p_lov_return_value=>'fr'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(91127924193691274.4558)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>unistr('\B3C5\C77C\C5B4')
,p_lov_return_value=>'de'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(91128105057691274.4558)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>unistr('\C774\D0C8\B9AC\C544\C5B4')
,p_lov_return_value=>'it'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(91128314741691274.4558)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>unistr('\C77C\BCF8\C5B4')
,p_lov_return_value=>'ja'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(91128529839691275.4558)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>unistr('\D55C\AD6D\C5B4')
,p_lov_return_value=>'ko'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(91128730790691277.4558)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>unistr('\D3EC\B974\D22C\AC08\C5B4(\BE0C\B77C\C9C8)')
,p_lov_return_value=>'pt-br'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(91128912347691277.4558)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>unistr('\C2A4\D398\C778\C5B4')
,p_lov_return_value=>'es'
);
end;
/
prompt --application/shared_components/user_interface/lovs/remember_workspace_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(176634981412406067.4558)
,p_lov_name=>'REMEMBER_WORKSPACE_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(176634981412406067)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(176635264449406069.4558)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\C791\C5C5\C601\C5ED \BC0F \C0AC\C6A9\C790 \C774\B984 \AE30\C5B5')
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/lovs/roles
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(20420213496266810.4558)
,p_lov_name=>'ROLES'
,p_lov_query=>'.'||wwv_flow_api.id(20420213496266810)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(20420400631266813.4558)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>unistr('\B370\C774\D130\BCA0\C774\C2A4 \AC1C\BC1C(RESOURCE)')
,p_lov_return_value=>'RESOURCE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(20420610391266814.4558)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>unistr('\AD00\B9AC(DBA)')
,p_lov_return_value=>'DBA'
);
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/page/apex_4_2_login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(5673029423553132.4558)
,p_theme_id=>3
,p_name=>'APEX 4.2 - Login.ko'
,p_internal_name=>'APEX_4.2_LOGIN'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="no-js lt-ie9 lt-ie8 lt-ie7 aLogin" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="no-js lt-ie9 lt-ie8 ie7 aLogin" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="no-js lt-ie9 ie8 aLogin" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="no-js ie9 aLogin" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js aLogin" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
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
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'#HTTP_USER_AGENT#',
'</head>',
'<body #ONLOAD# class="aLogin">',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aHeader">',
'  <a href="#HOME_LINK#">#LOGO#</a>',
'</div>',
'<div class="aLoginOuter">',
'  <div class="aLoginInner">',
'    <div class="aLoginContainer">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="aLogin aRegion">',
'        <div class="aLoginHeader">',
'          <h1>#TITLE#</h1>',
'        </div>',
'        <div class="aLoginBody">',
'          <div class="aLoginIcon">',
'          #REGION_POSITION_02#',
'          </div>',
'          <div class="aLoginForm">',
'          #REGION_POSITION_03#',
'          </div>',
'        </div>',
'        #BODY#',
'        #REGION_POSITION_04#',
'        #REGION_POSITION_05#',
'        #REGION_POSITION_06#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body></html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aLoginMessage successMessage" id="login_success" role="alert">',
'  <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'  <a href="#" onclick="$x_Remove(''login_success'')" class="closeLink"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aLoginMessage errorMessage" id="login_error" role="alert">',
'  <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'  <a href="#" onclick="$x_Remove(''login_error'')" class="closeLink"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'  #MESSAGE#',
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
,p_reference_id=>5670419456547088.4558
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/apex_4_0_centered
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29105717034457536.4558)
,p_theme_id=>3
,p_name=>'APEX 4.0 - Centered.ko'
,p_internal_name=>'APEX_4.0_CENTERED'
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
'<div class="htmldbBodyMargin">',
'  <div>#REGION_POSITION_01#</div>',
'  <div style="width:798px; padding:20px 0 0 0; margin-left:auto; margin-right:auto;">',
'    <div class="rounded-corner-region" style="float:left;  width:798px;">',
'      <div class="rc-darkblue-top">',
'        <div class="rc-darkblue-top-r">',
'          <div style="float:left;"><h1>#LOGO#</h1></div>',
'          <div style="float:right; display: inline; margin: 2px 20px 0 0;">#REGION_POSITION_04#</div>',
'        </div>',
'      </div>',
'      <div class="rc-body">',
'        <div class="rc-body-r">',
'          <div class="rc-content-login">',
'            <div id="htmldbMessageHolder"><a name="SkipRepNav"></a>#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'            <div class="progress-indicator">#REGION_POSITION_02#</div>',
'            #BODY#',
'          </div>',
'        </div>',
'      </div>',
'      <div class="rc-bottom">',
'        <div class="rc-bottom-r"></div>',
'      </div>',
'    </div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE# <a name="END"><br />',
'</a>',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body></html>'))
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
,p_reference_id=>29091918876244613.4558
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/apex_4_2_error_page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(418461011594533008.4558)
,p_theme_id=>3
,p_name=>'APEX 4.2 - Error Page.ko'
,p_internal_name=>'APEX_4.2_ERROR_PAGE'
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
'<!--[if lte IE 8]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#',
'<a name="PAGETOP"></a>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="page-header">',
'  <div>',
'      <a id="apex-logo" href="#HOME_LINK#"><h1>#LOGO#</h1></a>',
'      <div class="nav-bar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="apex-top-bar-end">',
'    <div class="apex-top-bar">',
'    </div>',
'  </div>',
'  <div id="apex-breadcrumb-region-end">',
'    <div id="apex-breadcrumb-region">',
'      <div id="apex-breadcrumbs"></div>',
'      <div id="apex-help"><a href="&SYSTEM_HELP_URL." target="_blank"><img src="#IMAGE_PREFIX#f_spacer.gif" class="iconSmall help" alt="" /><span>&HELP.</span></a></div>',
'      <div id="apex-controls"></div>',
'    </div>',
'  </div>',
'</div>',
'',
'<div id="htmldbMessageHolder"><a name="SkipRepNav"></a>#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div class="htmldbBodyMargin">',
'  <div>#REGION_POSITION_01#</div>',
'  <div id="ContentBody">',
'    <table id="apex-page-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'      <tbody>',
'        <tr>',
'          <td class="apex-page-content" width="100%">',
'            #REGION_POSITION_02#',
'            <div id="apex-splash">#REGION_POSITION_04#<div id="BB">#BODY#</div></div>	    ',
'	      </td>',
'          <td class="apex-page-sidebar">#REGION_POSITION_03##REGION_POSITION_05#</td>     ',
'        </tr>',
'      </tbody>',
'    </table>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="apex-footer-info">',
'  <div style="float:right;">#FLOW_VERSION#</div>',
'  <div style="float:right;">#CUSTOMIZE#</div>',
'</div>',
'<div id="apex-footer">',
'   <div class="content">',
'     <div style="float:left;">&MSG_COMPANY.&nbsp;&MSG_USER.:&nbsp;&USER.</div>',
'     <div style="float:right;">&MSG_LANGUAGE.:&nbsp;&BROWSER_LANGUAGE.&nbsp;|&nbsp;&MSG_COPYRIGHT.</div>',
'   </div>',
'</div>',
'#FORM_CLOSE# <a name="END"><br />',
'</a>',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body></html>'))
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
,p_navbar_entry=>'<a href="#LINK#" class="htmldbNavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_theme_class_id=>15
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
,p_reference_id=>269976808683160781.4558
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/apex_5_0_workspace_login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(781636565276262406.4558)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Workspace Login.ko'
,p_internal_name=>'APEX_5.0_WORKSPACE_LOGIN'
,p_is_popup=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(function() {',
'  $(''a[href*="#"]:not([href="#"])'').click(function() {',
'    if (location.pathname.replace(/^\//,'''') == this.pathname.replace(/^\//,'''') && location.hostname == this.hostname) {',
'      var target = $(this.hash);',
'      target = target.length ? target : $(''[name='' + this.hash.slice(1) +'']'');',
'      if (target.length) {',
'        $(''html,body'').animate({',
'          scrollTop: target.offset().top',
'        }, 500);',
'        return false;',
'      }',
'    }',
'  });',
'});'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<html class="no-js" lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<meta charset="UTF-8" />',
'<title>#TITLE#</title>',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT# ',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body class="a-Page--login #PAGE_CSS_CLASSES#" #ONLOAD#>',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#REGION_POSITION_07#',
'#REGION_POSITION_08#',
'#REGION_POSITION_01#',
'<div class="u-Layout u-Layout--centerVertically a-Login-slide" id="top">',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="a-Login-container">',
'  #BODY#',
'  </div>',
'  <div class="a-Login-slideNav a-Login-slideNav--down">',
'    <a href="#info" aria-label="&APP_TEXT$APEX_SCROLL_DOWN." title="&APP_TEXT$APEX_SCROLL_DOWN." class="a-Login-slideNavLink"><span class="a-Icon icon-shuttle-down"></span></a>',
'  </div>',
'</div>',
'<div class="u-Layout u-Layout--centerVertically a-Login-slide a-Login-slide--secondary" id="info">',
'  <div class="a-Login-secondaryContent">',
'  #REGION_POSITION_03#',
'  </div>',
'  <div class="a-Login-slideNav  a-Login-slideNav--up">',
'    <a href="#top" aria-label="&APP_TEXT$APEX_SCROLL_TO_TOP." title="&APP_TEXT$APEX_SCROLL_TO_TOP." class="a-Login-slideNavLink"><span class="a-Icon icon-shuttle-up"></span></a>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_08'
,p_theme_class_id=>1
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
,p_reference_id=>781632627194221102.4558
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/apex_5_0_workspace_login_secondary_page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(787783544361971642.4558)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Workspace Login Secondary Page.ko'
,p_internal_name=>'APEX_5.0_WORKSPACE_LOGIN_SECONDARY_PAGE'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<html class="no-js" lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<meta charset="UTF-8" />',
'<title>#TITLE#</title>',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT# ',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#HEAD#',
'</head>',
'<body class="a-Page--login #PAGE_CSS_CLASSES#" #ONLOAD#>',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#REGION_POSITION_07#',
'#REGION_POSITION_08#',
'#REGION_POSITION_01#',
'<div class="u-Layout u-Layout--centerVertically a-Login-slide" id="top">',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="a-Login-container">',
'  #BODY#',
'  </div>',
'</div>',
'#REGION_POSITION_03#'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_08'
,p_theme_class_id=>1
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
prompt --application/shared_components/user_interface/templates/page/apex_5_0_wizard_page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(788153963797526843.4558)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Wizard Page.ko'
,p_internal_name=>'APEX_5.0_WIZARD_PAGE'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.builder.initWizardProgressBar();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<html class="no-js" lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<meta charset="UTF-8" />',
'<title>#TITLE#</title>',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT# ',
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
'  <div class="a-Footer-info">',
'    <span class="a-Footer-attribute">',
'      <span class="a-Icon icon-user" title="&MSG_USER."></span>',
'      <span class="u-VisuallyHidden">&MSG_USER.</span>',
'      &USER.',
'    </span>',
'    <span class="a-Footer-attribute">',
'      <span class="a-Icon icon-workspace" title="&MSG_WORKSPACE."></span>',
'      <span class="u-VisuallyHidden">&MSG_WORKSPACE.</span>',
'      &COMPANY.',
'    </span>',
'    <span class="a-Footer-attribute">',
'      <span class="a-Icon icon-language" title="&MSG_LANGUAGE."></span>',
'      &BROWSER_LANGUAGE.',
'    </span>',
'  </div>',
'  <div class="a-Footer-copyright">&MSG_COPYRIGHT.</div>',
'  <div class="a-Footer-version">#FLOW_VERSION#</div>',
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
,p_reference_id=>702684260095026477.4558
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button/a_button_login_page_only
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(20301506730451152.4558)
,p_template_name=>'<a> button login page only'
,p_internal_name=>'<A>_BUTTON_LOGIN_PAGE_ONLY'
,p_template=>'<a href="#LINK#" title="#LABEL!ATTR#" style="text-align:center;font-size:10px;display:block;margin:2px;">#LABEL!HTML#</a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>0
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="xpbutton" cellspacing="0" cellpadding="0" border="0"  summary="">',
'<tbody class="FFFFFF">',
'<tr>',
'<td class="L" width="4"><img src="#IMAGE_PREFIX#1px_trans.gif" alt="" height="1" width="4"/></td>',
'<td class="C"><a href="#LINK#">#LABEL#</a></td>',
'<td class="R" width="4"><img src="#IMAGE_PREFIX#1px_trans.gif" alt="" height="1" width="4"/></td>',
'</tr>',
'</tbody>',
'</table>'))
,p_theme_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/button/apex_4_1_button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(300732121515523410.4558)
,p_template_name=>'APEX 4.1 - Button'
,p_internal_name=>'APEX_4.1_BUTTON'
,p_template=>'<button class="aButton" onclick="#LINK#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL!HTML#</span></button> '
,p_hot_template=>'<button class="aButton hotButton" onclick="#LINK#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL!HTML#</span></button> '
,p_reference_id=>275775519061831382.4558
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="button-gray" role="button" title="#LABEL#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#><span>#LABEL#</span></a> ',
'',
'',
'<a href="#LINK#" class="button-orange" role="button" title="#LABEL#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#><span>#LABEL#</span></a> '))
,p_theme_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/button/html_button_legacy_apex_5_migration
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(629209698915957087.4558)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_internal_name=>'HTML_BUTTON_LEGACY_APEX_5_MIGRATION'
,p_template=>'<input type="button" value="#LABEL!ATTR#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>'<input type="button" value="#LABEL!ATTR#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_template_comment=>'5.0 upgrade'
,p_theme_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/button/apex_5_0_text_link
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(781649650278313424.4558)
,p_template_name=>'APEX 5.0 - Text Link'
,p_internal_name=>'APEX_5.0_TEXT_LINK'
,p_template=>'<a href="#LINK#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL!HTML#</a>'
,p_hot_template=>'<a href="#LINK#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL!HTML#</a>'
,p_reference_id=>781637176150282829.4558
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/button/apex_5_0_button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(781653829819356486.4558)
,p_template_name=>'APEX 5.0 - Button'
,p_internal_name=>'APEX_5.0_BUTTON'
,p_template=>'<button onclick="#JAVASCRIPT#" class="a-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL!HTML#</button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="a-Button a-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL!HTML#</button>'
,p_reference_id=>174750904387485475.4558
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/button/apex_5_0_button_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(781654005571356486.4558)
,p_template_name=>'APEX 5.0 - Button with Icon'
,p_internal_name=>'APEX_5.0_BUTTON_WITH_ICON'
,p_template=>'<button class="a-Button a-Button--iconTextButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#>#LABEL!HTML#<span class="a-Icon #ICON_CSS_CLASSES#"></span></button>'
,p_hot_template=>'<button class="a-Button a-Button--hot a-Button--iconTextButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#>#LABEL!HTML#<span class="a-Icon #ICON_CSS_CLASSES#"></span></button>'
,p_reference_id=>404889142313786233.4558
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/button/apex_5_0_icon_menu_button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(781654809938356489.4558)
,p_template_name=>'APEX 5.0 - Icon Menu Button'
,p_internal_name=>'APEX_5.0_ICON_MENU_BUTTON'
,p_template=>'<button class="a-Button a-Button--noLabel a-Button--iconTextButton js-menuButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#><span class="a-Icon #ICON_'
||'CSS_CLASSES#" aria-hidden="true"></span><span class="a-Icon icon-menu-drop-down" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="a-Button a-Button--hot a-Button--noLabel a-Button--iconTextButton js-menuButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#><span class='
||'"a-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="a-Icon  icon-menu-drop-down" aria-hidden="true"></span></button>'
,p_reference_id=>3705338883615.4558
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/button/apex_5_0_icon_only_button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(781655181102356490.4558)
,p_template_name=>'APEX 5.0 - Icon Only Button'
,p_internal_name=>'APEX_5.0_ICON_ONLY_BUTTON'
,p_template=>'<button class="a-Button a-Button--noLabel a-Button--withIcon #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" aria-label="#LABEL!ATTR#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" #BUTTON_ATTRIBUTES#><span class="a-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_hot_template=>'<button class="a-Button a-Button--hot a-Button--noLabel a-Button--withIcon #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" aria-label="#LABEL!ATTR#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" #BUTTON_ATTRIBUTES#><span class="a-Icon #ICON_CSS_CL'
||'ASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>353820721334283301.4558
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/region/simple_region_heading
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(5717529496540150.4558)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<div style="float:left;width:98%;padding:4px;border-bottom: 1px solid #cccccc;">',
'<div style="float:left;font-size:16px;color:#808080;"><h2>#TITLE#</h2></div>',
'<div style="float:left">#CLOSE#&nbsp;&nbsp;#EDIT##DELETE##CREATE##CREATE2#<img src="#IMAGE_PREFIX#htmldb/builder/1px_trans.gif" alt="" height="1" width="5" />#PREVIOUS##NEXT#</div></div>',
'<div style="float:left;padding:4px;">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'simple region heading'
,p_internal_name=>'SIMPLE_REGION_HEADING'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>3
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>'class="instructiontext"'
,p_reference_id=>354965805166572999.4558
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_4_2_login_form_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(232001428000934216.4558)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#BODY#',
'<div class="aLoginButtonContainer">',
'  #CLOSE##EDIT##DELETE##CREATE##CREATE2##PREVIOUS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'APEX 4.2 - Login Form Region'
,p_internal_name=>'APEX_4.2_LOGIN_FORM_REGION'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>3
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>231996531355924985.4558
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_4_2_login_body_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(232017629436983931.4558)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aLoginSubBody #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_ID#">',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'APEX 4.2 - Login Body Region'
,p_internal_name=>'APEX_4.2_LOGIN_BODY_REGION'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>3
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>232012105475974354.4558
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_4_2_borderless_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(232050622441068133.4558)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aRegion borderlessRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_ID#">',
'<h2>#TITLE#</h2>',
'#BODY#',
'</section>'))
,p_page_plug_template_name=>'APEX 4.2 - Borderless Region'
,p_internal_name=>'APEX_4.2_BORDERLESS_REGION'
,p_theme_id=>3
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>232045826042061939.4558
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_4_1_button_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(355286322831861132.4558)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'APEX 4.1 - Button Region'
,p_internal_name=>'APEX_4.1_BUTTON_REGION'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>3
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>'class="htmldbInstruct"'
,p_reference_id=>245224629509817478.4558
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_workspace_login_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(781646415851311877.4558)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Login-region a-Form--stretchInputs #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="a-Login-header">',
'    <span class="a-Login-logo gi-icon-apex-logo-icon"></span>',
'    <h1 class="a-Login-title">#TITLE#</h1>',
'  </div>',
'  <div class="a-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="a-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="a-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Workspace Login Region'
,p_internal_name=>'APEX_5.0_WORKSPACE_LOGIN_REGION'
,p_theme_id=>3
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>781637364422290692.4558
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_div_with_id_class_and_region_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(781705991385407800.4558)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>#PREVIOUS##BODY##NEXT#</div>'
,p_page_plug_template_name=>'APEX 5.0 - Div with ID, Class, and Region Attributes'
,p_internal_name=>'APEX_5.0_DIV_WITH_ID,_CLASS,_AND_REGION_ATTRIBUTES'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>3
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>'class="htmldbInstruct"'
,p_reference_id=>716895227337398760.4558
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_workspace_login_content_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(781720832587518133.4558)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Login-infoRegion #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="a-Login-infoRegion-header">',
'    <h2 class="a-Login-infoRegion-title">#TITLE#</h2>',
'  </div>',
'  <div class="a-Login-infoRegion-body">',
'  #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Workspace Login Content Region'
,p_internal_name=>'APEX_5.0_WORKSPACE_LOGIN_CONTENT_REGION'
,p_theme_id=>3
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>781713093380502210.4558
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_workspace_selection_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(788096697713098503.4558)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Login-region a-Form--stretchInputs #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="a-Login-header">',
'    <span class="a-Login-logo gi-icon-apex-logo-icon"></span>',
'    <h1 class="a-Login-title">#TITLE#</h1>',
'  </div>',
'  <div class="a-Login-body">',
'    #BODY#',
'    #SUB_REGIONS#',
'  </div>',
'  <div class="a-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="a-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Workspace Selection Region'
,p_internal_name=>'APEX_5.0_WORKSPACE_SELECTION_REGION'
,p_theme_id=>3
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/simple_image_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(5724325438599633.4558)
,p_list_template_current=>'<li><a href="#LINK#" title="#TEXT#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#" title="#TEXT#">#TEXT#</a></li>'
,p_list_template_name=>'Simple Image List'
,p_internal_name=>'SIMPLE_IMAGE_LIST'
,p_theme_id=>3
,p_theme_class_id=>0
,p_list_template_before_rows=>'<ul class="listwithicon">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>32421627622986728.4558
,p_list_template_comment=>'<img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# />'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/unordered_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(85971030932131423.4558)
,p_list_template_current=>'<li class="a-LinksList-item is-current #A03#"><a href="#LINK#" class="a-LinksList-link" #A02#><span class="a-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="a-LinksList-label">#TEXT#</span><span class="a-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_noncurrent=>'<li class="a-LinksList-item #A03#"><a href="#LINK#" class="a-LinksList-link" #A02#><span class="a-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="a-LinksList-label">#TEXT#</span><span class="a-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_list_template_name=>'unordered list'
,p_internal_name=>'UNORDERED_LIST'
,p_theme_id=>3
,p_theme_class_id=>1
,p_default_template_options=>'a-LinksList--showArrow'
,p_list_template_before_rows=>'<ul class="a-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="a-LinksList-item is-current #A03#"><a href="#LINK#" class="a-LinksList-link" #A02#><span class="a-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="a-LinksList-label">#TEXT#</span><span class="a-LinksList-badge">#A01#'
||'</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="a-LinksList-item#A03#"><a href="#LINK#" class="a-LinksList-link" #A02#><span class="a-LinksList-icon"><span class="a-Icon #IMAGE#"></span></span><span class="a-LinksList-label">#TEXT#</span><span class="a-LinksList-badge">#A01#</span></a><'
||'/li>'
,p_item_templ_curr_w_child=>'<li class="a-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="a-LinksList-link" #A02#><span class="a-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="a-LinksList-label">#TEXT#</span><span class="a-LinksList-'
||'badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="a-LinksList-item #A03#"><a href="#LINK#" class="a-LinksLisa-link" #A02#><span class="a-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="a-LinksLisa-label">#TEXT#</span><span class="a-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_reference_id=>60219508156141083.4558
);
end;
/
prompt --application/shared_components/user_interface/templates/list/apex_5_0_media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(781726379075536728.4558)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-MediaList-item is-active">',
'    <a href="#LINK#" class="a-MediaList-link" #A03#>',
'        <div class="a-MediaList-iconWrap">',
'            <span class="a-MediaList-icon"><span class="a-Icon #IMAGE#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="a-MediaList-body">',
'            <h3 class="a-MediaList-title">#TEXT#</h3>',
'            <p class="a-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="a-MediaList-badgeWrap">',
'            <span class="a-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-MediaList-item">',
'    <a href="#LINK#" class="a-MediaList-link" #A03#>',
'        <div class="a-MediaList-iconWrap">',
'            <span class="a-MediaList-icon"><span class="a-Icon #IMAGE#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="a-MediaList-body">',
'            <h3 class="a-MediaList-title">#TEXT#</h3>',
'            <p class="a-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="a-MediaList-badgeWrap">',
'            <span class="a-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'APEX 5.0 - Media List'
,p_internal_name=>'APEX_5.0_MEDIA_LIST'
,p_theme_id=>3
,p_theme_class_id=>9
,p_default_template_options=>'a-MediaList--noBadge'
,p_list_template_before_rows=>'<ul class="a-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>692720897220784060.4558
);
end;
/
prompt --application/shared_components/user_interface/templates/report/workspace_selection_4550_20
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(3698594943076.4558)
,p_row_template_name=>'Workspace Selection (4550:20)'
,p_internal_name=>'WORKSPACE_SELECTION_4550:20'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <a id="WORKSPACE-#ROWNUM#" href="javascript:apex.submit(''GO_WORKSPACE #WORKSPACE_SHORT_NAME#'');" class="workspaceInfo" style="padding: 10px 10px; width: 100%;">',
'    <h2>#WORKSPACE_DISPLAY_NAME#</h2>',
'    <h3>',
'      <strong style="font-size:11px;">#DEVELOPER_ROLE#</strong><br/>',
'      #LAST_LOGIN_MSG#: #LAST_LOGIN#',
'    </h3>',
'  </a>',
'  <div class="clear"></div>',
'</li>'))
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="javascript:apex.submit(''GO_WORKSPACE #WORKSPACE_SHORT_NAME#'');" class="workspaceImage">',
'    <img src="#WORKSPACE_IMAGE_URL#" alt="" />',
'  </a>',
'  <a href="javascript:apex.submit(''GO_WORKSPACE #WORKSPACE_SHORT_NAME#'');" class="workspaceInfo" style="width: 75%;">',
'    <h2>#WORKSPACE_DISPLAY_NAME#</h2>',
'    <h3>',
'      <strong style="font-size:11px;">#DEVELOPER_ROLE#</strong><br/>',
'      <span class="workspaceDescription">#WORKSPACE_DESCRIPTION#</span>',
'    </h3>',
'  </a>',
'  <div class="clear"></div>',
'</li>'))
,p_row_template_before_rows=>' <ul class="workspacesList">'
,p_row_template_after_rows=>' </ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>3
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/apex_4_2_unordered_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(232064200547094797.4558)
,p_row_template_name=>'APEX 4.2 - Unordered List'
,p_internal_name=>'APEX_4.2_UNORDERED_LIST'
,p_row_template1=>'<li>#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>'<ul #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>'</ul>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'OMIT'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>3
,p_theme_class_id=>0
,p_reference_id=>232059713281090127.4558
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(232064200547094797.4558)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/label/formfield_required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(14882217773748275.4558)
,p_template_name=>'FormField_Required'
,p_internal_name=>'FORMFIELD_REQUIRED'
,p_template_body1=>'<em>*</em><label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="aLabel aRequired"><a href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999">'
,p_template_body2=>' <span class="hideMeButHearMe">(#VALUE_REQUIRED#)</span></a></label>'
,p_on_error_after_label=>'<small class="aError">#ERROR_MESSAGE#</small>'
,p_theme_id=>3
,p_theme_class_id=>2
,p_reference_id=>17388508175892042.4558
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/formfield_optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(44225917854582269.4558)
,p_template_name=>'FormField_Optional'
,p_internal_name=>'FORMFIELD_OPTIONAL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="aLabel aOptional"><a href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_after_label=>'<small class="aError">#ERROR_MESSAGE#</small>'
,p_theme_id=>3
,p_theme_class_id=>1
,p_reference_id=>17388415351892041.4558
,p_translate_this_template=>'N'
,p_template_comment=>'<label for="#CURRENT_ITEM_NAME#"><a class="htmldbLabelOptional" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999">'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/apex_5_0_workspace_login_hidden_label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(176608736253329086.4558)
,p_template_name=>'APEX 5.0 - Workspace Login Hidden Label'
,p_internal_name=>'APEX_5.0_-_WORKSPACE_LOGIN_HIDDEN_LABEL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="a-Icon a-Login-iconLabel a-Login-hiddenLabel u-VisuallyHidden">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="a-Form-fieldContainer a-Form-fieldContainer--hiddenLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#"><div class="a-Form-inputContainer">'
,p_after_item=>'#HELP_TEMPLATE#</div></div>'
,p_after_element=>'#ERROR_TEMPLATE#'
,p_help_link=>'<button class="a-Button a-Button--noUI a-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help"></span><span class="u-VisuallyHidden">#CURRENT_ITE'
||'M_HELP_LABEL#</span></button>'
,p_error_template=>'<span class="a-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>3
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/apex_5_0_workspace_login_label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(781639159048309153.4558)
,p_template_name=>'APEX 5.0 - Workspace Login Label'
,p_internal_name=>'APEX_5.0_WORKSPACE_LOGIN_LABEL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="a-Icon a-Login-iconLabel">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="a-Form-fieldContainer #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#"><div class="a-Form-inputContainer">'
,p_after_item=>'</div></div>'
,p_after_element=>'<span class="a-Login-iconValidation a-Icon icon-check"></span>#ERROR_TEMPLATE#'
,p_help_link=>'<button class="a-Button a-Button--noUI a-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help"></span><span class="u-VisuallyHidden">#CURRENT_ITE'
||'M_HELP_LABEL#</span></button>'
,p_error_template=>'<span class="a-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>3
,p_theme_class_id=>4
,p_reference_id=>781637020106265852.4558
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(14576615815371062.4558)
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
,p_theme_id=>3
,p_theme_class_id=>1
,p_reference_id=>17343114994581872.4558
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
 p_id=>wwv_flow_api.id(204024031242767851.4558)
,p_theme_id=>3
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
 p_id=>wwv_flow_api.id(697232742091708847.4558)
,p_theme_id=>3
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(746428295086414612.4558)
,p_theme_id=>3
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(746429553628414613.4558)
,p_theme_id=>3
,p_name=>'FORM_LABEL_ALIGNMENT'
,p_display_name=>'Form Label Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Set Form Alignment for Grid Based forms'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(746429875641414613.4558)
,p_theme_id=>3
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(746430157627414613.4558)
,p_theme_id=>3
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(746431250391414613.4558)
,p_theme_id=>3
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(746431589295414613.4558)
,p_theme_id=>3
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(746431892249414614.4558)
,p_theme_id=>3
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(746432147133414614.4558)
,p_theme_id=>3
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(746432402204414614.4558)
,p_theme_id=>3
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(746432988180414614.4558)
,p_theme_id=>3
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(746433200088414615.4558)
,p_theme_id=>3
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(781726734648536732.4558)
,p_theme_id=>3
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746428338221414612.4558)
,p_theme_id=>3
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_api.id(746428295086414612)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746428558714414612.4558)
,p_theme_id=>3
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_api.id(746428295086414612)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746428773348414612.4558)
,p_theme_id=>3
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_api.id(746428295086414612)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746428915729414613.4558)
,p_theme_id=>3
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_api.id(746428295086414612)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746429163650414613.4558)
,p_theme_id=>3
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_api.id(746428295086414612)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746429366543414613.4558)
,p_theme_id=>3
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_api.id(746428295086414612)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746429653045414613.4558)
,p_theme_id=>3
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(746429553628414613)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746429958855414613.4558)
,p_theme_id=>3
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_api.id(746429875641414613)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746430220624414613.4558)
,p_theme_id=>3
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_api.id(746430157627414613)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746430482398414613.4558)
,p_theme_id=>3
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_api.id(746429875641414613)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746430657805414613.4558)
,p_theme_id=>3
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_api.id(746429875641414613)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746430847159414613.4558)
,p_theme_id=>3
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_api.id(746429875641414613)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746431042745414613.4558)
,p_theme_id=>3
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_api.id(746430157627414613)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746431384717414613.4558)
,p_theme_id=>3
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_api.id(746431250391414613)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746431600411414613.4558)
,p_theme_id=>3
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(746431589295414613)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746431947434414614.4558)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_api.id(746431892249414614)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746432282865414614.4558)
,p_theme_id=>3
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(746432147133414614)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746432501781414614.4558)
,p_theme_id=>3
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_api.id(746432402204414614)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746432705519414614.4558)
,p_theme_id=>3
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(746430157627414613)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746433079620414614.4558)
,p_theme_id=>3
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(746432988180414614)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746433329167414615.4558)
,p_theme_id=>3
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_api.id(746433200088414615)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746433496690414615.4558)
,p_theme_id=>3
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746433643645414615.4558)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_api.id(746431892249414614)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746433877160414615.4558)
,p_theme_id=>3
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_api.id(746432147133414614)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746434030153414615.4558)
,p_theme_id=>3
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_api.id(746432402204414614)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746434121281414615.4558)
,p_theme_id=>3
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(746434226618414615.4558)
,p_theme_id=>3
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(781728246980536738.4558)
,p_theme_id=>3
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(781726734648536732)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(781728430077536738.4558)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(781726734648536732)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(781728646908536739.4558)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(781726734648536732)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(781728899483536739.4558)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(781726734648536732)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(781729002341536739.4558)
,p_theme_id=>3
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(781726734648536732)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(781729164307536739.4558)
,p_theme_id=>3
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(781729218881536739.4558)
,p_theme_id=>3
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(781729383509536739.4558)
,p_theme_id=>3
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(781729426857536739.4558)
,p_theme_id=>3
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(781729513060536739.4558)
,p_theme_id=>3
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1199562975588032438.4558)
,p_theme_id=>3
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(781654005571356486.4558)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(746432988180414614)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1525652253865182060.4558)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(85971030932131423.4558)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1525652342428182060.4558)
,p_theme_id=>3
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(85971030932131423.4558)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1525652435549182060.4558)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(85971030932131423.4558)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1525652539590182060.4558)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(85971030932131423.4558)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1525652722059182061.4558)
,p_theme_id=>3
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(85971030932131423.4558)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(697232742091708847)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1525652918075182061.4558)
,p_theme_id=>3
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(85971030932131423.4558)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(697232742091708847)
,p_template_types=>'LIST'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(9152708051846605.4558)
,p_build_option_name=>'XE'
,p_build_option_status=>'EXCLUDE'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(388938859612826437.4558)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(836093046470445605.4558)
,p_build_option_name=>'Enable APEX Internal Feedback'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
);
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
prompt --application/shared_components/user_interface/shortcuts/thedate
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(174421670078.4558)
,p_shortcut_name=>'THEDATE'
,p_shortcut_type=>'FUNCTION_BODY'
,p_shortcut=>'return to_char(sysdate, ''MM.DD.YYYY'')'
);
end;
/
prompt --application/shared_components/user_interface/shortcuts/item_help
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(14805026971629745.4558)
,p_shortcut_name=>'ITEM_HELP'
,p_shortcut_type=>'HTML_TEXT'
,p_error_text=>unistr('\B3C4\C6C0\B9D0\C744 \D45C\C2DC\D560 \C218 \C5C6\C2B5\B2C8\B2E4.')
,p_reference_id=>24184979678.4558
,p_shortcut=>'<a href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION'')" tabindex="999"><img src="#IMAGE_PREFIX#infoicon_status_gray.gif" width="16" height="16" /></a>'
);
end;
/
prompt --application/shared_components/user_interface/shortcuts/welcometext
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(47306820184100081.4558)
,p_shortcut_name=>'WELCOMETEXT'
,p_shortcut_type=>'HTML_TEXT'
,p_shortcut=>unistr('\D1B5\D569 \C628\B77C\C778 \C560\D50C\B9AC\CF00\C774\C158 \AC1C\BC1C \BAA8\C74C\C5D0 \C989\C2DC \C561\C138\C2A4\D558\C2ED\C2DC\C624. &PRODUCT_NAME.\C744(\B97C) \C0AC\C6A9\D558\BA74 \AC15\B825\D55C \B3D9\C801 \C6F9 \C560\D50C\B9AC\CF00\C774\C158\C744 \C0DD\C131\D558\C5EC \C6D0\D558\B294 \BE0C\B77C\C6B0\C800\C5D0\C11C Oracle \B370\C774\D130\BCA0\C774\C2A4\C758 \BAA8\B4E0 \AE30\B2A5\C744 \D65C\C6A9\D560 \C218 \C788\C2B5\B2C8\B2E4.')
);
end;
/
prompt --application/shared_components/security/authentications/internal_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(540118315091694248.4558)
,p_name=>'Internal Authentication'
,p_scheme_type=>'PLUGIN_COM.ORACLE.APEX.AUTHN.INTERNAL.APEX'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=4550:8:&SESSION.'
,p_cookie_name=>'ORA_WWV_USER_&INSTANCE_ID.'
,p_cookie_path=>'&CGI_SCRIPT_NAME.'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_reference_id=>540226219724705040.4558
);
end;
/
prompt --application/shared_components/plugins/authentication_type/com_oracle_apex_authn_internal_apex
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(113745616947665430.4558)
,p_plugin_type=>'AUTHENTICATION TYPE'
,p_name=>'COM.ORACLE.APEX.AUTHN.INTERNAL.APEX'
,p_display_name=>unistr('Apex \C778\C99D')
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('AUTHENTICATION TYPE','COM.ORACLE.APEX.AUTHN.INTERNAL.APEX'),'')
,p_api_version=>1
,p_authentication_function=>'wwv_flow_authentication_dev.plugin_authenticate_apex'
,p_standard_attributes=>'LOGIN_PAGE'
,p_substitute_attributes=>true
,p_reference_id=>113737019268347425.4558
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
end;
/
prompt --application/shared_components/plugins/authentication_type/com_oracle_apex_authn_internal_cloud_idm
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(356673124532447685.4558)
,p_plugin_type=>'AUTHENTICATION TYPE'
,p_name=>'COM.ORACLE.APEX.AUTHN.INTERNAL.CLOUD_IDM'
,p_display_name=>unistr('INTERNAL Oracle Cloud ID \AD00\B9AC')
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('AUTHENTICATION TYPE','COM.ORACLE.APEX.AUTHN.INTERNAL.CLOUD_IDM'),'')
,p_api_version=>1
,p_ajax_function=>'wwv_flow_authentication_dev.plugin_callback_cloud'
,p_session_sentry_function=>'wwv_flow_authentication_dev.plugin_sentry_cloud'
,p_invalid_session_function=>'wwv_flow_authentication_dev.plugin_invalid_session_cloud'
,p_authentication_function=>'wwv_flow_authentication_dev.plugin_authenticate_cloud'
,p_post_logout_function=>'wwv_flow_authentication_dev.plugin_post_logout_cloud'
,p_standard_attributes=>'LOGIN_PAGE'
,p_substitute_attributes=>true
,p_reference_id=>113749806821809026.4558
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
end;
/
prompt --application/shared_components/plugins/authentication_type/com_oracle_apex_authn_internal_db
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(356675509593447689.4558)
,p_plugin_type=>'AUTHENTICATION TYPE'
,p_name=>'COM.ORACLE.APEX.AUTHN.INTERNAL.DB'
,p_display_name=>unistr('INTERNAL \B370\C774\D130\BCA0\C774\C2A4 \ACC4\C815')
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('AUTHENTICATION TYPE','COM.ORACLE.APEX.AUTHN.INTERNAL.DB'),'')
,p_api_version=>1
,p_authentication_function=>'wwv_flow_authentication_dev.plugin_authenticate_db'
,p_standard_attributes=>'LOGIN_PAGE'
,p_substitute_attributes=>true
,p_reference_id=>113749511183746276.4558
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
end;
/
prompt --application/shared_components/plugins/authentication_type/com_oracle_apex_authn_internal_header
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(356684625134447706.4558)
,p_plugin_type=>'AUTHENTICATION TYPE'
,p_name=>'COM.ORACLE.APEX.AUTHN.INTERNAL.HEADER'
,p_display_name=>unistr('INTERNAL HTTP \D5E4\B354 \BCC0\C218')
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE:JQM_TABLET'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('AUTHENTICATION TYPE','COM.ORACLE.APEX.AUTHN.INTERNAL.HEADER'),'')
,p_api_version=>1
,p_ajax_function=>'wwv_flow_authentication_dev.plugin_callback_header'
,p_session_sentry_function=>'wwv_flow_authentication_dev.plugin_sentry_header'
,p_invalid_session_function=>'wwv_flow_authentication_dev.plugin_invalid_session_header'
,p_authentication_function=>'wwv_flow_authentication_dev.plugin_authenticate_header'
,p_post_logout_function=>'wwv_flow_authentication_dev.plugin_post_logout_header'
,p_standard_attributes=>'LOGIN_PAGE'
,p_substitute_attributes=>true
,p_reference_id=>708795120396802284.4558
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(356684817976447706.4558)
,p_plugin_id=>wwv_flow_api.id(356684625134447706.4558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'HTTP Header Variable Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'OAM_REMOTE_USER'
,p_display_length=>30
,p_max_length=>255
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Specifies the name of the HTTP header variable which contains the username.',
'The default OAM_REMOTE_USER is used by Oracle Access Manager and has to be changed',
'if another authentication provider is used.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(356685218513447707.4558)
,p_plugin_id=>wwv_flow_api.id(356684625134447706.4558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Action if Username is Empty'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'BUILTIN_URL'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'Specifies the action which should be performed if the username stored in the HTTP header variable is empty. The following options are available:',
'</p>',
'<p>',
'<ul>',
'  <li><strong>Redirect to Built-In URL</strong> to initiate a login by the web server. This Built-In URL has to be setup to be protected by the web server, in order to force a login when called. After login, the web server must store the validated us'
||'ername in the HTTP header variable, so it is available to the authentication scheme. The Built-In URL is',
'<pre>/apex/apex_authentication.callback</pre>',
'The prefix <code>/apex/</code> depends on your server configuration.',
'</li>',
'  <li><strong>Redirect to URL</strong> to initiate a login on an external server which then sets the validated username in the HTTP header variable. The external server should redirect back to the application using the URL generated by the <code>#CAL'
||'LBACK#</code> placeholder to complete authentication in the application.</li>',
'  <li><strong>Display Error</strong> will display the specified error message and no login will be performed in the application.</li>',
'</ul>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(356685616471447707.4558)
,p_plugin_attribute_id=>wwv_flow_api.id(356685218513447707.4558)
,p_display_sequence=>10
,p_display_value=>'Redirect to Built-In URL'
,p_return_value=>'BUILTIN_URL'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(356686110431447707.4558)
,p_plugin_attribute_id=>wwv_flow_api.id(356685218513447707.4558)
,p_display_sequence=>20
,p_display_value=>'Redirect to URL'
,p_return_value=>'URL'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(356686604523447707.4558)
,p_plugin_attribute_id=>wwv_flow_api.id(356685218513447707.4558)
,p_display_sequence=>30
,p_display_value=>'Display Error'
,p_return_value=>'ERROR'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(356687116374447708.4558)
,p_plugin_id=>wwv_flow_api.id(356684625134447706.4558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'URL'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_display_length=>60
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(356685218513447707.4558)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'URL'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'Specifies the URL of an external login server which sets the validated username in the HTTP header variable. The external server should redirect back to the application using the URL generated by the <code>#CALLBACK#</code> placeholder to complete au'
||'thentication in the application.',
'</p>',
'<p>',
'<h3>Example:</h3>',
'<pre>http://sso.mycompany.com/?success=#CALLBACK#</pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(356687527311447708.4558)
,p_plugin_id=>wwv_flow_api.id(356684625134447706.4558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Error Message'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>true
,p_display_length=>60
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(356685218513447707.4558)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'ERROR'
,p_help_text=>'Specifies the error message to be displayed if the HTTP header variable does not contain a value or the HTTP header variable does not exist.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(356687918741447708.4558)
,p_plugin_id=>wwv_flow_api.id(356684625134447706.4558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Verify Username'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'ALWAYS'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(356685218513447707.4558)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'BUILTIN_URL,URL'
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'Specifies how often the username stored in the HTTP header variable is verified. The following options are available:',
'</p>',
'<p>',
'<ul>',
'  <li><strong>Each Request</strong> will expect that the CGI variable is always set as soon as the login has been performed by the web server. If the username is not identical to the one stored in the current &PRODUCT_NAME. session, the session will '
||'be invalidated and a new login will be initiated. This is the most secure option because it detects logouts or username changes.',
'  </li>',
'  <li><strong>After Login</strong> will only verify and store the username in the &PRODUCT_NAME. session after the web server has performed the login and calls the callback to complete authentication in the application. For callback see "Action if Us'
||'ername is Empty" configuration.',
'  </li>',
'</ul>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(356688324675447708.4558)
,p_plugin_attribute_id=>wwv_flow_api.id(356687918741447708.4558)
,p_display_sequence=>10
,p_display_value=>'Each Request'
,p_return_value=>'ALWAYS'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(356688823918447709.4558)
,p_plugin_attribute_id=>wwv_flow_api.id(356687918741447708.4558)
,p_display_sequence=>20
,p_display_value=>'After Login'
,p_return_value=>'CALLBACK'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(356689316958447709.4558)
,p_plugin_id=>wwv_flow_api.id(356684625134447706.4558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Logout URL of SSO Server'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If the authentication scheme is based on Oracle Access Manager or similar servers,',
'you can use this attribute to specify a URL to log out of the central single sign-on server.',
'<p/>',
'For Oracle Access Manager based SSO, enter for example',
'<pre>',
'/oamsso/logout.html?end_url=%POST_LOGOUT_URL%',
'</pre>',
'The substitution parameter <strong>%POST_LOGOUT_URL%</strong> will be replaced by an encoded URL to the login page of your application.'))
);
end;
/
prompt --application/shared_components/plugins/authentication_type/com_oracle_apex_authn_internal_ldap
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(356751824591447757.4558)
,p_plugin_type=>'AUTHENTICATION TYPE'
,p_name=>'COM.ORACLE.APEX.AUTHN.INTERNAL.LDAP'
,p_display_name=>unistr('INTERNAL LDAP \B514\B809\D1A0\B9AC')
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE:JQM_TABLET'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('AUTHENTICATION TYPE','COM.ORACLE.APEX.AUTHN.INTERNAL.LDAP'),'')
,p_api_version=>1
,p_authentication_function=>'wwv_flow_authentication_dev.plugin_authenticate_ldap'
,p_standard_attributes=>'INVALID_SESSION:LOGIN_PAGE'
,p_substitute_attributes=>true
,p_reference_id=>863910941135523528.4558
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\B85C\ADF8\C778 \D398\C774\C9C0\C5D0\C11C \C2DD\BCC4\B41C LDAP \B514\B809\D1A0\B9AC \C778\C99D\C744 \C704\D55C \C0AC\C6A9\C790 \C774\B984 \BC0F \BE44\BC00\BC88\D638\B97C \C785\B825\D558\C2ED\C2DC\C624. \BE44\BC00\BC88\D638\B294 \B300\C18C\BB38\C790\B97C \AD6C\BD84\D558\C5EC \C785\B825\D558\C2ED\C2DC\C624.</p>'),
''))
,p_version_identifier=>'1.0'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(356752109391447757.4558)
,p_plugin_id=>wwv_flow_api.id(356751824591447757.4558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Host'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_display_length=>40
,p_max_length=>255
,p_is_translatable=>false
,p_help_text=>'The hostname of your LDAP directory server.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(356752525978447757.4558)
,p_plugin_id=>wwv_flow_api.id(356751824591447757.4558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Port'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>6
,p_max_length=>10
,p_is_translatable=>false
,p_help_text=>'The port number of your LDAP directory host. The default is 389.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(356752909762447757.4558)
,p_plugin_id=>wwv_flow_api.id(356751824591447757.4558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Use SSL'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'NO_SSL'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Choose whether to use SSL to bind to the LDAP directory. If SSL with Authentication is chosen, a wallet must be configured for the &PRODUCT_NAME. instance.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(356753326801447757.4558)
,p_plugin_attribute_id=>wwv_flow_api.id(356752909762447757.4558)
,p_display_sequence=>10
,p_display_value=>'SSL'
,p_return_value=>'SSL'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(356753802092447757.4558)
,p_plugin_attribute_id=>wwv_flow_api.id(356752909762447757.4558)
,p_display_sequence=>20
,p_display_value=>'SSL with Authentication'
,p_return_value=>'SSL_AUTH'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(356754317185447758.4558)
,p_plugin_attribute_id=>wwv_flow_api.id(356752909762447757.4558)
,p_display_sequence=>30
,p_display_value=>'No SSL'
,p_return_value=>'NO_SSL'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(356754811521447759.4558)
,p_plugin_id=>wwv_flow_api.id(356751824591447757.4558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Distinguished Name (DN) String'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_display_length=>40
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter the pattern used to construct the fully qualified distinguished name (DN) string to DBMS_LDAP.SIMPLE_BIND_S if using exact DN or the search base if using non-exact DN. Use <strong>%LDAP_USER%</strong> as a placeholder for the username.  For exa'
||'mple:',
'<p>',
'<strong>Exact DN</strong>',
'</p>',
'<p>',
'cn=%LDAP_USER%,l=amer,dc=yourdomain,dc=com',
'</p>',
'<p>',
'<strong>Non-Exact DN (Search Base)</strong>',
'</p>',
'<p>',
'dc=yourdomain,dc=com',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(356755216699447759.4558)
,p_plugin_id=>wwv_flow_api.id(356751824591447757.4558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Use Exact Distinguished Name (DN)'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Choose whether the LDAP Distinguished Name (DN) String is exact or non-exact. If non-exact, LDAP Distinguished Name (DN) is the search base and you must supply a Search Filter.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(356755624517447759.4558)
,p_plugin_id=>wwv_flow_api.id(356751824591447757.4558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Search Filter'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_display_length=>40
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(356755216699447759.4558)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter the search filter when not using an exact distinguished name (DN). Use <strong>%LDAP_USER%</strong> as a place-holder for the username. For example:',
'</p>',
'<p><pre>cn=%LDAP_USER%</pre></p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(356756013940447759.4558)
,p_plugin_id=>wwv_flow_api.id(356751824591447757.4558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'LDAP Username Edit Function'
,p_attribute_type=>'PLSQL FUNCTION BODY'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'You may provide additional code to be executed to transform the username into a format perfectly suited to the LDAP directory entry or LDAP username.',
'The bind variable :USERNAME contains the name the end user specified.',
'For example, the following code calls a function which replaces all "."''s with "_"''s in the DN string:</p>',
'',
'<p><pre>',
'return apex_custom_auth.ldap_dnprep(p_username => :USERNAME);',
'</pre></p>',
'',
'<p>&PRODUCT_NAME. will escape the returned username based on the authentication attribute <strong>Username Escaping</strong>.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(356756416287447760.4558)
,p_plugin_id=>wwv_flow_api.id(356751824591447757.4558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Username Escaping'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'STD'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Before replacing <strong>%LDAP_USER%</strong> in the LDAP distinguished name and search string,',
'&PRODUCT_NAME. can automatically escape special characters in the username.',
'<p/>',
'The possible rules for escaping are:',
'<ul>',
'<li><strong>Standard</strong>:',
'Escape special characters based on RFC 4514 (for distinguished names) and RFC 4515 (for search strings).',
'Additionally, escape unicode characters.',
'This is the most secure setting, but may cause problems with some LDAP servers.</li>',
'<li><strong>Only special characters</strong>:',
'Escape special characters based on RFC 4514 (for distinguished names) and RFC 4515 (for search strings).',
'Do not escape unicode characters.</li>',
'<li><strong>No escaping</strong>:',
'Do not escape any characters.',
'This setting is potentially insecure,',
'unless a <strong>Username Edit Function</strong> is employed that already',
'escapes the username (for example with apex_escape.ldap_dn or apex_escape.ldap_search_filter).</li>',
'</ul>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(356756825663447760.4558)
,p_plugin_attribute_id=>wwv_flow_api.id(356756416287447760.4558)
,p_display_sequence=>10
,p_display_value=>'Standard'
,p_return_value=>'STD'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(356757310563447761.4558)
,p_plugin_attribute_id=>wwv_flow_api.id(356756416287447760.4558)
,p_display_sequence=>20
,p_display_value=>'Only special characters'
,p_return_value=>'ONLY'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(356757815197447761.4558)
,p_plugin_attribute_id=>wwv_flow_api.id(356756416287447760.4558)
,p_display_sequence=>30
,p_display_value=>'No Escaping'
,p_return_value=>'NO'
);
end;
/
prompt --application/shared_components/plugins/authentication_type/com_oracle_apex_authn_internal_sso
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(356819703353447808.4558)
,p_plugin_type=>'AUTHENTICATION TYPE'
,p_name=>'COM.ORACLE.APEX.AUTHN.INTERNAL.SSO'
,p_display_name=>'INTERNAL Oracle Application Server Single Sign-On'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('AUTHENTICATION TYPE','COM.ORACLE.APEX.AUTHN.INTERNAL.SSO'),'')
,p_api_version=>1
,p_ajax_function=>'wwv_flow_authentication_dev.plugin_callback_osso'
,p_session_sentry_function=>'wwv_flow_authentication_dev.plugin_sentry_osso'
,p_invalid_session_function=>'wwv_flow_authentication_dev.plugin_invalid_session_osso'
,p_authentication_function=>'wwv_flow_authentication_dev.plugin_authenticate_osso'
,p_post_logout_function=>'wwv_flow_authentication_dev.plugin_post_logout_osso'
,p_standard_attributes=>'LOGIN_PAGE'
,p_substitute_attributes=>true
,p_reference_id=>113750429890071859.4558
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(4972214035302345.4558)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>unistr('\B370\C2A4\D06C\D1B1')
,p_display_seq=>10
,p_use_auto_detect=>true
,p_is_default=>true
,p_theme_id=>3
,p_home_url=>'f?p=4500:1000:&SESSION.'
,p_login_url=>'f?p=4550:1:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>.4558
,p_navigation_list_position=>'SIDE'
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
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>.4558
,p_user_interface_id=>wwv_flow_api.id(4972214035302345.4558)
,p_name=>unistr('\C804\C5ED \D398\C774\C9C0 - \B370\C2A4\D06C\D1B1')
,p_step_title=>unistr('\C804\C5ED \D398\C774\C9C0 - \B370\C2A4\D06C\D1B1')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_protection_level=>'D'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(787803699949238365.4558)
,p_plug_name=>'Header'
,p_region_css_classes=>'a-Header a-Header--login'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(781705991385407800.4558)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="f?p=4550:1:&APP_SESSION." class="a-Header-logo" title="Oracle Application Express">',
'  <span class="a-Header-apexLogo"></span>',
'</a>'))
,p_translate_title=>'N'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1.4558
,p_user_interface_id=>wwv_flow_api.id(4972214035302345.4558)
,p_name=>unistr('Oracle Application Express - \C0AC\C778\C778')
,p_step_title=>unistr('&PRODUCT_NAME. - \C0AC\C778\C778')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(222575208632450607)
,p_step_template=>wwv_flow_api.id(781636565276262406.4558)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_deep_linking=>'Y'
,p_help_text=>'start_login.htm'
,p_page_comment=>'intro_login'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5734329754154454.4558)
,p_plug_name=>unistr('\C791\C5C5')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:a-MediaList--noIcons'
,p_plug_template=>wwv_flow_api.id(781720832587518133.4558)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(115315832368341144.4558)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28278406447321936.4558)
,p_plug_name=>unistr('\ACF5\ACE0')
,p_region_css_classes=>'a-Login-message'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(781705991385407800.4558)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'sys.htp.prn( wwv_flow_platform.get_preference( p_preference_name => ''LOGIN_MESSAGE''));'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if wwv_flow_platform.get_preference( p_preference_name => ''LOGIN_MESSAGE'') is null then',
'  return false;',
'else',
'  return true;',
'end if;'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28357414269339279.4558)
,p_plug_name=>unistr('\CD94\AC00 \C815\BCF4')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:a-MediaList--noIcons'
,p_plug_template=>wwv_flow_api.id(781720832587518133.4558)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(8560508234436339.4558)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28359019857369284.4558)
,p_plug_name=>unistr('\C2DC\C791\D558\AE30')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:a-MediaList--noIcons'
,p_plug_template=>wwv_flow_api.id(781720832587518133.4558)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(8566004359605487.4558)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(30251320176465048.4558)
,p_plug_name=>'Oracle Application Express'
,p_region_template_options=>'#DEFAULT#:a-Form--labelsAbove'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(781646415851311877.4558)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(201971822038420445.4558)
,p_plug_name=>'Languages'
,p_parent_plug_id=>wwv_flow_api.id(30251320176465048.4558)
,p_region_css_classes=>'a-Login-links a-Login-links--languages'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(781705991385407800.4558)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'sys.htp.p( wwv_flow_lang.get_language_selector_list );'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_translate_title=>'N'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'wwv_flow_4000_ui.is_translation_installed( p_flow_id => 4000 )'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(59842604093647546.4558)
,p_plug_name=>unistr('\C0AC\C774\D2B8\BCC4 \C791\C5C5')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:a-MediaList--noDesc:a-MediaList--noIcons'
,p_plug_template=>wwv_flow_api.id(781720832587518133.4558)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(787389949330441085.4558)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
,p_plug_query_row_template=>wwv_flow_api.id(232064200547094797.4558)
,p_plug_query_num_rows_type=>'0'
,p_plug_query_show_nulls_as=>' - '
,p_plug_query_break_cols=>'0'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select 1 from wwv_flow_customized_tasks where displayed = ''Y'' and display_location = ''WORKSPACE_LOGIN'''
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(327446700231264735.4558)
,p_plug_name=>'Social Networking Links'
,p_region_css_classes=>'a-Login-social'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(781705991385407800.4558)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.p(',
'   ''<ul class="a-Login-socialLinks">''',
'|| ''  <li class="a-Login-socialLinks-item">''',
'|| ''    <a href="https://apex.oracle.com/twitter" target="_blank" class="a-Login-socialLinks-link">''',
'|| ''      <span class="a-Icon icon-twitter"></span>''',
'|| ''      <span class="u-VisuallyHidden">Twitter</span>''',
'|| ''    </a>''',
'|| ''  </li>''',
'|| ''  <li class="a-Login-socialLinks-item">''',
'|| ''    <a href="https://apex.oracle.com/linkedin" target="_blank" class="a-Login-socialLinks-link">''',
'|| ''      <span class="a-Icon icon-linkedin"></span>''',
'|| ''      <span class="u-VisuallyHidden">LinkedIn</span>''',
'|| ''    </a>''',
'|| ''  </li>''',
'|| ''  <li class="a-Login-socialLinks-item">''',
'|| ''    <a href="https://apex.oracle.com/facebook" target="_blank" class="a-Login-socialLinks-link">''',
'|| ''      <span class="a-Icon icon-facebook"></span>''',
'|| ''      <span class="u-VisuallyHidden">Facebook</span>''',
'|| ''    </a>''',
'|| ''  </li>''',
'|| ''  <li class="a-Login-socialLinks-item">''',
'|| ''    <a href="https://apex.oracle.com/youtube" target="_blank" class="a-Login-socialLinks-link">''',
'|| ''      <span class="a-Icon icon-youtube"></span>''',
'|| ''      <span class="u-VisuallyHidden">YouTube</span>''',
'|| ''    </a>''',
'|| ''  </li>''',
'|| ''</ul>''',
');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(698802056584413313.4558)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(30251320176465048.4558)
,p_button_name=>'REQUEST_WORKSPACE'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(781649650278313424.4558)
,p_button_image_alt=>unistr('\C791\C5C5\C601\C5ED \C694\CCAD')
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=4700:1:&SESSION.::&DEBUG.:RP:::'
,p_button_condition=>'wwv_flow_platform.get_preference( p_preference_name => ''SERVICE_REQUEST_FLOW'' ) <> ''MANUAL'''
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(698801968369413312.4558)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(30251320176465048.4558)
,p_button_name=>'RESET_PASS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(781649650278313424.4558)
,p_button_image_alt=>unistr('\BE44\BC00\BC88\D638 \C7AC\C124\C815')
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47399509230712591.4558)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(30251320176465048.4558)
,p_button_name=>'P1_LOGIN'
,p_button_static_id=>'P1_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(300732121515523410.4558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\B85C\ADF8\C778')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition_type=>'NEVER'
,p_request_source=>'LOGIN_BUTTON'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(232005500580944564.4558)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(30251320176465048.4558)
,p_button_name=>'LOGIN_BUTTON'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:a-Button--large'
,p_button_template_id=>wwv_flow_api.id(781653829819356486.4558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\C0AC\C778\C778')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(9141131880673724.4558)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_required_patch=>wwv_flow_api.id(9152708051846605.4558)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17417718747637820.4558)
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_security_scheme=>wwv_flow_api.id(6153929631135099)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30250621039456935.4558)
,p_name=>'F4550_P1_COMPANY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(30251320176465048.4558)
,p_prompt=>unistr('\C791\C5C5\C601\C5ED')
,p_placeholder=>unistr('\C791\C5C5\C601\C5ED')
,p_source=>'wwv_flow_utilities.get_company_from_cookie;'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>2000
,p_tag_attributes=>'required'
,p_field_template=>wwv_flow_api.id(781639159048309153.4558)
,p_item_css_classes=>'icon-login-workspace'
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<div class="htmldbInfoBodyP">\C791\C5C5\C601\C5ED\C744 \C785\B825\D558\C2ED\C2DC\C624. \C791\C5C5\C601\C5ED \C774\B984\C740 \B300\C18C\BB38\C790\B97C \AD6C\BD84\D558\C9C0 \C54A\C2B5\B2C8\B2E4.</div>'),
unistr('<div class="htmldbInfoBodyP">\C774 \C11C\BE44\C2A4\B294 \AC00\C0C1 \C804\C6A9 \B370\C774\D130\BCA0\C774\C2A4\C5D0 \B300\D55C \C561\C138\C2A4\B97C \C81C\ACF5\D558\B294 \C628\B77C\C778 \AC1C\BC1C \C11C\BE44\C2A4\C785\B2C8\B2E4. \B2E4\C911 \C791\C5C5\C601\C5ED\C5D0 \B3D9\C77C\D55C \C0AC\C6A9\C790 \C774\B984\C774 \C874\C7AC\D560 \C218 \C788\C73C\BBC0\B85C \C774 \C11C\BE44\C2A4\B97C \C0AC\C6A9\D560 \B54C\B294 \C791\C5C5\C601\C5ED\C744 \C785\B825\D574\C57C \D569\B2C8\B2E4.</div>')))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30251012844458645.4558)
,p_name=>'F4550_P1_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(30251320176465048.4558)
,p_prompt=>unistr('\C0AC\C6A9\C790 \C774\B984')
,p_placeholder=>unistr('\C0AC\C6A9\C790 \C774\B984')
,p_source=>'wwv_flow_utilities.get_un_from_cookie'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>2000
,p_tag_attributes=>'required'
,p_field_template=>wwv_flow_api.id(781639159048309153.4558)
,p_item_css_classes=>'icon-login-username'
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<div class="htmldbInfoBodyP">\C0AC\C6A9\C790 \C774\B984\C744 \C785\B825\D558\C2ED\C2DC\C624. \C0AC\C6A9\C790 \C774\B984\C740 \B300\C18C\BB38\C790\B97C \AD6C\BD84\D558\C9C0 \C54A\C2B5\B2C8\B2E4.</div>'),
unistr('<div class="htmldbInfoBodyP">\C778\C99D\C744 \BC1B\C73C\BA74 \C801\C808\D55C \C99D\BA85\C11C\AC00 \C0DD\AE34 \AC83\C73C\B85C \AC04\C8FC\B418\BBC0\B85C \CD94\AC00 \C0AC\C6A9\C790\B97C \C0DD\C131\D560 \C218 \C788\C2B5\B2C8\B2E4.</div>')))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30251520608467092.4558)
,p_name=>'F4550_P1_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(30251320176465048.4558)
,p_prompt=>unistr('\BE44\BC00\BC88\D638')
,p_placeholder=>unistr('\BE44\BC00\BC88\D638')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_tag_attributes=>'autocomplete="off" required'
,p_field_template=>wwv_flow_api.id(781639159048309153.4558)
,p_item_css_classes=>'icon-login-password'
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<div class="htmldbInfoBodyP">\BE44\BC00\BC88\D638\B97C \C785\B825\D558\C2ED\C2DC\C624. \BE44\BC00\BC88\D638\B294 \B300\C18C\BB38\C790\B97C \AD6C\BD84\D569\B2C8\B2E4. \C774 \BE44\BC00\BC88\D638\B294 \C774 \C11C\BE44\C2A4\C5D0\B9CC \D55C\C815\B429\B2C8\B2E4. \AC01 \C791\C5C5\C601\C5ED\C5D0 \C5EC\B7EC \BA85\C758 \C0AC\C6A9\C790\AC00 \C788\C744 \C218 \C788\C2B5\B2C8\B2E4.</div>'),
unistr('<div class="htmldbInfoBodyP">\BE44\BC00\BC88\D638\B97C \C78A\C5B4\BC84\B9B0 \ACBD\C6B0 <span class="fielddatabold">\BE44\BC00\BC88\D638 \C7AC\C124\C815</span>\C744 \C120\D0DD\D558\C2ED\C2DC\C624.</div>')))
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95189738956614247.4558)
,p_name=>'F4550_P1_REMEMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(30251320176465048.4558)
,p_prompt=>unistr('\C791\C5C5\C601\C5ED \BC0F \C0AC\C6A9\C790 \C774\B984 \AE30\C5B5')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'case',
'when wwv_flow_utilities.get_company_from_cookie is not null',
'then ''Y''',
'end'))
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'REMEMBER_WORKSPACE_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(176634981412406067)||'.'
,p_field_template=>wwv_flow_api.id(176608736253329086.4558)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
unistr('\C774 \CCB4\D06C\BC15\C2A4\B97C \C120\D0DD\D560 \ACBD\C6B0 &PRODUCT_NAME.\C740(\B294) \C774\B984\C774 "ORA_WWV_REMEMBER_UN"\C778 \C601\AD6C \BE0C\B77C\C6B0\C800 \CFE0\D0A4\C5D0 \C791\C5C5\C601\C5ED \BC0F \C0AC\C6A9\C790 \C774\B984\C744 \C800\C7A5\D569\B2C8\B2E4. \B2E4\C74C \BC88\C5D0 \B85C\ADF8\C778 \D398\C774\C9C0\B85C \C774\B3D9\D558\BA74 \C790\B3D9\C73C\B85C \C791\C5C5\C601\C5ED \BC0F \C0AC\C6A9\C790 \C774\B984 \D544\B4DC\C5D0 \D574\B2F9 \AC12\C774 \CC44\C6CC\C9D1\B2C8\B2E4.'),
'</p>',
'<p>',
unistr('\C791\C5C5\C601\C5ED \BC0F \C0AC\C6A9\C790 \C774\B984\C774 \CFE0\D0A4\C5D0 \C774\BBF8 \C800\C7A5\B41C \C0C1\D0DC\C5D0\C11C \C774 \CCB4\D06C\BC15\C2A4\C758 \C120\D0DD\C744 \D574\C81C\D560 \ACBD\C6B0'),
unistr('&PRODUCT_NAME.\C740(\B294) \C791\C5C5\C601\C5ED \BC0F \C0AC\C6A9\C790 \C774\B984\C744 \BE48 \AC12\C73C\B85C \ACB9\CCD0\C501\B2C8\B2E4. \BE0C\B77C\C6B0\C800\C758 \AC1C\BC1C\C790 \B3C4\AD6C\B97C \C0AC\C6A9\D558\C5EC \CFE0\D0A4\B97C \C644\C804\D788 \C81C\AC70\D560 \C218\B3C4 \C788\C2B5\B2C8\B2E4.'),
'</p>'))
,p_attribute_01=>'1'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'case',
'when wwv_flow_utilities.get_company_from_cookie is null',
'then ''N''',
'else ''Y''',
'end'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232291604030150875.4558)
,p_name=>'P1_RESET_PASSWORD_LABEL'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(30251320176465048.4558)
,p_source=>'wwv_flow_lang.system_message(''RESET_PASSWORD'');'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1778434620188603210.4558)
,p_name=>'P1_NEXT_APP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(30251320176465048.4558)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1778434823687603211.4558)
,p_name=>'P1_NEXT_PAGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(30251320176465048.4558)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1778435028760603211.4558)
,p_name=>'P1_NEXT_ITEMS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(30251320176465048.4558)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1778435208234603211.4558)
,p_name=>'P1_NEXT_VALUES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(30251320176465048.4558)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(5714811395478232.4558)
,p_computation_sequence=>10
,p_computation_item=>'PRODUCT_TYPE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>'return wwv_flow_lang.system_message(''APPLICATION_DEVELOPMENT'');'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14794408194619070.4558)
,p_validation_name=>'F4550_P1_COMPANY Not Null'
,p_validation_sequence=>10
,p_validation=>'F4550_P1_COMPANY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('\C791\C5C5\C601\C5ED \C774\B984\C744 \C785\B825\D558\C2ED\C2DC\C624.')
,p_associated_item=>wwv_flow_api.id(30250621039456935.4558)
,p_error_display_location=>'INLINE_WITH_FIELD'
,p_validation_comment=>'generated 06-MAY-2002 18:28'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14794718743619076.4558)
,p_validation_name=>'F4550_P1_USERNAME Not Null'
,p_validation_sequence=>20
,p_validation=>'F4550_P1_USERNAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('\C0AC\C6A9\C790 \C774\B984\C744 \C785\B825\D558\C2ED\C2DC\C624.')
,p_associated_item=>wwv_flow_api.id(30251012844458645.4558)
,p_error_display_location=>'INLINE_WITH_FIELD'
,p_validation_comment=>'generated 06-MAY-2002 18:28'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14795009696619077.4558)
,p_validation_name=>'F4550_P1_PASSWORD Not Null'
,p_validation_sequence=>30
,p_validation=>'F4550_P1_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('\BE44\BC00\BC88\D638\B97C \C785\B825\D558\C2ED\C2DC\C624.')
,p_associated_item=>wwv_flow_api.id(30251520608467092.4558)
,p_error_display_location=>'INLINE_WITH_FIELD'
,p_validation_comment=>'generated 06-MAY-2002 18:28'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(698802352859413316.4558)
,p_name=>'Focus on Workspace'
,p_event_sequence=>1
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$("#F4550_P1_COMPANY").val().length < 1 && $("#F4550_P1_USERNAME").val().length < 1'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(698802474866413317.4558)
,p_event_id=>wwv_flow_api.id(698802352859413316.4558)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'F4550_P1_COMPANY'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(698802512740413318.4558)
,p_name=>'Focus on Username'
,p_event_sequence=>2
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$("#F4550_P1_COMPANY").val().length > 0 && $("#F4550_P1_USERNAME").val().length < 1'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(698802638841413319.4558)
,p_event_id=>wwv_flow_api.id(698802512740413318.4558)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'F4550_P1_USERNAME'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(698802182978413314.4558)
,p_name=>'Focus on Password'
,p_event_sequence=>10
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$("#F4550_P1_COMPANY").val().length > 0 && $("#F4550_P1_USERNAME").val().length > 0'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(698802286696413315.4558)
,p_event_id=>wwv_flow_api.id(698802182978413314.4558)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'F4550_P1_PASSWORD'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(362587120355512597.4558)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'disabled login check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if wwv_flow_security.disable_workspace_login then',
'        if :F4550_P1_COMPANY = ''INTERNAL'' then',
'            sys.owa_util.mime_header(''text/html'',false);',
'            sys.owa_util.redirect_url(''f?p=4550:10'');',
'        else',
'            sys.owa_util.status_line(404, ''Page Not Found'');',
'            sys.owa_util.http_header_close;',
'        end if;',
'        wwv_flow.stop_apex_engine;',
'    end if;',
'end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(359371008265397285.4558)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wwv_flow_login.builder (',
'    p_workspace                 => :F4550_P1_COMPANY,',
'    p_username                  => :F4550_P1_USERNAME,',
'    p_password                  => :F4550_P1_PASSWORD,',
'    p_send_builder_login_cookie => :F4550_P1_REMEMBER = ''Y'' );'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(491225097024458.4558)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(297447517593238309.4558)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ip range check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if not #OWNER#.wwv_flow_security.ip_check then',
'      #OWNER#.wwv_flow.g_unrecoverable_error := true;',
'      sys.owa_util.status_line(404, ''Page Not Found'');',
'      sys.owa_util.http_header_close;',
'  end if;',
'end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(362585625418504590.4558)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'disabled login check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if #OWNER#.wwv_flow_security.disable_workspace_login then',
'      #OWNER#.wwv_flow.g_unrecoverable_error := true;',
'      sys.owa_util.status_line(404, ''Page Not Found'');',
'      sys.owa_util.http_header_close;',
'      sys.htp.p(wwv_flow_lang.system_message(''APEX.USER.UNAUTHORIZED''));',
'  end if;',
'end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28292524174506792.4558)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'null pw'
,p_process_sql_clob=>':F4550_P1_PASSWORD := null;'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2.4558
,p_user_interface_id=>wwv_flow_api.id(4972214035302345.4558)
,p_name=>unistr('\CFE0\D0A4 \C5C6\C74C')
,p_alias=>'NOCOOKIE'
,p_step_title=>unistr('\CFE0\D0A4 \C5C6\C74C')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(134636703889796037.4558)
,p_plug_name=>'No Cookies'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_translate_title=>'N'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4.4558
,p_user_interface_id=>wwv_flow_api.id(4972214035302345.4558)
,p_name=>unistr('\B0B4 \C791\C5C5\C601\C5ED \CC3E\AE30')
,p_alias=>'REQUESTWORKSPACE'
,p_step_title=>unistr('\B0B4 \C791\C5C5\C601\C5ED \CC3E\AE30')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(787783544361971642.4558)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22878608880410975.4558)
,p_plug_name=>unistr('\B0B4 \C791\C5C5\C601\C5ED \CC3E\AE30')
,p_region_template_options=>'#DEFAULT#:a-Form--labelsAbove'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(781646415851311877.4558)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26487014153670357.4558)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22878608880410975.4558)
,p_button_name=>'CREATE'
,p_button_static_id=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:a-Button--large'
,p_button_template_id=>wwv_flow_api.id(781653829819356486.4558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\C791\C5C5\C601\C5ED \CC3E\AE30')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22883630052445491.4558)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22878608880410975.4558)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:a-Button--large'
,p_button_template_id=>wwv_flow_api.id(781653829819356486.4558)
,p_button_image_alt=>unistr('\CDE8\C18C')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26487310047670358.4558)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:4::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(26487014153670357.4558)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22891903920551475.4558)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(22883630052445491.4558)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17445301703727502.4558)
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
,p_security_scheme=>wwv_flow_api.id(6153929631135099)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22881822648433869.4558)
,p_name=>'F4550_P4_EMAIL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22878608880410975.4558)
,p_prompt=>unistr('\C804\C790 \BA54\C77C \C8FC\C18C')
,p_placeholder=>unistr('\C804\C790 \BA54\C77C \C8FC\C18C')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>2000
,p_tag_attributes=>'autocomplete="off"'
,p_field_template=>wwv_flow_api.id(781639159048309153.4558)
,p_item_css_classes=>'icon-login-username'
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>unistr('\C791\C5C5\C601\C5ED\ACFC \C5F0\AD00\B41C \C804\C790 \BA54\C77C \C8FC\C18C\B97C \C785\B825\D558\C2ED\C2DC\C624. \C791\C5C5\C601\C5ED \C774\B984\C774 \C774 \C804\C790 \BA54\C77C\B85C \C804\C1A1\B429\B2C8\B2E4.')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'BOTH'
,p_item_comment=>'<small>Your email address in our database</small>'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(5717205948533393.4558)
,p_computation_sequence=>30
,p_computation_item=>'PRODUCT_TYPE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>'return wwv_flow_lang.system_message(''APPLICATION_DEVELOPMENT'');'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(22955710724969695.4558)
,p_validation_name=>'F4550_P4_EMAIL must be valid'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_at number;',
'  l_dot number;',
'begin',
'  l_at := instr(nvl(:F4550_P4_EMAIL,''x''),''@'');',
'  l_dot := instr(nvl(:F4550_P4_EMAIL,''x''),''.'',l_at);',
'  return l_at > 1 and l_dot > 1 and (l_dot - l_at) > 1;',
'end;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('\BD80\C801\D569\D55C \C804\C790 \BA54\C77C \C8FC\C18C')
,p_when_button_pressed=>wwv_flow_api.id(26487014153670357.4558)
,p_associated_item=>wwv_flow_api.id(22881822648433869.4558)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22891011754544211.4558)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'send workspace name'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wwv_flow_fnd_developer_api.f4550_send_workspace (',
'   p_email_address => :F4550_P4_EMAIL );'))
,p_process_error_message=>unistr('\C624\B958')
,p_process_when_button_id=>wwv_flow_api.id(26487014153670357.4558)
,p_process_success_message=>unistr('&F4550_P4_EMAIL.\C774(\AC00) \B808\CF54\B4DC\C5D0 \C874\C7AC\D560 \ACBD\C6B0 \C774 \C804\C790 \BA54\C77C \C8FC\C18C\C640 \C5F0\AD00\B41C \C791\C5C5\C601\C5ED \C774\B984\C744 \C804\C1A1\D569\B2C8\B2E4. \C791\C5C5\C601\C5ED \C774\B984\C744 \C218\C2E0\D558\B294 \B370 \BB38\C81C\AC00 \C788\B294 \ACBD\C6B0 \AD00\B9AC\C790\C5D0\AC8C \BB38\C758\D558\C2ED\C2DC\C624.')
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7.4558
,p_user_interface_id=>wwv_flow_api.id(4972214035302345.4558)
,p_name=>unistr('\BE44\BC00\BC88\D638 \C7AC\C124\C815')
,p_step_title=>unistr('\BE44\BC00\BC88\D638 \C7AC\C124\C815')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(222577907724459883)
,p_step_template=>wwv_flow_api.id(787783544361971642.4558)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8570511463645379.4558)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'AFTER_HEADER'
,p_translate_title=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47285769528327391.4558)
,p_plug_name=>unistr('\BE44\BC00\BC88\D638 \C7AC\C124\C815')
,p_region_template_options=>'#DEFAULT#:a-Form--labelsAbove'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(781646415851311877.4558)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47286811980358498.4558)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(47285769528327391.4558)
,p_button_name=>'resetpassword'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:a-Button--large'
,p_button_template_id=>wwv_flow_api.id(781653829819356486.4558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\BE44\BC00\BC88\D638 \C7AC\C124\C815')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14635328375431475.4558)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(47285769528327391.4558)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:a-Button--large'
,p_button_template_id=>wwv_flow_api.id(781653829819356486.4558)
,p_button_image_alt=>unistr('\CDE8\C18C')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'a-Button--full'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(60120000609053928.4558)
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'ERROR_OCCURRED'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(60096028904579631.4558)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17445722481733542.4558)
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>50
,p_security_scheme=>wwv_flow_api.id(6153929631135099)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22923025971699756.4558)
,p_name=>'F4550_P7_ERROR_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(47285769528327391.4558)
,p_prompt=>unistr('<span class="instructiontext">\C791\C5C5\C601\C5ED \C774\B984\ACFC \C804\C790 \BA54\C77C \C8FC\C18C \C870\D569\C774 \BD80\C801\D569\D569\B2C8\B2E4.</span>')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'ERROR_OCCURRED'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47286220449334625.4558)
,p_name=>'F4550_P7_COMPANY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(47285769528327391.4558)
,p_prompt=>unistr('\C791\C5C5\C601\C5ED')
,p_placeholder=>unistr('\C791\C5C5\C601\C5ED')
,p_post_element_text=>'<small><a href="f?p=4550:4:&APP_SESSION.">&P7_FIND_MY_WORKSPACE_LABEL.</a></small>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_api.id(781639159048309153.4558)
,p_item_css_classes=>'icon-login-workspace'
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'N'
,p_help_text=>unistr('\C791\C5C5\C601\C5ED\C744 \C785\B825\D558\C2ED\C2DC\C624. \C791\C5C5\C601\C5ED\C744 \BAA8\B974\BA74 \B0B4 \C791\C5C5\C601\C5ED \CC3E\AE30 \B9C1\D06C\B97C \C0AC\C6A9\D558\C2ED\C2DC\C624.')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47286414702337991.4558)
,p_name=>'F4550_P7_EMAIL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(47285769528327391.4558)
,p_prompt=>unistr('\C804\C790 \BA54\C77C \C8FC\C18C')
,p_placeholder=>unistr('\C804\C790 \BA54\C77C \C8FC\C18C')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_api.id(781639159048309153.4558)
,p_item_css_classes=>'icon-login-email'
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>unistr('\BE44\BC00\BC88\D638\B97C \C804\C790 \BA54\C77C\B85C \BC1B\C744 \C218 \C788\B3C4\B85D \C804\C790 \BA54\C77C \C8FC\C18C\B97C \C785\B825\D558\C2ED\C2DC\C624.')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'BOTH'
,p_item_comment=>'<small>Your email address in our database</small>'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232259213858994463.4558)
,p_name=>'P7_FIND_MY_WORKSPACE_LABEL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(8570511463645379.4558)
,p_use_cache_before_default=>'NO'
,p_source=>'wwv_flow_lang.system_message(''FIND_MY_WORKSPACE'');'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(22910528694672171.4558)
,p_computation_sequence=>10
,p_computation_item=>'ERROR_OCCURRED'
,p_computation_point=>'AFTER_FOOTER'
,p_computation_type=>'STATIC_ASSIGNMENT'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(74605102595685181.4558)
,p_validation_name=>'F4550_P7_EMAIL Not Null'
,p_validation_sequence=>10
,p_validation=>'F4550_P7_EMAIL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('\C804\C790 \BA54\C77C\C740 \BE44\C6CC \B458 \C218 \C5C6\C2B5\B2C8\B2E4')
,p_associated_item=>wwv_flow_api.id(47286414702337991.4558)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_validation_comment=>'generated 23-JAN-2007 07:29'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(74605307525685181.4558)
,p_validation_name=>'F4550_P7_COMPANY Not Null'
,p_validation_sequence=>20
,p_validation=>'F4550_P7_COMPANY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('\C791\C5C5\C601\C5ED\C740 \BE44\C6CC\B458 \C218 \C5C6\C2B5\B2C8\B2E4.')
,p_associated_item=>wwv_flow_api.id(47286220449334625.4558)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_validation_comment=>'generated 23-JAN-2007 07:29'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(359674223295887132.4558)
,p_validation_name=>'do not allow internal'
,p_validation_sequence=>30
,p_validation=>'nvl(upper(:F4550_P7_COMPANY),''x'') != ''INTERNAL'''
,p_validation_type=>'PLSQL_EXPRESSION'
,p_error_message=>unistr('INTERNAL \C791\C5C5\C601\C5ED\C5D0 \B300\D55C \BE44\BC00\BC88\D638 \C7AC\C124\C815 \C791\C5C5\C740 \C9C0\C6D0\B418\C9C0 \C54A\C2B5\B2C8\B2E4.')
,p_associated_item=>wwv_flow_api.id(47286220449334625.4558)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47291128490577452.4558)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'change password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wwv_flow_fnd_developer_api.f4550_reset_password (',
'  p_email_address=> :F4550_P7_EMAIL,',
'  p_workspace_name=> :F4550_P7_COMPANY );'))
,p_process_error_message=>unistr('\BE44\BC00\BC88\D638\B97C \C7AC\C124\C815\D560 \C218 \C5C6\C2B5\B2C8\B2E4.')
,p_process_when_button_id=>wwv_flow_api.id(47286811980358498.4558)
,p_process_success_message=>unistr('\BE44\BC00\BC88\D638 \C7AC\C124\C815 \C694\CCAD\C774 \CC98\B9AC\B97C \C704\D574 \C804\C1A1\B418\C5C8\C2B5\B2C8\B2E4.')
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8.4558
,p_user_interface_id=>wwv_flow_api.id(4972214035302345.4558)
,p_name=>unistr('\B85C\ADF8\C544\C6C3 \D655\C778')
,p_step_title=>unistr('\B85C\ADF8\C544\C6C3 \D655\C778')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(222579123308464377)
,p_step_template=>wwv_flow_api.id(787783544361971642.4558)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47289611174520429.4558)
,p_plug_name=>unistr('\C131\ACF5\C801\C73C\B85C \C0AC\C778\C544\C6C3\D588\C2B5\B2C8\B2E4.')
,p_region_template_options=>'#DEFAULT#:a-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(781646415851311877.4558)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'sys.htp.p(''<h2 class="unAuthed">'' || wwv_flow_lang.system_message(''YOU_ARE_NOW_LOGGED_OUT'') || ''</h2>'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(235943023326098156.4558)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(47289611174520429.4558)
,p_button_name=>'LOGIN'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:a-Button--large'
,p_button_template_id=>wwv_flow_api.id(781653829819356486.4558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\C0AC\C778\C778 \D398\C774\C9C0\B85C \B3CC\C544\AC00\AE30')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'apex'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17445927460744406.4558)
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>60
,p_security_scheme=>wwv_flow_api.id(6153929631135099)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(47290514531564696.4558)
,p_branch_action=>'&P8_NEXTPAGE.'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'BRANCH_TO_STEP'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(72005820105419587.4558)
,p_name=>'P8_NEXTPAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(47289611174520429.4558)
,p_item_default=>'1'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(698805599458413348.4558)
,p_name=>'Focus on Button'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(698805641444413349.4558)
,p_event_id=>wwv_flow_api.id(698805599458413348.4558)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(235943023326098156.4558)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48179495483070440.4558)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clean up session state'
,p_process_sql_clob=>'delete from wwv_flow_sessions$ where id = :flow_session;'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10.4558
,p_user_interface_id=>wwv_flow_api.id(4972214035302345.4558)
,p_name=>unistr('\B0B4\BD80 \AD00\B9AC \B85C\ADF8\C778')
,p_step_title=>unistr('&PRODUCT_NAME. \AD00\B9AC \C11C\BE44\C2A4')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(222575208632450607)
,p_step_template=>wwv_flow_api.id(787783544361971642.4558)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1043922209309491.4558)
,p_plug_name=>unistr('\AD00\B9AC \C11C\BE44\C2A4')
,p_region_template_options=>'#DEFAULT#:a-Form--labelsAbove'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(781646415851311877.4558)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(694607830412810101.4558)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(1043922209309491.4558)
,p_region_css_classes=>'a-Login-links a-Login-links--languages'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(781705991385407800.4558)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'sys.htp.p( wwv_flow_lang.get_language_selector_list );'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'wwv_flow_4000_ui.is_translation_installed( p_flow_id => 4000 )'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23205800319914944.4558)
,p_plug_name=>'init'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P10_PASSWORD := null;',
'',
'wwv_flow_authentication.add_login_throttle_onload_code;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_translate_title=>'N'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(232279713795102725.4558)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1043922209309491.4558)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:a-Button--large'
,p_button_template_id=>wwv_flow_api.id(781653829819356486.4558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\AD00\B9AC\C5D0 \C0AC\C778\C778')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17446617202750916.4558)
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_security_scheme=>wwv_flow_api.id(6153929631135099)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1046305318309559.4558)
,p_name=>'P10_USERNAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1043922209309491.4558)
,p_prompt=>unistr('\C0AC\C6A9\C790 \C774\B984')
,p_placeholder=>unistr('\C0AC\C6A9\C790 \C774\B984')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_api.id(781639159048309153.4558)
,p_item_css_classes=>'icon-login-username'
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>unistr('\C0AC\C6A9\C790 \C774\B984\C744 \C785\B825\D558\C2ED\C2DC\C624. \C0AC\C6A9\C790 \C774\B984\C740 \B300\C18C\BB38\C790\B97C \AD6C\BD84\D558\C9C0 \C54A\C2B5\B2C8\B2E4. \C778\C99D\C744 \BC1B\C73C\BA74 \C801\C808\D55C \C99D\BA85\C11C\AC00 \C0DD\AE34 \AC83\C73C\B85C \AC04\C8FC\B418\BBC0\B85C \CD94\AC00 \C0AC\C6A9\C790 \C774\B984\C744 \C0DD\C131\D560 \C218 \C788\C2B5\B2C8\B2E4.')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1046904764309561.4558)
,p_name=>'P10_PASSWORD'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1043922209309491.4558)
,p_prompt=>unistr('\BE44\BC00\BC88\D638')
,p_placeholder=>unistr('\BE44\BC00\BC88\D638')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>25
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_api.id(781639159048309153.4558)
,p_item_css_classes=>'icon-login-password'
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>unistr('\BE44\BC00\BC88\D638\B97C \C785\B825\D558\C2ED\C2DC\C624. \BE44\BC00\BC88\D638\B294 \B300\C18C\BB38\C790\B97C \AD6C\BD84\D569\B2C8\B2E4. \BE44\BC00\BC88\D638\B97C \C78A\C5B4\BC84\B9B0 \ACBD\C6B0 "\BE44\BC00\BC88\D638\B97C \C78A\C5B4\BC84\B838\C2B5\B2C8\AE4C?" \B9C1\D06C\B97C \B204\B974\C2ED\C2DC\C624. \AC01 \C791\C5C5\C601\C5ED\C5D0 \C5EC\B7EC \BA85\C758 \C0AC\C6A9\C790\AC00 \C788\C744 \C218 \C788\C2B5\B2C8\B2E4.')
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(5714704123476099.4558)
,p_computation_sequence=>10
,p_computation_item=>'PRODUCT_TYPE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>'return wwv_flow_lang.system_message(''APEX_ADMIN_SERVICES'');'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(239007203778570571.4558)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'disabled login check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if #OWNER#.wwv_flow_security.disable_admin_login then',
'      wwv_flow.g_unrecoverable_error := true;',
'      sys.owa_util.status_line(404, ''Page Not Found'');',
'      sys.owa_util.http_header_close;',
'  end if;',
'end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(359608213674439626.4558)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wwv_flow_login.administrator (',
'    p_username => :P10_USERNAME,',
'    p_password => :P10_PASSWORD);'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1048720322309594.4558)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear Items on this page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'10'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(297445926120231391.4558)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ip range check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if not wwv_flow_security.ip_check then',
'      wwv_flow.g_unrecoverable_error := true;',
'      sys.owa_util.status_line(404, ''Page Not Found'');',
'      sys.owa_util.http_header_close;',
'  end if;',
'end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(362591402740535889.4558)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'disabled login check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if wwv_flow_security.disable_admin_login then',
'      wwv_flow.g_unrecoverable_error := true;',
'      sys.owa_util.status_line(404, ''Page Not Found'');',
'      sys.owa_util.http_header_close;',
'      sys.htp.p(wwv_flow_lang.system_message(''APEX.USER.UNAUTHORIZED''));',
'  end if;',
'end;'))
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20.4558
,p_user_interface_id=>wwv_flow_api.id(4972214035302345.4558)
,p_name=>unistr('Oracle Application Express \B85C\ADF8\C778')
,p_alias=>'WORKSPACES'
,p_step_title=>unistr('&PRODUCT_NAME. \B85C\ADF8\C778')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'		window.grunticon=function(e){if(e&&3===e.length){var t=window,n=!(!t.document.createElementNS||!t.document.createElementNS("http://www.w3.org/2000/svg","svg").createSVGRect||!document.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#Im'
||'age","1.1")||window.opera&&-1===navigator.userAgent.indexOf("Chrome")),o=function(o){var r=t.document.createElement("link"),a=t.document.getElementsByTagName("script")[0];r.rel="stylesheet",r.href=e[o&&n?0:o?1:2],a.parentNode.insertBefore(r,a)},r=new'
||' t.Image;r.onerror=function(){o(!1)},r.onload=function(){o(1===r.width&&1===r.height)},r.src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw=="}};',
'		grunticon( [ "#IMAGE_PREFIX#apex_ui/logo/icons.data.svg.css", "#IMAGE_PREFIX#apex_ui/logo/icons.data.png.css", "#IMAGE_PREFIX#apex_ui/logo/icons.fallback.css" ] );'))
,p_javascript_code_onload=>'apex.jQuery("#WORKSPACE-1").focus();'
,p_step_template=>wwv_flow_api.id(781636565276262406.4558)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(6153929631135099)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(355244609672857359.4558)
,p_plug_name=>'Workspace Selection Items'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(356825125052947229.4558)
,p_plug_name=>unistr('\ACF5\ACE0')
,p_region_css_classes=>'a-Login-message'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(781705991385407800.4558)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'sys.htp.prn( wwv_flow_platform.get_preference( p_preference_name => ''LOGIN_MESSAGE''));'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if wwv_flow_platform.get_preference( p_preference_name => ''LOGIN_MESSAGE'') is null then',
'  return false;',
'else',
'  return true;',
'end if;'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(788148989693515940.4558)
,p_plug_name=>unistr('\C0AC\C774\D2B8\BCC4 \C791\C5C5')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:a-MediaList--noDesc:a-MediaList--noIcons'
,p_plug_template=>wwv_flow_api.id(781720832587518133.4558)
,p_plug_display_sequence=>90
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(787389949330441085.4558)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
,p_plug_query_row_template=>wwv_flow_api.id(232064200547094797.4558)
,p_plug_query_num_rows_type=>'0'
,p_plug_query_show_nulls_as=>' - '
,p_plug_query_break_cols=>'0'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select 1 from wwv_flow_customized_tasks where displayed = ''Y'' and display_location = ''WORKSPACE_LOGIN'''
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(788149141438516546.4558)
,p_plug_name=>unistr('\C2DC\C791\D558\AE30')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:a-MediaList--noIcons'
,p_plug_template=>wwv_flow_api.id(781720832587518133.4558)
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(8566004359605487.4558)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(788149365141517128.4558)
,p_plug_name=>unistr('\CD94\AC00 \C815\BCF4')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:a-MediaList--noIcons'
,p_plug_template=>wwv_flow_api.id(781720832587518133.4558)
,p_plug_display_sequence=>110
,p_plug_new_grid_row=>false
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(8560508234436339.4558)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(788149510285517814.4558)
,p_plug_name=>'Social Networking Links'
,p_region_css_classes=>'a-Login-social'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(781705991385407800.4558)
,p_plug_display_sequence=>120
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="a-Login-socialLinks">',
'  <li class="a-Login-socialLinks-item">',
'    <a href="https://apex.oracle.com/twitter" target="_blank" class="a-Login-socialLinks-link">',
'      <span class="a-Icon icon-twitter"></span>',
'      <span class="u-VisuallyHidden">Twitter</span>',
'    </a>',
'  </li>',
'  <li class="a-Login-socialLinks-item">',
'    <a href="https://apex.oracle.com/linkedin" target="_blank" class="a-Login-socialLinks-link">',
'      <span class="a-Icon icon-linkedin"></span>',
'      <span class="u-VisuallyHidden">LinkedIn</span>',
'    </a>',
'  </li>',
'  <li class="a-Login-socialLinks-item">',
'    <a href="https://apex.oracle.com/facebook" target="_blank" class="a-Login-socialLinks-link">',
'      <span class="a-Icon icon-facebook"></span>',
'      <span class="u-VisuallyHidden">Facebook</span>',
'    </a>',
'  </li>',
'  <li class="a-Login-socialLinks-item">',
'    <a href="https://apex.oracle.com/youtube" target="_blank" class="a-Login-socialLinks-link">',
'      <span class="a-Icon icon-youtube"></span>',
'      <span class="u-VisuallyHidden">YouTube</span>',
'    </a>',
'  </li>',
'</ul>'))
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(788149776764518791.4558)
,p_plug_name=>unistr('\C791\C5C5')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:a-MediaList--noIcons'
,p_plug_template=>wwv_flow_api.id(781720832587518133.4558)
,p_plug_display_sequence=>130
,p_plug_new_grid_row=>false
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_list_id=>wwv_flow_api.id(115315832368341144.4558)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1903077399430433037.4558)
,p_plug_name=>'Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(781705991385407800.4558)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(788098255248103123.4558)
,p_plug_name=>'Oracle Application Express'
,p_parent_plug_id=>wwv_flow_api.id(1903077399430433037.4558)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(788096697713098503.4558)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_count number;',
'begin',
'    sys.htp.p(''<h2 class="a-Login-subTitle"><span class="a-Icon icon-login-username"></span> ''||lower(:APP_USER)||''</h2>'');',
'',
'    select count(*)',
'      into l_count',
'      from wwv_flow_developer_workspaces',
'     where developer_name   = :APP_USER',
'       and workspace_status = ''ASSIGNED'';',
'',
'    if l_count > 0 then',
'        sys.htp.p(''<p class="a-Login-text">''||wwv_flow_lang.system_message(''PLEASE_SELECT_A_WORKSPACE'')||''</p>'');',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(784426701644840009.4558)
,p_plug_name=>unistr('\CD94\AC00 \C815\BCF4 \D544\C694')
,p_parent_plug_id=>wwv_flow_api.id(788098255248103123.4558)
,p_region_css_classes=>'a-Login-message'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(781705991385407800.4558)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\C785\B825\D55C \D558\B098 \C774\C0C1\C758 \D53C\B4DC\BC31 \D56D\BAA9\C774 ''\CD94\AC00 \C815\BCF4\AC00 \C694\CCAD\B428'' \C0C1\D0DC\C785\B2C8\B2E4. \C791\C5C5\C601\C5ED\C744 \C120\D0DD\D558\ACE0 Early Adopter Public Feedback \C560\D50C\B9AC\CF00\C774\C158\C73C\B85C \C774\B3D9\D558\C5EC \D53C\B4DC\BC31\C744 \AC80\D1A0\D558\C2ED\C2DC\C624.</p>'),
unistr('<p><em>\CC38\ACE0: \C774 \ACBD\ACE0\B294 \D53C\B4DC\BC31 \D56D\BAA9\C5D0 \B2E4\C74C\C744 \C785\B825\D560 \B54C\AE4C\C9C0 \ACC4\C18D \D45C\C2DC\B429\B2C8\B2E4.</em></p>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (select ff.created_by',
'           from wwv_flow_feedback f',
'           ,    wwv_flow_feedback_followup ff',
'           where ff.feedback_id = f.id',
'           and f.application_id between 4000 and 4999',
'           and f.security_group_id = 10',
'           and f.feedback_status = 2',
'           and f.created_by = :app_user',
'           order by ff.created_on desc',
'          ) loop',
'  if :app_user = c1.created_by then',
'    return FALSE;',
'  else',
'    return TRUE;',
'  end if;',
'end loop;',
'return FALSE;'))
,p_required_patch=>wwv_flow_api.id(836093046470445605.4558)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(788095677913088930.4558)
,p_plug_name=>'List of Workspaces'
,p_parent_plug_id=>wwv_flow_api.id(788098255248103123.4558)
,p_component_template_options=>'a-MediaList--slim'
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(788072921346081694.4558)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(781726379075536728.4558)
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select *',
'  from wwv_flow_developer_workspaces',
' where developer_name   = :APP_USER',
'   and workspace_status = ''ASSIGNED'''))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(825234084074277602.4558)
,p_plug_name=>'No Rows Returned'
,p_parent_plug_id=>wwv_flow_api.id(788098255248103123.4558)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from wwv_flow_developer_workspaces',
' where developer_name   = :APP_USER',
'   and workspace_status = ''ASSIGNED''',
'union all',
'select null',
'  from wwv_flow_provision_company',
' where admin_userid   = :APP_USER',
'   and project_status in (''REQUESTED'',''ACCEPTED'')'))
,p_plug_header=>'<p class="a-Login-text a-Login-text--notFoundMessage">There are no workspaces associated with your account.</p>'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2024382717374138701.4558)
,p_plug_name=>'Pending Workspace Requests'
,p_parent_plug_id=>wwv_flow_api.id(788098255248103123.4558)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'     from wwv_flow_provision_company',
'    where admin_userid   = :APP_USER',
'      and project_status in (''REQUESTED'',''ACCEPTED'')'))
,p_plug_header=>'<p class="a-Login-text a-Login-text--workspaceRequest">You have workspace requests pending approval. Further instructions will be provided via email.</p>'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1959512182339704219.4558)
,p_plug_name=>'Languages'
,p_parent_plug_id=>wwv_flow_api.id(1903077399430433037.4558)
,p_region_css_classes=>'a-Login-links a-Login-links--languages'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(781705991385407800.4558)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'sys.htp.p( wwv_flow_lang.get_language_selector_list );'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>'wwv_flow_4000_ui.is_translation_installed( p_flow_id => 4000 )'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(355343217768869136.4558)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(788098255248103123.4558)
,p_button_name=>'NEW_WORKSPACE'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#:a-Button--large'
,p_button_template_id=>wwv_flow_api.id(781653829819356486.4558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\C0C8 \C791\C5C5\C601\C5ED\C744 \C694\CCAD\D558\C2ED\C2DC\C624.')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=4700:1:&SESSION.::&DEBUG.:RP:::'
,p_button_condition=>'wwv_flow_platform.get_preference( p_preference_name => ''SERVICE_REQUEST_FLOW'' ) <> ''MANUAL'''
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(787948171855029003.4558)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(788098255248103123.4558)
,p_button_name=>'SIGNOUT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:a-Button--large'
,p_button_template_id=>wwv_flow_api.id(781653829819356486.4558)
,p_button_image_alt=>unistr('\C0AC\C778\C544\C6C3')
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'&LOGOUT_URL.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20780723786489096.4558)
,p_name=>'P20_WORKSPACE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(355244609672857359.4558)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23554931773705253.4558)
,p_name=>'P20_AUTO_LOGIN_OCCURRED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(355244609672857359.4558)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5499919566405279.4558)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'go workspace'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--',
'-- log user into workspace. this immediately re-directs, no branch necessary.',
'--',
'wwv_flow_login.builder (',
'     p_workspace => regexp_replace(:REQUEST ,''^GO_WORKSPACE '', null),',
'     p_username  => :APP_USER );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST like ''GO_WORKSPACE %'''
,p_process_when_type=>'SQL_EXPRESSION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17346400590121618.4558)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Auto-login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_workspace_name varchar2(32767);',
'begin',
'    --',
'    -- bail out if we are in a cycle',
'    --',
'    if :P20_AUTO_LOGIN_OCCURRED = ''Y'' then return; end if;',
'',
'    --',
'    -- get a workspace name',
'    -- clear the item, so an error in login+redirect does not lead to a cycle',
'    --',
'    l_workspace_name := :P20_WORKSPACE;',
'    wwv_flow.update_cache_with_write (',
'         p_name  => ''P20_WORKSPACE'',',
'         p_value => null );',
'    --',
'    -- the user only has access to 1 workspace or provided one in the URL: ',
'    -- automatically login and redirect.',
'    -- this stops processing of the rest of the page.',
'    --',
'    wwv_flow_debug.trace(''... auto-login into %s'',l_workspace_name);',
'    wwv_flow_login.builder (',
'        p_workspace => l_workspace_name,',
'        p_username  => :APP_USER );',
'    --',
'    -- prevent a cycle on login errors',
'    --',
'    :P20_AUTO_LOGIN_OCCURRED := ''Y'';',
'    :P20_WORKSPACE           := null;',
'end;'))
,p_process_when=>'P20_WORKSPACE'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
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
