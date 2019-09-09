class Cmds::BatchCmd
  # main models
  model AdAccount
  model AdSet
  model Campaign
  model Ad

  # mutable resources
  model AdImage
  model AdRule

  model AdAsyncRequest
  model AdAsyncRequestSet
  model AdCampaignActivity
  model AdLabel
  model AdStudy
  model AdTopline
  model AdVideo
  model AdsInsights
  model Album
  model Business
  model BusinessRoleRequest
  model Event
  model Group
  model LifeEvent
  model OpenGraphObject
  model PageCallToAction
  model PagePost
  model Photo
  model Post
  model UnifiedThread
  model User

  MODEL_NAMES = {{MODEL_CLASS_IDS.map(&.stringify)}}
end
