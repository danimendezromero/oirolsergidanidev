require 'test_helper'

class ZonaTest < ActiveSupport::TestCase
  def setup
    @nom = 'usertesti'
    @clima = 'tropical'
    @temperatura = 30
    @humitat = 40
    @zona = Zona.new(nom: @nom, clima: @clima, temperatura: @temperatura, humitat: @humitat)
  end

  test "nom should be present" do
    @zona.nom = ""
    assert_not @zona.valid?
  end
  test "clima should be present" do
    @zona.clima = ""
    assert_not @zona.valid?
  end
  test "temperatura should be present" do
    @zona.temperatura = ""
    assert_not @zona.valid?
  end
  test "humitat should be present" do
    @zona.humitat = ""
    assert_not @zona.valid?
  end

  test "temperatura should not be too high" do
    @zona.temperatura = 61
    assert_not @zona.valid?
  end

  test "humitat should not be too high" do
    @zona.humitat = 101
    assert_not @zona.valid?
  end
  test "temperatura should not be too low" do
    @zona.temperatura = -25
    assert_not @zona.valid?
  end

  test "humitat should not be too low" do
    @zona.humitat = 8
    assert_not @zona.valid?
  end

  test "humitat should be ok" do
    @zona.humitat = 50
    assert @zona.valid?
  end
  test "temperatura should be ok" do
    @zona.temperatura = 50
    assert @zona.valid?
  end

end
