class FilesController < ApplicationController
  def index
    #@files = Dir["files/*"]
    @files = Dir.entries("#{Dir.pwd}/files/").select {|f| !File.directory? f}
  end

  def show
    @file = params['name']
    @data = File.read("#{Dir.pwd}/files/#{@file}")
  end

end
