module Facebook::Callback
  def before_validate
    @before_validate ||= [] of (Request ->)
  end

  def before_validate(&callback : Request ->)
    before_validate << callback
  end

  def before_execute
    @before_execute ||= [] of (Request ->)
  end

  def before_execute(&callback : Request ->)
    before_execute << callback
  end

  def after_execute
    @after_execute ||= [] of ((Request, Response?) ->)
  end

  def after_execute(&callback : (Request, Response?) ->)
    after_execute << callback
  end
end
