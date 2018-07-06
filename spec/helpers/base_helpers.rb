require 'spec_helper'
require 'csv'
require_relative '../../page_object/av_ui_page_objects/gist_page_objects'


class BaseHelpers



attr_reader  :test_data


$gist_page_objects = Gist::GistPageObjects.new


def initialize

  @test_data = IO.foreach('test-data/test_data').to_a


end


def self.new_gist_text_exits
  $gist_page_objects.element_text_exist($gist_page_objects.new_gist_text)
end

def self.enter_create_gist_description(keyword)
  $gist_page_objects.enter_input_data($gist_page_objects.gist_description_input, keyword)
end

def self.enter_create_gist_file_name(keyword)
  $gist_page_objects.enter_input_data($gist_page_objects.file_name_input, keyword)
end

def self.click_file_name_input
  $gist_page_objects.click_file_name_input
end

def self.click_file_content_input
  $gist_page_objects.click_file_content_input
end

def self.enter_create_gist_file_content_input(keyword)
  $gist_page_objects.enter_input_data($gist_page_objects.file_content_input, keyword)
end

def self.click_create_gist_button
  $gist_page_objects.click_create_gist_button
end

def self.click_signin_button
  $gist_page_objects.click_signin_button
end


def self.enter_username(keyword)
  $gist_page_objects.enter_input_data($gist_page_objects.username_input, keyword)
end


def self.enter_password(keyword)
  $gist_page_objects.enter_input_data($gist_page_objects.password_input, keyword)
end

def self.click_signin_user_button
  $gist_page_objects.click_signin_user_button
end

def self.click_go_to_new_gist_button
  $gist_page_objects.click_go_to_new_gist_button
end

def self.click_edit_gist_button
  $gist_page_objects.click_edit_gist_button
end

def self.click_update_gist_button
  $gist_page_objects.click_update_gist_button
end

def self.file_name_text_exist
  $gist_page_objects.element_question_text_exist($gist_page_objects.file_name)
end

def self.file_content_text_exist
  $gist_page_objects.element_question_text_exist($gist_page_objects.file_content_value)
end

def self.click_delete_gist_button
  $gist_page_objects.click_delete_gist_button
end


def self.zip_question_text
  $research_study_input_type.element_question_text_exist($research_study_input_type.zip_question)
end

def self.zip_input
  $research_study_input_type.method_element($research_study_input_type.zip_input)
end

def self.get_zip_input
  $research_study_input_type.get_element_input_data($research_study_input_type.zip_input)
end


def self.email_input
  $research_study_input_type.method_element($research_study_input_type.email_input)
end

def self.get_email_input
  $research_study_input_type.get_element_input_data($research_study_input_type.email_input)
end

def self.enter_email_address(keyword)
  $research_study_input_type.enter_input_data($research_study_input_type.email_input, keyword )
end

def self.email_required_text
  $research_study_input_type.element_required_text_exist($research_study_input_type.email_required_text)
end

def self.email_question_text
  $research_study_input_type.element_required_text_exist($research_study_input_type.email_question)
end

def self.dob_input(keyword)
  $research_study_input_type.enter_input_data($research_study_input_type.dob_input, keyword)
end

def self.click_dob_input
  $research_study_input_type.method_element($research_study_input_type.dob_input)
end

def self.get_dob_input
  $research_study_input_type.get_element_input_data($research_study_input_type.dob_input)
end

def self.dob_required_text
  $research_study_input_type.element_required_text_exist($research_study_input_type.dob_required_text)
end

def self.dob_range_invalid_text
  $research_study_input_type.element_required_text_exist($research_study_input_type.dob_range_invalid)
end

def self.dob_question_text
  $research_study_input_type.element_required_text_exist($research_study_input_type.dob_question)
end


def self.first_name_input(keyword)
  $research_study_input_type.enter_input_data($research_study_input_type.first_name_input,keyword)
end

def self.last_name_input(keyword)
  $research_study_input_type.enter_input_data($research_study_input_type.last_name_input,keyword)
end

def self.get_first_name_input
  $research_study_input_type.get_element_input_data($research_study_input_type.first_name_input)
end

def self.get_last_name_input
  $research_study_input_type.get_element_input_data($research_study_input_type.last_name_input)
end

def self.click_first_name_input
  $research_study_input_type.method_element($research_study_input_type.first_name_input)
end

def self.click_last_name_input
  $research_study_input_type.method_element($research_study_input_type.last_name_input)
