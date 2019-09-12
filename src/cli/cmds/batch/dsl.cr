class Cmds::BatchCmd
  # main models
  model AdAccount
  model AdSet
  model Campaign
  model Ad

  # mutable and belongs to account
  model AdImage
  model AdLabel
  model AdRule
  model AdStudy
  model AdVideo
  model User

  MODEL_NAMES = {{MODEL_CLASS_IDS.map(&.stringify)}}
end
