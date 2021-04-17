Assets {
  Id: 3103236718776660123
  Name: "Round Kill Limit"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 625654611704035548
      Objects {
        Id: 625654611704035548
        Name: "Round Kill Limit"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3315708265746411648
        ChildIds: 9244366846504141008
        UnregisteredParameters {
          Overrides {
            Name: "cs:KillLimit"
            Int: 10
          }
          Overrides {
            Name: "cs:KillLimit:tooltip"
            String: "When a player reaches this many kills, the round ends"
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 9244366846504141008
        Name: "RoundKillLimitServer"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 625654611704035548
        UnregisteredParameters {
          Overrides {
            Name: "cs:API"
            AssetReference {
              Id: 11974742996071064388
            }
          }
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 625654611704035548
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 13847736889467854651
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "TemplateAssetRef"
      AssetId: "Round_Kill_Limit"
    }
  }
  SerializationVersion: 81
}
