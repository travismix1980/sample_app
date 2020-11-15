# frozen_string_literal: true

require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = 'Ruby on Rails Tutorial Sample App'
  end

  # test root route
  test 'should get home' do
    get root_path
    assert_response :success
    assert_select 'title', 'Ruby on Rails Tutorial Sample App'
  end

  # this was made root
  # test home static page exists and has proper title
  # test 'should get home' do
  #   get static_pages_home_url
  #   assert_response :success
  #   assert_select 'title', "Home | #{@base_title}"
  # end

  # test help static page exists and has proper title
  test 'should get help' do
    get help_path
    assert_response :success
    assert_select 'title', "Help | #{@base_title}"
  end

  # test about static page exists and has proper title
  test 'should get about' do
    get about_path
    assert_response :success
    assert_select 'title', "About | #{@base_title}"
  end

  # test contact static page exists and has proper title
  test 'should get contact' do
    get contact_path
    assert_response :success
    assert_select 'title', "Contact | #{@base_title}"
  end

end