end

def self.first_last_name_question_text
  $research_study_input_type.element_required_text_exist($research_study_input_type.first_last_name_question)
end

def self.last_name_required_text
  $research_study_input_type.element_required_text_exist($research_study_input_type.last_name_required_text)
end

def self.first_name_required_text
  $research_study_input_type.element_required_text_exist($research_study_input_type.first_name_required_text)
end

def self.enter_phone_number(keyword)
  $research_study_input_type.enter_input_data($research_study_input_type.phone_input, keyword )
end

def self.click_phone_input
  $research_study_input_type.method_element($research_study_input_type.phone_input)
end

def self.phone_invalid_text
  $research_study_input_type.element_required_text_exist($research_study_input_type.phone_invalid_text)
end

def self.get_phone_input
  $research_study_input_type.get_element_input_data($research_study_input_type.phone_input)
end

def self.dr_visits_input(keyword)
  $research_study_input_type.enter_input_data($research_study_input_type.dr_visit_input,keyword)
end

def self.click_dr_visits_input
  $research_study_input_type.method_element($research_study_input_type.dr_visit_input)
end

def self.get_dr_visits_input
  $research_study_input_type.get_element_input_data($research_study_input_type.dr_visit_input)
end

def self.dr_visits_required_text
  $research_study_input_type.element_required_text_exist($research_study_input_type.dr_visits_required_text)
end

def self.dr_visits_required_positive_text
  $research_study_input_type.element_required_text_exist($research_study_input_type.dr_visits_must_be_positive)
end

def self.monthly_premium_input(keyword)
  $research_study_input_type.enter_input_data($research_study_input_type.monthly_premium_input,keyword)
end

def self.click_monthly_premium_input
  $research_study_input_type.method_element($research_study_input_type.monthly_premium_input)
end
def self.get_monthly_premium_input
  $research_study_input_type.get_element_input_data($research_study_input_type.monthly_premium_input)
end

def self.monthly_premium_required_text
  $research_study_input_type.element_required_text_exist($research_study_input_type.monthly_premium_required)
end

def self.monthly_premium_positive_number_required_text
  $research_study_input_type.element_required_text_exist($research_study_input_type.monthly_premium_positive_number_required)
end

def self.insurance_carrier_input(keyword)
  $research_study_input_type.enter_input_data($research_study_input_type.insurance_carrier_input,keyword)
end

def self.click_insurance_carrier_input
  $research_study_input_type.method_element($research_study_input_type.insurance_carrier_input)
end

def self.get_options
  $research_study_options_type.get_option_value($research_study_options_type.insurance_carrier_options_container)
end

def self.get_option_selection_value
  $research_study_options_type.get_option_selection_value($research_study_options_type.selected_insurance_carrier)
end

def self.research_study_options_type
  ResearchStudyV2::ResearchStudyV2InputTypePageObjects.new
end

def self.research_study_input_type
  ResearchStudyV2::ResearchStudyV2InputTypePageObjects.new
end

def self.research_study_early_exit
  ResearchStudyV2::ResearchStudyV2EarlyExitPageObjects.new
end

def self.enter_prescription(keyword)
  $research_study_input_type.enter_input_data($research_study_input_type.algolia, keyword)
end

def self.enter_payment_email(keyword)
  $research_study_input_type.enter_input_data($research_study_input_type.payment_email, keyword )
end

def self.click_enter_payment_email
  $research_study_input_type.method_element($research_study_input_type.payment_email)
end


def self.enter_esign_first_name(keyword)
  $research_study_input_type.method_element($research_study_input_type.esign_first_name)
  $research_study_input_type.enter_input_data($research_study_input_type.esign_first_name, keyword )
end

def self.enter_esign_last_name(keyword)
  $research_study_input_type.method_element($research_study_input_type.esign_last_name)
  $research_study_input_type.enter_input_data($research_study_input_type.esign_last_name, keyword )
end

def self.get_ref_link
  $research_study_input_type.element_required_text_exist($research_study_input_type.ref_link)
end

def self.click_enter_prescriptions(keyword)
  $research_study_input_type.method_element($research_study_input_type.meds_input)
  $research_study_input_type.enter_input_data($research_study_input_type.meds_input, keyword )
end

def file_split(file_value, num)
  a=[]
  a << file_value
  values =  a[num].to_s.split(";")
  puts values[0]
  puts values [1]
return values

end


end
