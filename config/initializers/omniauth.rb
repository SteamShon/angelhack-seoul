Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'SI5XXyCFt6lUC0X1ncizA', '2cRMRdBZIdRgWiSsWTGVNyEN5UeMxNyrFS4fmLWE'
  provider :facebook, '7804589350', '3473a2654dfce15c8527443ac5fee4f9'
end
