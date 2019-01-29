# Controller class for scale daily works
class ScaleController < ApplicationController
  def daily
    @daily_records = Scale.where(t_measured: 1.month.ago..Time.now)
  end

  def monthly
  end
end
