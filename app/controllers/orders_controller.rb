class OrdersController < ApplicationController
  # before_action :authenticate_user!
  def new
    @parcel_params =
    {
      departure: params[:departure],
      destination: params[:destination],
      weight: params[:weight],
      height: params[:height],
      length: params[:length],
      width: params[:width],
      insurance_price: params[:insurance_price],
      partner_name: params[:partner_name],
      cost: params[:cost],
    }
  end

  def create
    #Localities routine TODO: discuss
    # departure: params[:departure],
    # destination: params[:destination],
    @parcel = Parcel.create(
        departure: Locality.find_or_create_by(name: params[:departure]),
        destination: Locality.find_or_create_by(name: params[:destination]),
        weight: params[:weight],
        height: params[:height],
        length: params[:length],
        width: params[:width],
        price: params[:insurance_price]
      )
    @dep_point = Endpoint.create(
         index_number: params[:departure_index],
         street_name: params[:departure_street_name],
         house_number: params[:departure_house_number],
         corpus: params[:departure_corpus],
         flat: params[:departure_flat],
         person_name: params[:departure_person_name],
         person_phone: params[:departure_person_phone]
      )
    @des_point = Endpoint.create(
         index_number: params[:destination_index],
         street_name: params[:destination_street_name],
         house_number: params[:destination_house_number],
         corpus: params[:destination_corpus],
         flat: params[:destination_flat],
         person_name: params[:destination_person_name],
         person_phone: params[:destination_person_phone]
      )
    @order = Order.create(
         destination_point: @des_point,
         departure_point: @dep_point,
         partner: Partner.find_or_create_by(name: params[:partner_name]),
         user: current_user,
         parcel: @parcel,
         email: params[:contact_email],
         note: params[:note],
         capture_time: params[:capture_time]
      )
  end

  def search_partners
    @search_params =
    {
      departure: params[:departure],
      destination: params[:destination],
      weight: params[:weight],
      height: params[:height],
      length: params[:length],
      width: params[:width],
      insurance_price: params[:insurance_price]
    }
    #GET PARAMS
    search_params_merged = @search_params.map{|k,v| "#{k}=#{v}"}.join '&'
    non_empty_fields = @search_params.map{|k,v| v ? 1 : 0}.reduce :+
    @complete_search = non_empty_fields == 7
    #Search stub
    if @complete_search
      @search_results = [
        {
          partner_name: 'Partner1',
          cost: 100,
          link_params: "partner_name=Partner1&cost=100&" + search_params_merged
        },
        {
          partner_name: 'Partner2',
          cost: 200,
          link_params: "partner_name=Partner2&cost=200&" + search_params_merged
        },
        {
          partner_name: 'Partner3',
          cost: 300,
          link_params: "partner_name=Partner3s&cost=3s00&" + search_params_merged
        }
      ]
    else
      @search_results = [
        {
          partner_name: 'Partner1',
          cost1: 100,
          cost2: 120,
          cost3: 150
        },
        {
          partner_name: 'Partner2',
          cost1: 200,
          cost2: 220,
          cost3: 250
        },
        {
          partner_name: 'Partner3',
          cost1: 300,
          cost2: 320,
          cost3: 350
        }
      ]
    end
  end
end
