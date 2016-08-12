module MReservation
  class Engine < ::Rails::Engine
    isolate_namespace MReservation

    config.autoload_paths += %W(#{config.root}/app/domains/reservation)
  end
end
