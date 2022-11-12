class BootDelay
  def initialize(app)
    @app = app
    @boot_at = Time.now.to_i
  end

  def call(env)
    if Time.now.to_i - @boot_at < 30
      return [500, {}, []]
    end
  
    @app.call(env)
  end
end
