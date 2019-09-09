module Bundled
  SQL = {
    # main models
    "ad_account" => {{ system("cat src/cli/bundled/sql/AdAccount.sql").stringify }},
    "ad_set"     => {{ system("cat src/cli/bundled/sql/AdSet.sql").stringify }},
    "campaign"   => {{ system("cat src/cli/bundled/sql/Campaign.sql").stringify }},
    "ad"         => {{ system("cat src/cli/bundled/sql/Ad.sql").stringify }},

    # mutable resources
    "ad_image"   => {{ system("cat src/cli/bundled/sql/AdImage.sql").stringify }},
    "ad_rule"    => {{ system("cat src/cli/bundled/sql/AdRule.sql").stringify }},
    
    # application data
    "snap" => {{ system("cat src/cli/bundled/sql/snap.sql").stringify }},
  }
end
