Warden::Manager.after_set_user do |record, warden, opts|
  if record.respond_to?(:update_lastseenable_fields!)
    record.update_lastseenable_fields!(warden.request)
  end
end