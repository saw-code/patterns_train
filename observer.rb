class Channel
  def initialize
    @observers = []
  end

  def subscribe(observer)
    @observers << observer
  end

  def notify_all(update_information)
    @observers.each do |observer|
      observer.input_information(update_information)
    end
  end

  def notify_one(observer, update_information)
    observer.input_information(update_information)
  end

  def destroy(observer)
    @observers.delete(observer)
  end
end

class Subscriber
  def input_information(update_information)
    puts update_information
  end
end

subscriber = Subscriber.new
subscriber2 = Subscriber.new

observable = Channel.new
observable.subscribe(subscriber)
observable.subscribe(subscriber2)

observable.notify_one(subscriber2, 'Второй наблюдатель наблюдает')
observable.notify_all('Очередное обновление')
