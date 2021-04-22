Assets {
  Id: 13132734304299160487
  Name: "Efficient Collectables"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1922599688902567268
      Objects {
        Id: 1922599688902567268
        Name: "Efficient Collectables"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 15182716804834894236
        UnregisteredParameters {
          Overrides {
            Name: "cs:EfficientCollectables_README"
            AssetReference {
              Id: 8584769644020850203
            }
          }
          Overrides {
            Name: "cs:CollectableCoinGroup"
            AssetReference {
              Id: 15530271295355379802
            }
          }
          Overrides {
            Name: "cs:HarvestableTreePatch"
            AssetReference {
              Id: 1991483849425305817
            }
          }
          Overrides {
            Name: "cs:ResetCollectablesButton"
            AssetReference {
              Id: 17617315677361929472
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 15182716804834894236
        Name: "EfficientCollectables_README"
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
        ParentId: 1922599688902567268
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
            Id: 8584769644020850203
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "It\'s common in games to want to have lots of items that can be picked up by players. Unfortunately, the obvious approach (each collectable as an individual netowrked object) can lead to severe performance problems, if there are large number of collectable objects.\r\n\r\nThis community content is intended to get around that problem, and enable game worlds with thousands of potential collectable objects!"
  }
  SerializationVersion: 81
  DirectlyPublished: true
}
