class Cmds::BatchCmd
  model AdAccount
  model AdSet
  model Campaign
  model Ad

  MODEL_NAMES = {{MODEL_CLASS_IDS.map(&.stringify)}}
end
