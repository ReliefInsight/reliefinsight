module ProductsHelper
  def locations
    str = ''
    Donor.all.map do |donor|
      str += '[' + donor.lat.to_s + ', ' + donor.lng.to_s + ', "' + donor.name + '"],'
    end
    raw(str[0..(str.length - 1)])
  end
end
