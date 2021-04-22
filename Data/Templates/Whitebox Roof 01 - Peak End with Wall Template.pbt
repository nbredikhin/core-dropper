Assets {
  Id: 9389569644759804408
  Name: "Whitebox Roof 01 - Peak End with Wall Template"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 16452363261065329241
      Objects {
        Id: 16452363261065329241
        Name: "Whitebox Roof 01 - Peak End with Wall Template"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9420107268296510787
        ChildIds: 11611312229008407979
        ChildIds: 8164543287816553288
        ChildIds: 12715908708408842942
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
        Id: 11611312229008407979
        Name: "Whitebox Wall 01 Triangle Top"
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
        ParentId: 16452363261065329241
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
            Id: 14167894031540219039
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
        Id: 8164543287816553288
        Name: "Whitebox Roof 01 Peak"
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
        ParentId: 16452363261065329241
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
            Id: 14384953621685186280
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
        Id: 12715908708408842942
        Name: "Whitebox Roof 01 Peak End"
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
        ParentId: 16452363261065329241
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
            Id: 4972746879333045792
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
    }
    Assets {
      Id: 14167894031540219039
      Name: "Whitebox Wall 01 Triangle Top"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_gen_whitebox_wall_001_triTop"
      }
    }
    Assets {
      Id: 14384953621685186280
      Name: "Whitebox Roof 01 Peak"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_gen_whitebox_roof_001_peak"
      }
    }
    Assets {
      Id: 4972746879333045792
      Name: "Whitebox Roof 01 Peak End"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_gen_whitebox_roof_001_peakEnd"
      }
    }
    PrimaryAssetId {
      AssetType: "TemplateAssetRef"
      AssetId: "Whitebox_Roof_01_-_Peak_End_with_Wall_Template"
    }
  }
  SerializationVersion: 81
}
