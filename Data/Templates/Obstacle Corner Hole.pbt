Assets {
  Id: 2530995874219322800
  Name: "Obstacle Corner Hole"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1053469270666305245
      Objects {
        Id: 1053469270666305245
        Name: "Obstacle Corner Hole"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 8245841877090260416
        ChildIds: 18408380956810993263
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 8245841877090260416
        Name: "Fantasy Castle Wall 01 - Cellar"
        Transform {
          Location {
            X: -921
            Y: 920
            Z: 0.000244140625
          }
          Rotation {
            Roll: -90
          }
          Scale {
            X: 2.3
            Y: 1
            Z: 3.100003
          }
        }
        ParentId: 1053469270666305245
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_TrimOuter:utile"
            Float: 2.15318894
          }
          Overrides {
            Name: "ma:Shared_TrimOuter:vtile"
            Float: 1.94515288
          }
          Overrides {
            Name: "ma:Shared_TrimInner:utile"
            Float: 1.6282872
          }
          Overrides {
            Name: "ma:Building_LowerTrimInner:utile"
            Float: 1.89636946
          }
          Overrides {
            Name: "ma:Building_WallInner:utile"
            Float: 1.36303949
          }
          Overrides {
            Name: "ma:Building_WallOuter:utile"
            Float: 2.84729
          }
          Overrides {
            Name: "ma:Building_WallOuter:vtile"
            Float: 1.71314645
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
        CoreMesh {
          MeshAsset {
            Id: 10107062091948111687
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
          }
        }
      }
      Objects {
        Id: 18408380956810993263
        Name: "Sci-fi Base Girder 8m 03"
        Transform {
          Location {
            X: -900
            Y: 919
            Z: 622
          }
          Rotation {
          }
          Scale {
            X: 2.3
            Y: 2.3
            Z: 1
          }
        }
        ParentId: 1053469270666305245
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
        CoreMesh {
          MeshAsset {
            Id: 11642748949632175552
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
          }
        }
      }
    }
    Assets {
      Id: 10107062091948111687
      Name: "Fantasy Castle Wall 01 - Cellar"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_fan_cas_wall_001_grate_01"
      }
    }
    Assets {
      Id: 11642748949632175552
      Name: "Sci-fi Base Girder 8m 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_scf_base_girder_003_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 81
}
