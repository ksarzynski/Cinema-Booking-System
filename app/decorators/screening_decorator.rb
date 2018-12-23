class ScreeningDecorator < Draper::Decorator
  delegate_all

  def screeningdate
    object.screeningdate.to_time.strftime('%Y-%m-%d %H:%M')
  end
end
