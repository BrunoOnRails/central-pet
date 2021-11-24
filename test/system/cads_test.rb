require "application_system_test_case"

class CadsTest < ApplicationSystemTestCase
  setup do
    @cad = cads(:one)
  end

  test "visiting the index" do
    visit cads_url
    assert_selector "h1", text: "Cads"
  end

  test "creating a Cad" do
    visit cads_url
    click_on "New Cad"

    fill_in "Bairro", with: @cad.bairro
    fill_in "Celular", with: @cad.celular
    fill_in "Celular2", with: @cad.celular2
    fill_in "Cep", with: @cad.cep
    fill_in "Cidade", with: @cad.cidade
    fill_in "Cnpjcpf", with: @cad.cnpjcpf
    fill_in "Dtnasc", with: @cad.dtnasc
    fill_in "Email", with: @cad.email
    fill_in "Estado", with: @cad.estado
    fill_in "Ie", with: @cad.ie
    fill_in "Nome", with: @cad.nome
    fill_in "Nomecont", with: @cad.nomecont
    fill_in "Nomecont2", with: @cad.nomecont2
    fill_in "Numcasa", with: @cad.numcasa
    fill_in "Pais", with: @cad.pais
    fill_in "Rua", with: @cad.rua
    fill_in "Telefone", with: @cad.telefone
    fill_in "Telefone2", with: @cad.telefone2
    click_on "Create Cad"

    assert_text "Cad was successfully created"
    click_on "Back"
  end

  test "updating a Cad" do
    visit cads_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @cad.bairro
    fill_in "Celular", with: @cad.celular
    fill_in "Celular2", with: @cad.celular2
    fill_in "Cep", with: @cad.cep
    fill_in "Cidade", with: @cad.cidade
    fill_in "Cnpjcpf", with: @cad.cnpjcpf
    fill_in "Dtnasc", with: @cad.dtnasc
    fill_in "Email", with: @cad.email
    fill_in "Estado", with: @cad.estado
    fill_in "Ie", with: @cad.ie
    fill_in "Nome", with: @cad.nome
    fill_in "Nomecont", with: @cad.nomecont
    fill_in "Nomecont2", with: @cad.nomecont2
    fill_in "Numcasa", with: @cad.numcasa
    fill_in "Pais", with: @cad.pais
    fill_in "Rua", with: @cad.rua
    fill_in "Telefone", with: @cad.telefone
    fill_in "Telefone2", with: @cad.telefone2
    click_on "Update Cad"

    assert_text "Cad was successfully updated"
    click_on "Back"
  end

  test "destroying a Cad" do
    visit cads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cad was successfully destroyed"
  end
end
