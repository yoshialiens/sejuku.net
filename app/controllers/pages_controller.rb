class PagesController < ApplicationController
  layout "lesson", :only => [:lesson]
end
