Assets {
  Id: 12154479235252579358
  Name: "Beach Ball"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12112011824181923841
      Objects {
        Id: 12112011824181923841
        Name: "Physics Sphere"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3027145953240950098
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        PhysicsObject {
          PhysicsShape {
            Value: "mc:ephysicsshape:sphere"
          }
          Settings {
            IsEnabled: true
            Mass: 100
          }
          Radius: 50
          Length: 200
        }
      }
      Objects {
        Id: 3027145953240950098
        Name: "ClientContext"
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
        ParentId: 12112011824181923841
        ChildIds: 7728098592812845873
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
        NetworkContext {
        }
      }
      Objects {
        Id: 7728098592812845873
        Name: "PhysicsSphereMesh"
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
        ParentId: 3027145953240950098
        ChildIds: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
            Id: 7052271310929477723
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
        Id: 8588788694812277685
        Name: "beach ball"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.7
            Y: 0.7
            Z: 0.7
          }
        }
        ParentId: 7728098592812845873
        ChildIds: 1583892478396656806
        ChildIds: 7688295822347099318
        ChildIds: 3780820367808293942
        ChildIds: 11152239929315980043
        ChildIds: 4071336375490818731
        ChildIds: 13211612390875055097
        ChildIds: 11498478186138025448
        ChildIds: 15207441284337829939
        ChildIds: 1195465462505950562
        ChildIds: 4717356578348917952
        ChildIds: 7215171471204111682
        ChildIds: 12127080357324705990
        ChildIds: 6367501503533163871
        ChildIds: 16247001640935808291
        ChildIds: 11807106843191335579
        ChildIds: 17823970896981551208
        ChildIds: 7610071065548594453
        ChildIds: 18424535183632700707
        ChildIds: 11600512277455312294
        ChildIds: 8548789988462684234
        ChildIds: 5607900300958077313
        ChildIds: 4448720943633317589
        ChildIds: 11282232818229082419
        ChildIds: 11477148511782903229
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 1583892478396656806
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.967019796
              G: 0.98
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
            Id: 14977030182281483461
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
        Id: 7688295822347099318
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: -179.999954
            Roll: -179.999954
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.967019796
              G: 0.98
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
            Id: 14977030182281483461
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
        Id: 3780820367808293942
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: -30.0000057
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
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
            Id: 14977030182281483461
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
        Id: 11152239929315980043
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: 150.000015
            Roll: -179.999954
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
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
            Id: 14977030182281483461
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
        Id: 4071336375490818731
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: -59.9999924
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.396423697
              B: 0.820000052
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
            Id: 14977030182281483461
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
        Id: 13211612390875055097
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: 120.000008
            Roll: -179.999954
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.396423697
              B: 0.820000052
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
            Id: 14977030182281483461
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
        Id: 11498478186138025448
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: -89.9999924
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
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
            Id: 14977030182281483461
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
        Id: 15207441284337829939
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: 89.9999924
            Roll: -179.999954
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
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
            Id: 14977030182281483461
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
        Id: 1195465462505950562
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: -120.000008
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.74
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
            Id: 14977030182281483461
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
        Id: 4717356578348917952
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: 59.9999847
            Roll: -179.999954
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.74
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
            Id: 14977030182281483461
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
        Id: 7215171471204111682
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: -149.999969
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
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
            Id: 14977030182281483461
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
        Id: 12127080357324705990
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: 30.0000057
            Roll: -179.999954
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
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
            Id: 14977030182281483461
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
        Id: 6367501503533163871
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: 30.0000095
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
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
            Id: 14977030182281483461
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
        Id: 16247001640935808291
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: -149.999878
            Roll: -179.999954
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
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
            Id: 14977030182281483461
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
        Id: 11807106843191335579
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: 4.09811182e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.967019796
              G: 0.98
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
            Id: 14977030182281483461
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
        Id: 17823970896981551208
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: 149.999924
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
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
            Id: 14977030182281483461
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
        Id: 7610071065548594453
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: -29.9999676
            Roll: -179.999954
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
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
            Id: 14977030182281483461
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
        Id: 18424535183632700707
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: 120.000053
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.396423697
              B: 0.820000052
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
            Id: 14977030182281483461
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
        Id: 11600512277455312294
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: -59.9999313
            Roll: -179.999954
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              G: 0.396423697
              B: 0.820000052
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
            Id: 14977030182281483461
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
        Id: 8548789988462684234
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: 89.9999466
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
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
            Id: 14977030182281483461
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
        Id: 5607900300958077313
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: -89.9999313
            Roll: -179.999954
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
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
            Id: 14977030182281483461
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
        Id: 4448720943633317589
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: 59.999958
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.74
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
            Id: 14977030182281483461
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
        Id: 11282232818229082419
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: -119.999969
            Roll: -179.999954
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.74
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
            Id: 14977030182281483461
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
        Id: 11477148511782903229
        Name: "Sphere - Half Slice"
        Transform {
          Location {
            X: 0.984130859
            Y: 0.0220947266
            Z: 2.1870575
          }
          Rotation {
            Yaw: -179.999939
          }
          Scale {
            X: 3.20000052
            Y: 1.5
            Z: 1.50570178
          }
        }
        ParentId: 8588788694812277685
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 103204866163876130
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.967019796
              G: 0.98
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
            Id: 14977030182281483461
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
      Id: 7052271310929477723
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 14977030182281483461
      Name: "Sphere - Half Slice"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hemisphere_wedge_001"
      }
    }
    Assets {
      Id: 103204866163876130
      Name: "Plastic Shiny"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "plastic_shiny_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 81
}
