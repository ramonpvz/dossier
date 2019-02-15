class StaticPagesController < ApplicationController
  def about
    puts("---------------------------------- Sending to about page...")
  end

  def post
    puts("---------------------------------- Sending to post page...")
  end

  def contact
    puts("---------------------------------- Sending to contact page...")
  end
end
