Assets {
  Id: 14218508230559263192
  Name: "Custom Emissive Glow Transparent"
  PlatformAssetType: 13
  SerializationVersion: 81
  CustomMaterialAsset {
    BaseMaterialId: 3702191406046426907
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.88
          G: 0.751788139
          A: 1
        }
      }
      Overrides {
        Name: "emissive_boost"
        Float: 5
      }
    }
    Assets {
      Id: 3702191406046426907
      Name: "Emissive Glow Transparent"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_emissive_001"
      }
    }
  }
}
