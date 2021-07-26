from config import base_url
import pytest
from selenium.webdriver.firefox.webdriver import WebDriver
from exp import exp
from general_selection import gen_select


@pytest.fixture()
def driver(request):
    fox_driver = WebDriver()
    fox_driver.implicitly_wait(3)
    yield fox_driver


def test_login_site(driver: WebDriver):
    driver.get(base_url)
    field_login = driver.find_element_by_id('normal_login_username').send_keys('1')
    field_pass = driver.find_element_by_id('normal_login_password').send_keys('1')

    enter_btn = driver.find_element_by_tag_name('button').click()
    assert True
    exp(driver)


def test_general_selection(driver: WebDriver):
    driver.get(base_url)
    field_login = driver.find_element_by_id('normal_login_username').send_keys('1')
    field_pass = driver.find_element_by_id('normal_login_password').send_keys('1')

    enter_btn = driver.find_element_by_tag_name('button').click()
    assert True
    gen_select(driver)
