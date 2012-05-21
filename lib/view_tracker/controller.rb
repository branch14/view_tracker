module ViewTracker
  module Controller

    def render(*args)
      @render_options = _normalize_args(args)
      super *args
    end

  end
end

