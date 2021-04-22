Assets {
  Id: 10246636558702406976
  Name: "World Leaderboard"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 16188348558732333763
      Objects {
        Id: 16188348558732333763
        Name: "World Leaderboard"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5370394452602162863
        ChildIds: 6945980622011280681
        ChildIds: 16186410784617786842
        ChildIds: 4544488942836156781
        UnregisteredParameters {
          Overrides {
            Name: "cs:LeaderboardReference"
            NetReference {
              Type {
                Value: "mc:enetreferencetype:unknown"
              }
            }
          }
          Overrides {
            Name: "cs:LeaderboardType"
            String: "GLOBAL"
          }
          Overrides {
            Name: "cs:LeaderboardStat"
            String: "DEATHS"
          }
          Overrides {
            Name: "cs:LeaderboardPersistence"
            String: "TOTAL"
          }
          Overrides {
            Name: "cs:ResourceName"
            String: ""
          }
          Overrides {
            Name: "cs:DisplayAsInteger"
            Bool: true
          }
          Overrides {
            Name: "cs:UpdateTimer"
            Float: 30
          }
          Overrides {
            Name: "cs:UpdateOnEvent"
            String: "UpdateLeaderboards"
          }
          Overrides {
            Name: "cs:UpdateOnResourceChanged"
            Bool: false
          }
          Overrides {
            Name: "cs:UpdateOnPlayerDied"
            Bool: false
          }
          Overrides {
            Name: "cs:UpdateOnDamageDealt"
            Bool: false
          }
          Overrides {
            Name: "cs:UpdateOnRoundEnd"
            Bool: false
          }
          Overrides {
            Name: "cs:FirstPlaceColor"
            Color {
              R: 1
              G: 0.67954272
              A: 1
            }
          }
          Overrides {
            Name: "cs:SecondPlaceColor"
            Color {
              R: 0.527115345
              G: 0.527115345
              B: 0.527115345
              A: 1
            }
          }
          Overrides {
            Name: "cs:ThirdPlaceColor"
            Color {
              R: 0.610495746
              G: 0.212230787
              B: 0.0318960398
              A: 1
            }
          }
          Overrides {
            Name: "cs:NoPodiumPlacementColor"
            Color {
              R: 0.783538043
              G: 0.701102138
              B: 0.617206752
              A: 1
            }
          }
          Overrides {
            Name: "cs:UsernameColor"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:ScoreColor"
            Color {
              G: 0.496933132
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:LeaderboardType:tooltip"
            String: "The LeaderboardType for the leaderboard referenced | GLOBAL, MONTLY, WEEKLY, DAILY"
          }
          Overrides {
            Name: "cs:LeaderboardStat:tooltip"
            String: "What is being tracked by the leaderboard | RESOURCE, KDR, KILLS, DEATHS, DAMAGE_DEALT"
          }
          Overrides {
            Name: "cs:UpdateTimer:tooltip"
            String: "The seconds for the leaderboard to update naturally; must be greater than 0"
          }
          Overrides {
            Name: "cs:ResourceName:tooltip"
            String: "The name of the resource that will be monitored; only applies if LeaderboardStat is RESOURCE"
          }
          Overrides {
            Name: "cs:DisplayAsInteger:tooltip"
            String: "Determines if the score is shown as an interger (1) or a float (1.0)"
          }
          Overrides {
            Name: "cs:UpdateOnEvent:tooltip"
            String: "The leaderboard will update upon this event being fired"
          }
          Overrides {
            Name: "cs:UpdateOnResourceChanged:tooltip"
            String: "The leaderboard will update upon a player\'s resource changing that corresponds to this leaderboard\'s ResourceName; does not apply if LeaderboardStat is not RESOURCE"
          }
          Overrides {
            Name: "cs:UpdateOnPlayerDied:tooltip"
            String: "The leaderboard will update upon a player dying; does not apply if LeaderboardStat is not KDR, KILLS, or DEATHS"
          }
          Overrides {
            Name: "cs:UpdateOnDamageDealt:tooltip"
            String: "The leaderboard will update upon a player being damaged; does not apply if LeaderboardStat is not DAMAGE_DEALT"
          }
          Overrides {
            Name: "cs:UpdateOnRoundEnd:tooltip"
            String: "The leaderboard will update upon Game.roundEndEvent"
          }
          Overrides {
            Name: "cs:LeaderboardPersistence:tooltip"
            String: "How data should be tracked | TOTAL, ROUND"
          }
          Overrides {
            Name: "cs:LeaderboardReference:tooltip"
            String: "The NetReference for the Leaderboard (View -> Global Leaderboards)"
          }
          Overrides {
            Name: "cs:FirstPlaceColor:tooltip"
            String: "The color for the person in the first place on the leaderbard"
          }
          Overrides {
            Name: "cs:SecondPlaceColor:tooltip"
            String: "The color for the person in the second place on the leaderbard"
          }
          Overrides {
            Name: "cs:ThirdPlaceColor:tooltip"
            String: "The color for the person in the third place on the leaderbard"
          }
          Overrides {
            Name: "cs:NoPodiumPlacementColor:tooltip"
            String: "The color for the everyone not on the podium (not top 3)"
          }
          Overrides {
            Name: "cs:UsernameColor:tooltip"
            String: "The color for each player\'s username"
          }
          Overrides {
            Name: "cs:ScoreColor:tooltip"
            String: "The color for each player\'s score"
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
        Id: 6945980622011280681
        Name: "Leaderboard"
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
        ParentId: 16188348558732333763
        UnregisteredParameters {
          Overrides {
            Name: "cs:Leaderboard"
            ObjectReference {
              SubObjectId: 16188348558732333763
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
            Id: 2872451560104345178
          }
        }
      }
      Objects {
        Id: 16186410784617786842
        Name: "Scenery"
        Transform {
          Location {
            Z: 200
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16188348558732333763
        ChildIds: 18263848789890147457
        ChildIds: 176039273165408678
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
        Id: 18263848789890147457
        Name: "Board"
        Transform {
          Location {
            Z: -35
          }
          Rotation {
          }
          Scale {
            X: 0.1
            Y: 4
            Z: 3.3
          }
        }
        ParentId: 16186410784617786842
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13948944933562880915
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 176039273165408678
        Name: "Underline"
        Transform {
          Location {
            Z: 165
          }
          Rotation {
            Roll: 90
          }
          Scale {
            X: 0.1
            Y: 0.7
            Z: 4
          }
        }
        ParentId: 16186410784617786842
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13948944933562880915
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.4
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.5
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.5
              G: 0.5
              B: 0.5
              A: 1
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 4544488942836156781
        Name: "ClientContext"
        Transform {
          Location {
            Z: 200
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16188348558732333763
        ChildIds: 15683458843903270318
        ChildIds: 10882944944214396970
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 15683458843903270318
        Name: "Leaderboard_World"
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
        ParentId: 4544488942836156781
        UnregisteredParameters {
          Overrides {
            Name: "cs:EntryTemplate"
            AssetReference {
              Id: 15188488957588045145
            }
          }
          Overrides {
            Name: "cs:Leaderboard"
            ObjectReference {
              SubObjectId: 16188348558732333763
            }
          }
          Overrides {
            Name: "cs:Entries"
            ObjectReference {
              SubObjectId: 6572819372182273447
            }
          }
          Overrides {
            Name: "cs:Title"
            ObjectReference {
              SubObjectId: 8016590877233957082
            }
          }
          Overrides {
            Name: "cs:UpdateTimer"
            ObjectReference {
              SubObjectId: 727652041633750989
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
            Id: 2287706350968799728
          }
        }
      }
      Objects {
        Id: 10882944944214396970
        Name: "Screen"
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
        ParentId: 4544488942836156781
        ChildIds: 10509929409926709701
        ChildIds: 6572819372182273447
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
        Id: 10509929409926709701
        Name: "Header"
        Transform {
          Location {
            X: -5.01001
            Z: 165
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10882944944214396970
        ChildIds: 8016590877233957082
        ChildIds: 727652041633750989
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
        Id: 8016590877233957082
        Name: "Title"
        Transform {
          Location {
            Z: 7
          }
          Rotation {
            Yaw: 179.999954
          }
          Scale {
            X: 1
            Y: 1.25
            Z: 1.25
          }
        }
        ParentId: 10509929409926709701
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Text {
          Text: "LEADERBOARD NAME"
          FontAsset {
          }
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
          HorizontalSize: 1
          VerticalSize: 1
          HorizontalAlignment {
            Value: "mc:ecoretexthorizontalalign:center"
          }
          VerticalAlignment {
            Value: "mc:ecoretextverticalalign:center"
          }
        }
      }
      Objects {
        Id: 727652041633750989
        Name: "UpdateTimer"
        Transform {
          Location {
            Z: -12.5
          }
          Rotation {
            Yaw: 179.999954
          }
          Scale {
            X: 1
            Y: 0.675
            Z: 0.7
          }
        }
        ParentId: 10509929409926709701
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Text {
          Text: "UPDATES IN 30 SECONDS"
          FontAsset {
          }
          Color {
            R: 0.3
            G: 0.3
            B: 0.3
            A: 1
          }
          HorizontalSize: 1
          VerticalSize: 1
          HorizontalAlignment {
            Value: "mc:ecoretexthorizontalalign:center"
          }
          VerticalAlignment {
            Value: "mc:ecoretextverticalalign:center"
          }
        }
      }
      Objects {
        Id: 6572819372182273447
        Name: "Entries"
        Transform {
          Location {
            X: -5.01001
            Z: 100
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10882944944214396970
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
    }
    Assets {
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    Assets {
      Id: 13948944933562880915
      Name: "Wood Planks Dark"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_planks_dark_001_uv"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "Leaderboards is a component that simplifies the process of adding a global leaderboard to a game. It is as simple as dragging and dropping a leaderboard template into the hierarchy and adjusting to meet your needs.\r\n\r\nBoth World and UI versions supported.\r\n\r\nCreated by @NicholasForeman of Team META\r\n\r\nMake sure to read the Leaderboards_README file for setup and configuration instructions\r\n\r\nMessage @Buckmonster or @NicholasForeman in Discord with feedback or feature requests - https://discord.com/invite/core-creators\r\n\r\nThanks to:\r\n\342\200\242 @standardcombo for review and documentation template\r\n\342\200\242 @Aggripina for UI thumbnail design\r\n\r\nv1.0.2\r\n\342\200\242 Fix minor bug with UpdateOnRoundEnd\r\n\r\nv1.0.1\r\n\342\200\242 Improved Documentation\r\n\342\200\242 Fixed a bug with damage event\r\n\r\nv1.0.2\r\n\342\200\242 Improved Readme"
  }
  SerializationVersion: 81
  DirectlyPublished: true
}
