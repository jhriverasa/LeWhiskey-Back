require 'test_helper'

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get invoices_url, as: :json
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post invoices_url, params: { invoice: { clientname: @invoice.clientname, date: @invoice.date, description: @invoice.description, iva: @invoice.iva, middlemanname: @invoice.middlemanname, service: @invoice.service, subtotal: @invoice.subtotal, time: @invoice.time, total: @invoice.total, waitername: @invoice.waitername, waytopay: @invoice.waytopay } }, as: :json
    end

    assert_response 201
  end

  test "should show invoice" do
    get invoice_url(@invoice), as: :json
    assert_response :success
  end

  test "should update invoice" do
    patch invoice_url(@invoice), params: { invoice: { clientname: @invoice.clientname, date: @invoice.date, description: @invoice.description, iva: @invoice.iva, middlemanname: @invoice.middlemanname, service: @invoice.service, subtotal: @invoice.subtotal, time: @invoice.time, total: @invoice.total, waitername: @invoice.waitername, waytopay: @invoice.waytopay } }, as: :json
    assert_response 200
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete invoice_url(@invoice), as: :json
    end

    assert_response 204
  end
end
