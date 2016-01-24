class OrdersController < ApplicationController
  # before_action :authenticate_user!
  def new
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
