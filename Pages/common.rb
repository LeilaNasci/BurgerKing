require 'watir'

class Common

  # def initialize(browser)
  #   @browser=browser
  # end

  def Common.preenche_campo(txt, tipo, locator)
    if tipo='id'
      $browser.text_field(id: locator).set txt
    elsif tipo='name'
      $browser.text_field(name: locator).set txt
    end
  end

  def Common.clica_link(locator)
    $browser.link(locator).click
  end

  def Common.clica_button(locator)
      $browser.button(locator).click
  end

  def Common.abre_segunda_aba()
    $browser.switch_window
  end

  def Common.clica_link_text(locator)
    $browser.link(text: locator).click
  end

end
