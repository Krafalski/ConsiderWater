class GraphController < ApplicationController
  def index
    current_user
    @mood_ratings = User.find(session[:current_user_id]).mood_ratings
    # this renders json instead of the expected view...hrmmm
    # on the path to d3 graphing
    #render json: @mood_ratings
  end


  def data
    current_user
    @array = [1,2,3,4,5,6,7,8,9,10]


@dummydata =
[
{
id: 1,
rating: 1,
created_at: "2016-04-04T17:33:17.611Z",
updated_at: "2016-04-04T17:33:17.611Z",
user_id: 3
},
{
id: 22,
rating: 5,
created_at: "2016-04-05T13:40:14.124Z",
updated_at: "2016-04-05T13:40:14.124Z",
user_id: 3
},
{
id: 23,
rating: 5,
created_at: "2016-04-05T13:40:36.070Z",
updated_at: "2016-04-05T13:40:36.070Z",
user_id: 3
},
{
id: 24,
rating: 5,
created_at: "2016-04-05T13:40:48.664Z",
updated_at: "2016-04-05T13:40:48.664Z",
user_id: 3
},
{
id: 25,
rating: 5,
created_at: "2016-04-05T13:41:08.313Z",
updated_at: "2016-04-05T13:41:08.313Z",
user_id: 3
},
{
id: 26,
rating: 5,
created_at: "2016-04-05T13:41:25.108Z",
updated_at: "2016-04-05T13:41:25.108Z",
user_id: 3
},
{
id: 27,
rating: 2,
created_at: "2016-04-05T13:41:35.949Z",
updated_at: "2016-04-05T13:41:35.949Z",
user_id: 3
},
{
id: 31,
rating: 3,
created_at: "2016-04-05T14:35:23.845Z",
updated_at: "2016-04-05T14:35:23.845Z",
user_id: 3
},
{
id: 32,
rating: 4,
created_at: "2016-04-05T14:48:28.898Z",
updated_at: "2016-04-05T14:48:28.898Z",
user_id: 3
},
{
id: 33,
rating: 8,
created_at: "2016-04-05T17:17:16.858Z",
updated_at: "2016-04-05T17:17:16.858Z",
user_id: 3
},
{
id: 35,
rating: 3,
created_at: "2016-04-06T20:25:27.250Z",
updated_at: "2016-04-06T20:25:27.250Z",
user_id: 3
},
{
id: 36,
rating: 1,
created_at: "2016-04-07T15:13:13.145Z",
updated_at: "2016-04-07T15:13:13.145Z",
user_id: 3
},
{
id: 37,
rating: 6,
created_at: "2016-04-07T15:13:35.757Z",
updated_at: "2016-04-07T15:13:35.757Z",
user_id: 3
},
{
id: 38,
rating: 1,
created_at: "2016-04-07T15:18:17.903Z",
updated_at: "2016-04-07T15:18:17.903Z",
user_id: 3
},
{
id: 39,
rating: 6,
created_at: "2016-04-07T15:43:20.578Z",
updated_at: "2016-04-07T15:43:20.578Z",
user_id: 3
},
{
id: 41,
rating: 10,
created_at: "2016-04-07T16:04:01.639Z",
updated_at: "2016-04-07T16:04:01.639Z",
user_id: 3
},
{
id: 42,
rating: 9,
created_at: "2016-04-07T16:04:10.650Z",
updated_at: "2016-04-07T16:04:10.650Z",
user_id: 3
},
{
id: 43,
rating: 8,
created_at: "2016-04-07T16:04:18.348Z",
updated_at: "2016-04-07T16:04:18.348Z",
user_id: 3
},
{
id: 44,
rating: 7,
created_at: "2016-04-07T16:04:21.350Z",
updated_at: "2016-04-07T16:04:21.350Z",
user_id: 3
},
{
id: 45,
rating: 6,
created_at: "2016-04-07T16:04:24.417Z",
updated_at: "2016-04-07T16:04:24.417Z",
user_id: 3
},
{
id: 46,
rating: 5,
created_at: "2016-04-07T16:04:27.348Z",
updated_at: "2016-04-07T16:04:27.348Z",
user_id: 3
},
{
id: 47,
rating: 4,
created_at: "2016-04-07T16:04:30.896Z",
updated_at: "2016-04-07T16:04:30.896Z",
user_id: 3
},
{
id: 48,
rating: 3,
created_at: "2016-04-07T16:04:35.653Z",
updated_at: "2016-04-07T16:04:35.653Z",
user_id: 3
},
{
id: 49,
rating: 2,
created_at: "2016-04-07T16:04:39.888Z",
updated_at: "2016-04-07T16:04:39.888Z",
user_id: 3
},
{
id: 50,
rating: 1,
created_at: "2016-04-07T16:04:43.947Z",
updated_at: "2016-04-07T16:04:43.947Z",
user_id: 3
},
{
id: 51,
rating: 10,
created_at: "2016-04-07T16:22:00.965Z",
updated_at: "2016-04-07T16:22:00.965Z",
user_id: 3
},
{
id: 52,
rating: 9,
created_at: "2016-04-07T16:22:50.228Z",
updated_at: "2016-04-07T16:22:50.228Z",
user_id: 3
},
{
id: 53,
rating: 7,
created_at: "2016-04-07T16:23:15.055Z",
updated_at: "2016-04-07T16:23:15.055Z",
user_id: 3
},
{
id: 54,
rating: 4,
created_at: "2016-04-07T16:23:26.300Z",
updated_at: "2016-04-07T16:23:26.300Z",
user_id: 3
},
{
id: 55,
rating: 9,
created_at: "2016-04-07T16:23:42.751Z",
updated_at: "2016-04-07T16:23:42.751Z",
user_id: 3
},
{
id: 56,
rating: 10,
created_at: "2016-04-07T16:24:52.424Z",
updated_at: "2016-04-07T16:24:52.424Z",
user_id: 3
},
{
id: 57,
rating: 10,
created_at: "2016-04-07T16:26:10.721Z",
updated_at: "2016-04-07T16:26:10.721Z",
user_id: 3
},
{
id: 58,
rating: 8,
created_at: "2016-04-07T16:27:31.311Z",
updated_at: "2016-04-07T16:27:31.311Z",
user_id: 3
},
{
id: 59,
rating: 2,
created_at: "2016-04-07T16:28:21.057Z",
updated_at: "2016-04-07T16:28:21.057Z",
user_id: 3
},
{
id: 60,
rating: 2,
created_at: "2016-04-07T17:59:16.115Z",
updated_at: "2016-04-07T17:59:16.115Z",
user_id: 3
},
{
id: 66,
rating: 10,
created_at: "2016-04-07T23:41:11.705Z",
updated_at: "2016-04-07T23:41:11.705Z",
user_id: 3
}
]














    @mood_ratings = User.find(session[:current_user_id]).mood_ratings
    respond_to do |format|
      format.json {
        render :json => @array

        # renders [object Object]
        #render :json => @mood_ratings

      }
    end
  end
end
