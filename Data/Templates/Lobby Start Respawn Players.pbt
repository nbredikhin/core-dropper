Assets {
  Id: 1528177941152496510
  Name: "Lobby Start Respawn Players"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13354720253605587128
      Objects {
        Id: 13354720253605587128
        Name: "Lobby Start Respawn Players"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15560188646105002552
        ChildIds: 7689294975764800308
        UnregisteredParameters {
          Overrides {
            Name: "cs:Period"
            Float: 3
          }
          Overrides {
            Name: "cs:Period:tooltip"
            String: "Period over which players are respawned to avoid a spike of network traffic."
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
        Id: 7689294975764800308
        Name: "LobbyStartRespawnPlayersServer"
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
        ParentId: 13354720253605587128
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
              SubObjectId: 13354720253605587128
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
            Id: 4596364718294812401
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "TemplateAssetRef"
      AssetId: "Lobby_Start_Respawn_Players"
    }
  }
  SerializationVersion: 81
}
