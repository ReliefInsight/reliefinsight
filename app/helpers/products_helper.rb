module ProductsHelper
  def locations
    str = ''
    Donor.all.map do |requester|
      str += '[' + requester.latitude.to_s + ', ' + requester.longitude.to_s + ', "' + requester.name + '"],'
    end
    raw(str[0..(str.length - 1)])
  end
end
