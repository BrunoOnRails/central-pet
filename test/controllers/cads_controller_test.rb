require "test_helper"

class CadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cad = cads(:one)
  end

  test "should get index" do
    get cads_url
    assert_response :success
  end

  test "should get new" do
    get new_cad_url
    assert_response :success
  end

  test "should create cad" do
    assert_difference('Cad.count') do
      post cads_url, params: { cad: { bairro: @cad.bairro, celular: @cad.celular, celular2: @cad.celular2, cep: @cad.cep, cidade: @cad.cidade, cnpjcpf: @cad.cnpjcpf, dtnasc: @cad.dtnasc, email: @cad.email, estado: @cad.estado, ie: @cad.ie, nome: @cad.nome, nomecont: @cad.nomecont, nomecont2: @cad.nomecont2, numcasa: @cad.numcasa, pais: @cad.pais, rua: @cad.rua, telefone: @cad.telefone, telefone2: @cad.telefone2 } }
    end

    assert_redirected_to cad_url(Cad.last)
  end

  test "should show cad" do
    get cad_url(@cad)
    assert_response :success
  end

  test "should get edit" do
    get edit_cad_url(@cad)
    assert_response :success
  end

  test "should update cad" do
    patch cad_url(@cad), params: { cad: { bairro: @cad.bairro, celular: @cad.celular, celular2: @cad.celular2, cep: @cad.cep, cidade: @cad.cidade, cnpjcpf: @cad.cnpjcpf, dtnasc: @cad.dtnasc, email: @cad.email, estado: @cad.estado, ie: @cad.ie, nome: @cad.nome, nomecont: @cad.nomecont, nomecont2: @cad.nomecont2, numcasa: @cad.numcasa, pais: @cad.pais, rua: @cad.rua, telefone: @cad.telefone, telefone2: @cad.telefone2 } }
    assert_redirected_to cad_url(@cad)
  end

  test "should destroy cad" do
    assert_difference('Cad.count', -1) do
      delete cad_url(@cad)
    end

    assert_redirected_to cads_url
  end
end
