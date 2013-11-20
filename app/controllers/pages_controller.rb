class PagesController < ApplicationController
  layout "lesson", :only => [:lesson]
end

class PagesController < ApplicationController
  layout "group", :only => [:group]
end
