class VideoObserver < ActiveRecord::Observer

  def before_save(resource)



    tvideo = VideoInfo.new(resource.link)

    #tvideo = Yt::Video.new url: resource.link
    
    resource.uid = tvideo.video_id
    resource.title = tvideo.title
   

end

end