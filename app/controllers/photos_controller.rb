class PhotosController < ApplicationController


  #Actions to CREATE photos
  def new_form

  end

  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save
    redirect_to("/")
  end

  #Actions to READ photos
  def index
    @list_of_photos = Photo.all

  end

  def show
    @photo = Photo.find_by({ :id => params[:id] })
    @photo_caption = @photo.caption
    @photo_source = @photo.source
    @photo_id =  @photo.id
  end

  #Actions to UPDATE photos
  def edit
    @photo = Photo.find_by({ :id => params[:id] })
    @photo_caption = @photo.caption
    @photo_source = @photo.source
    @photo_id =  @photo.id
    @photo.save
  end

  def update
    @photo = Photo.find_by({ :id => params[:id] })
    @photo.caption = params[:the_caption]
    @photo.source = params[:the_source]
    @photo.save

    @photo_caption = @photo.caption
    @photo_source = @photo.source
    @photo_id =  @photo.id
  end

  #Actions to DELETE photos
  def destroy
  p = Photo.find_by({ :id => params[:id] })
  p.delete

  redirect_to("/")
  end

end
