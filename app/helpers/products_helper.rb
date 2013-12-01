module ProductsHelper
  def locations
    str = ''
    Donor.all.map do |requester|
      str += '[' + requester.lat.to_s + ', ' + requester.lng.to_s + ', "' + requester.name + '"],'
    end
    raw(str[0..(str.length - 1)])
  end
end
