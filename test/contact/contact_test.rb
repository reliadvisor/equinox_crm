require './test/test_helper'

class EquinoxCrmContactTest < Minitest::Test
  def test_exists
    assert Contact
  end

  def test_it_gives_back_a_single_contact
    @client = EquinoxCrm::Client.new("pputvb82KcaD2qgdOsLX7g")
    contact = @client.contacts(35)["contact"]

    assert_equal Hash, contact.class
    assert_equal 35, contact["id"]
    assert_equal "Chaitanya 5", contact["first_name"]
    assert_equal "Contact", contact["middle_name"]
    assert_equal "Nyros", contact["last_name"]
    assert_equal "G", contact["family_name"]
    assert_equal "Test", contact["occupation"]
  end

  def test_it_with_wrong_api_key
    @client = EquinoxCrm::Client.new("qwertyuiopolkjhgfdsas")
    contact = @client.contacts(35)
    assert_equal Hash, contact.class
    assert_equal 401, contact["status"]
  end

  def test_it_gives_back_a_all_contact
    @client = EquinoxCrm::Client.new("pputvb82KcaD2qgdOsLX7g")
    results = @client.contacts_list["contacts"]
    assert results.kind_of?(Array)
  end

  def test_it_with_limit_param
    @client = EquinoxCrm::Client.new("pputvb82KcaD2qgdOsLX7g")
    results = @client.contacts_list(limit: 5)["contacts"]
    assert_equal 5, results.length
  end

  def test_it_with_page_number
    @client = EquinoxCrm::Client.new("pputvb82KcaD2qgdOsLX7g")
    results = @client.contacts_list(page: 2)["page_details"]
    assert_equal 2, results['current_page']
  end

end