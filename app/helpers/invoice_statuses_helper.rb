module InvoiceStatusesHelper
  def invoice_status_description_by_id(id)
    InvoiceStatus.find_by_id(id) != nil ? InvoiceStatus.find_by_id(id).description : ""
  end
end
