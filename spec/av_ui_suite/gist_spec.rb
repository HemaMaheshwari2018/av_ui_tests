require 'spec_helper'
require 'faker'
require 'launchy'
require 'active_support/core_ext/module/delegation'
require_relative '../../spec/helpers/helpers'
require_relative '../../page_object/av_ui_page_objects/gist_page_objects'
require_relative '../../spec/helpers/base_helpers'
require_relative '../helpers/text'



describe 'Create Gist-'   do


  delegate :new_gist_text_exits,
           :enter_create_gist_description,
           :enter_create_gist_file_name,
           :enter_create_gist_file_content_input,
           :click_create_gist_button,
           :click_signin_button,
           :enter_username,
           :enter_password,
           :click_signin_user_button,
           :click_go_to_new_gist_button,
           :click_file_content_input,
           :click_file_name_input,
           :click_edit_gist_button,
           :click_update_gist_button,
           :file_name_text_exist,
           :file_content_text_exist,
           :click_delete_gist_button,
           to: BaseHelpers

  before do
    @random = (0..10).map{ rand(36).to_s(36) }.join
    @file_desc='test'+@random
    @file_name= 'test'+@random+'.rb'
    puts @file_name
  end

  it 'create_gist'  do
    #visit the page and click signin button
    visit_create_gist
    url = URI.parse(current_url)
    puts url
    click_signin_button

    #login
    enter_username(Text::USERNAME)
    enter_password(Text::PASSWORD)
    click_signin_user_button

    #create gist
    click_go_to_new_gist_button
    enter_create_gist_description(@file_desc)
    enter_create_gist_file_name(@file_name)
    click_file_content_input
    sleep(1)
    page.execute_script('document.getElementsByClassName(\'CodeMirror\')[0].CodeMirror.setValue(\'456\')')
    click_create_gist_button
    expect(file_name_text_exist). to eq @file_name

    #edit and update gist
    click_edit_gist_button
    page.execute_script('document.getElementsByClassName(\'CodeMirror\')[0].CodeMirror.setValue(\'789\')')
    click_update_gist_button
    expect(file_content_text_exist). to eq ('789')

    #delete gist
    click_delete_gist_button
    sleep(1)
    page.driver.browser.switch_to.alert.accept

    #verify that gist is deleted
    page.should_not have_selector("//*[text()='#{@file_name}']")
  end




  end

