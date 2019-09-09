class Cmds::BatchCmd
  model AdAccount
  model AdSet
  model Campaign
  model Ad

  model AdAsyncRequest
  model AdAsyncRequestSet
  model AdCampaignActivity
  model AdImage
  model AdLabel
  model AdRule
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
