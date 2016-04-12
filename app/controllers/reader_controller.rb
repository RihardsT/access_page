class ReaderController < ApplicationController
  skip_before_action :verify_authenticity_token
  def open
    unless params[:user_id].nil?
      @timeopen = Time.now
      @log = Log.new(user_id:params[:user_id], timeopen:Time.now, action:1, reason:"Test1")
      @log.save
      render text: params, :status => 200
    end
    unless params[:door_status].nil?
      if params[:door_status] == "1"  #opened
        @timeopen = Time.now
        @log = Log.new(user_id:2, timeopen:Time.now, action:1, reason:"Test1")
        @log.save
        render text: params, :status => 201
      elsif params[:door_status] == "0" #closed
        @timeclose == Time.now
        Log.last.update(timeclose:Time.now)
        render text: params, :status => 202
      end
    end
  end
end
