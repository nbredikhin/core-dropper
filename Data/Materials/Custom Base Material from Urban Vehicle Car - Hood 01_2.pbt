Assets {
  Id: 10391265667692193031
  Name: "Custom Base Material from Urban Vehicle Car - Hood 01_2"
  PlatformAssetType: 13
  SerializationVersion: 81
  CustomMaterialAsset {
    BaseMaterialId: 11241730541860789466
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.88
          G: 0.594437063
          A: 1
        }
      }
      Overrides {
        Name: "fresnel_color"
        Color {
          R: 0.64
          G: 0.0762913898
          A: 1
        }
      }
      Overrides {
        Name: "flake_intensity"
        Float: 0
      }
      Overrides {
        Name: "metallic"
        Float: 0
      }
      Overrides {
        Name: "fresnel_amount"
        Float: 0.394086719
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 1
      }
      Overrides {
        Name: "fresnel_invert"
        Bool: false
      }
      Overrides {
        Name: "fresnel"
        Float: 5
      }
    }
    Assets {
      Id: 11241730541860789466
      Name: "Urban Car Base Paint 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_veh_urb_car_kit_atlas_02_base_001_ref"
      }
    }
  }
}
