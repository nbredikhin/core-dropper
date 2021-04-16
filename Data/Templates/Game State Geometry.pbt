Assets {
  Id: 9310173826046192523
  Name: "Game State Geometry"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8334461031128452550
      Objects {
        Id: 8334461031128452550
        Name: "Game State Geometry"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15560188646105002552
        ChildIds: 15981522881091501909
        UnregisteredParameters {
          Overrides {
            Name: "cs:Geometry"
            ObjectReference {
            }
          }
          Overrides {
            Name: "cs:ExistsInLobby"
            Bool: true
          }
          Overrides {
            Name: "cs:ExistsInRound"
            Bool: false
          }
          Overrides {
            Name: "cs:ExistsInRoundEnd"
            Bool: false
          }
          Overrides {
            Name: "cs:Geometry:tooltip"
            String: "The object that should only exist during certain states (must be networked)"
          }
          Overrides {
            Name: "cs:ExistsInLobby:tooltip"
            String: "Does the geometry exist during the lobby state"
          }
          Overrides {
            Name: "cs:ExistsInRound:tooltip"
            String: "Does the geometry exist during the round state"
          }
          Overrides {
            Name: "cs:ExistsInRoundEnd:tooltip"
            String: "Does the geometry exist during the round end state"
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
        Id: 15981522881091501909
        Name: "GameStateGeometryServer"
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
        ParentId: 8334461031128452550
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
              SubObjectId: 8334461031128452550
            }
          }
        }
        WantsNetworking: true
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
            Id: 2095807772852949911
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "TemplateAssetRef"
      AssetId: "Game_State_Geometry"
    }
  }
  SerializationVersion: 81
}
