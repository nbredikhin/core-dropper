Assets {
  Id: 319911599756739184
  Name: "Custom Secondary Lights from Urban Vehicle Car - Light Roof 01"
  PlatformAssetType: 13
  SerializationVersion: 81
  CustomMaterialAsset {
    BaseMaterialId: 15108642471927450466
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          G: 0.0241058897
          B: 0.279999971
          A: 1
        }
      }
      Overrides {
        Name: "emissive_boost"
        Float: 38.336937
      }
    }
    Assets {
      Id: 15108642471927450466
      Name: "Urban Car Lights 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_veh_urb_car_trk_acc_001_lights2_01_ref"
      }
    }
  }
}
