class Api::V1::UserTripsController < Api::ApiController
  respond_to :json

  def create
    user_trip = UserTrip.new(convert_params)
    user_trip.user_id = current_user.id
    if user_trip.save
      respond_with user_trip
    else
    end
  end

  private

  def convert_params
    attributes = user_trip_params.to_h
    if attributes['high_estimate']
      low = attributes['low_estimate'].to_i
      high = attributes['high_estimate'].to_i
      attributes.merge!('cost' => (high + low) / 2)
    else
      attributes.merge!('cost' => attributes['price_estimate'][1..-1].to_f)
    end
    attributes.delete('price_estimate')
    attributes.delete('high_estimate')
    attributes.delete('low_estimate')
    attributes['duration'] = attributes['duration'].to_i / 60
    attributes['distance'] = attributes['distance'][0..2].to_i
    attributes
  end

  def user_trip_params
    params.permit(:trip_type, :price_estimate,
                                           :duration, :distance,
                                           :high_estimate, :low_estimate)
  end
end
