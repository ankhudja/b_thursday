require 'csv'

class CsvAdaptor

  def load_merchants(data_file)
    csv_objs = CSV.read(data_file, headers: true, header_converters: :symbol)
    csv_objs.map do |obj|
      obj[:id] = obj[:id].to_i
      obj[:name] = obj[:name]
      obj[:created_at] = obj[:created_at]
      obj[:updated_at] = obj[:updated_at]
      obj.to_h
    end
  end

  def load_items(data_file)
    csv_objs = CSV.read(data_file, headers: true, header_converters: :symbol)
    csv_objs.map do |obj|
      obj[:id] = obj[:id].to_i
      obj[:name] = obj[:name]
      obj[:created_at] = obj[:created_at]
      obj[:updated_at] = obj[:updated_at]
      obj[:description] = obj[:description]
      obj[:unit_price] = obj[:unit_price]
      obj[:merchant_id] = obj[:merchant_id]
      obj.to_h
    end
  end

  def do_nothing
  end

  def load_invoices(data_file)
    csv_objs = CSV.read(data_file, headers: true, header_converters: :symbol)
    csv_objs.map do |obj|
      obj[:id] = obj[:id].to_i
      obj[:customer_id] = obj[:customer_id].to_i
      obj[:merchant_id] = obj[:merchant_id].to_i
      obj[:updated_at] = obj[:updated_at]
      obj[:status] = obj[:status]
      obj[:created_at] = obj[:created_at]
      obj.to_h
    end
  end



end
