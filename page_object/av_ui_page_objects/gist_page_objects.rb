require 'site_prism'
require 'capybara'

module Gist

  class GistPageObjects < SitePrism::Page

    attr_reader :gist_description_input, :file_name_input, :file_content_input, :create_gist_button, :phone_invalid_text,
                :edit_gist_button, :update_gist_button, :delete_gist_button, :signin_button, :username_input, :password_input,
                :signin_user_button, :go_to_new_gist_button, :file_name, :file_content_value

    #sign in
    element :signin_button, '//*[text()=\'Sign in\']'

    element :username_input, '//input[@name="login"]'
    element :password_input, '//input[@name="password"]'
    element :signin_user_button, '//input[@name="commit"]'
    element :go_to_new_gist_button, '//*[text()=\'New gist\']'
    #create gist -

    element :new_gist_text, '//*[text()=\'New gist\']'
    element :gist_description_input, '//input[@class="form-control input-block input-contrast"]'
    element :file_name_input, '//input[@class="form-control filename js-gist-filename js-blob-filename"]'
    element :file_content_input, '//div[2]/div/div[2]/div/div[5]'
    element :create_gist_button, '//button[@class="btn js-gist-create"]'
    element :file_name, '//strong[@class="gist-header-title css-truncate-target"]'

    #update gist
    element :edit_gist_button, '//a[@aria-label="Edit this Gist"]'
    element :update_gist_button, '//button[@class="btn btn-primary"]'
    element :file_content_value, '//td[@class="blob-code blob-code-inner js-file-line"]'

    #delete gist
    element :delete_gist_button, '//button[@class="btn btn-sm btn-danger"]'




    def has_text_value?(field, value)
      field.value ==value
    end

    def enter_input_data(element, keyword)
      1.times do
        break if has_text_value?(element,keyword)
        element.set keyword
      end
    end

    def click_file_name_input
      wait_for_file_name_input
      file_name_input.click
      sleep(0.4)
    end


    def click_file_content_input
      wait_for_file_content_input
      file_content_input.click
      sleep(0.4)
    end

    def click_create_gist_button
      wait_for_create_gist_button
      create_gist_button.click
      sleep(0.4)
    end

    def click_edit_gist_button
      wait_for_edit_gist_button
      edit_gist_button.click
      sleep(0.4)
    end

    def click_update_gist_button
      wait_for_update_gist_button
      update_gist_button.click
      sleep(0.4)
    end
    def click_signin_button
      wait_for_signin_button
      signin_button.click
      sleep(0.4)
    end

    def click_go_to_new_gist_button
      wait_for_go_to_new_gist_button
      go_to_new_gist_button.click
      sleep(0.4)
    end


    def click_signin_user_button
      wait_for_signin_user_button
      signin_user_button.click
      sleep(0.4)
    end


    def click_delete_gist_button
      wait_for_delete_gist_button
      delete_gist_button.click
      sleep(0.4)
    end




    def method_element(element)
      method_name = "wait_until_#{element}_visible"
      run_method(method_name)
      element.click
    end

    def run_method(method_name)
      "#{self.class.name} => :#{method_name}"
    end


    def element_text_exist(element)
      method_name = "wait_until_#{element}_visible"
      run_method(method_name)
      element.text
    end

    def element_question_text_exist(element)
      method_name = "wait_until_#{element}_visible"
      run_method(method_name)
      element.text
    end

    def click_top_clickable_arrow
      wait_for_top_clickable_arrow
      top_clickable_arrow.click
    end

    def get_element_input_data(element)
      element.value
    end

    def get_ref_link
      wait_for_ref_link
      ref_link.text
    end

  end
end
