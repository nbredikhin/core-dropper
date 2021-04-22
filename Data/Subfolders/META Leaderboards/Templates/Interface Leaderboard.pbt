Assets {
  Id: 4582681370038365379
  Name: "Interface Leaderboard"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10264468997869309884
      Objects {
        Id: 10264468997869309884
        Name: "Interface Leaderboard"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5370394452602162863
        ChildIds: 9671586197224433234
        ChildIds: 11149398009336882326
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
            Bool: false
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
            Name: "cs:ToggleBinding"
            String: "ability_extra_40"
          }
          Overrides {
            Name: "cs:ToggleEvent"
            String: ""
          }
          Overrides {
            Name: "cs:ForceOnEvent"
            String: ""
          }
          Overrides {
            Name: "cs:ForceOffEvent"
            String: ""
          }
          Overrides {
            Name: "cs:EaseToggle"
            Bool: true
          }
          Overrides {
            Name: "cs:EaseBeginning"
            String: "UP"
          }
          Overrides {
            Name: "cs:EasingDuration"
            Float: 0.5
          }
          Overrides {
            Name: "cs:EasingEquationIn"
            String: "LINEAR"
          }
          Overrides {
            Name: "cs:EasingDirectionIn"
            String: "IN"
          }
          Overrides {
            Name: "cs:EasingEquationOut"
            String: "LINEAR"
          }
          Overrides {
            Name: "cs:EasingDirectionOut"
            String: "OUT"
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
            String: "TOTAL, ROUND"
          }
          Overrides {
            Name: "cs:EaseBeginning:tooltip"
            String: "The location that the leaderboard should ease from and to; does not apply if EaseToggle is false | UP, DOWN, LEFT, RIGHT"
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
          Overrides {
            Name: "cs:ToggleBinding:tooltip"
            String: "The binding that someone presses to show/hide the leaderboard"
          }
          Overrides {
            Name: "cs:ToggleEvent:tooltip"
            String: "The event that will toggle the visibility of leaderboard"
          }
          Overrides {
            Name: "cs:EaseToggle:tooltip"
            String: "Determines if the leaderboard should just pop in/out of place, or ease/tween/interpolate"
          }
          Overrides {
            Name: "cs:EasingDuration:tooltip"
            String: "The amount of time for easing; does not apply if EaseToggle is false"
          }
          Overrides {
            Name: "cs:EasingEquationIn:tooltip"
            String: "The easing equation that will be used to ease in; does not apply if EaseToggle is false | LINEAR, QUADRATIC, CUBIC, QUARTIC, QUINTIC, SINE, EXPONENTIAL, CIRCULAR, ELASTIC, BACK, BOUNCE"
          }
          Overrides {
            Name: "cs:EasingDirectionIn:tooltip"
            String: "The easing direction that will be used to ease in; does not apply if EaseToggle is false | IN, OUT, INOUT"
          }
          Overrides {
            Name: "cs:EasingEquationOut:tooltip"
            String: "The easing equation that will be used to ease out; does not apply if EaseToggle is false | LINEAR, QUADRATIC, CUBIC, QUARTIC, QUINTIC, SINE, EXPONENTIAL, CIRCULAR, ELASTIC, BACK, BOUNCE"
          }
          Overrides {
            Name: "cs:EasingDirectionOut:tooltip"
            String: "The easing direction that will be used to ease out; does not apply if EaseToggle is false | IN, OUT, INOUT"
          }
          Overrides {
            Name: "cs:ForceOnEvent:tooltip"
            String: "The event that will force the leaderboard to become visible"
          }
          Overrides {
            Name: "cs:ForceOffEvent:tooltip"
            String: "The event that will force the leaderboard to become invisible"
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
        Id: 9671586197224433234
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
        ParentId: 10264468997869309884
        UnregisteredParameters {
          Overrides {
            Name: "cs:Leaderboard"
            ObjectReference {
              SubObjectId: 10264468997869309884
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
            Id: 9335038526990919824
          }
        }
      }
      Objects {
        Id: 11149398009336882326
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
        ParentId: 10264468997869309884
        ChildIds: 10837381422878584308
        ChildIds: 4989349373807026645
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
        Id: 10837381422878584308
        Name: "Leaderboard_Interface"
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
        ParentId: 11149398009336882326
        UnregisteredParameters {
          Overrides {
            Name: "cs:EntryTemplate"
            AssetReference {
              Id: 3969867475699684003
            }
          }
          Overrides {
            Name: "cs:EaseUI"
            AssetReference {
              Id: 11298103333097680347
            }
          }
          Overrides {
            Name: "cs:Leaderboard"
            ObjectReference {
              SubObjectId: 10264468997869309884
            }
          }
          Overrides {
            Name: "cs:LeaderboardPanel"
            ObjectReference {
              SubObjectId: 10394210215295692120
            }
          }
          Overrides {
            Name: "cs:Entries"
            ObjectReference {
              SubObjectId: 1398621866158387801
            }
          }
          Overrides {
            Name: "cs:Title"
            ObjectReference {
              SubObjectId: 5042757468361705359
            }
          }
          Overrides {
            Name: "cs:UpdateTimer"
            ObjectReference {
              SubObjectId: 18146263984457815365
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
            Id: 5278003271638486331
          }
        }
      }
      Objects {
        Id: 4989349373807026645
        Name: "Container"
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
        ParentId: 11149398009336882326
        ChildIds: 10394210215295692120
        ChildIds: 5021583291435317856
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Canvas {
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 10394210215295692120
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
        ParentId: 4989349373807026645
        ChildIds: 10176019480391693115
        ChildIds: 14308924058076213231
        ChildIds: 1398621866158387801
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 800
          Height: 600
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 10176019480391693115
        Name: "Background"
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
        ParentId: 10394210215295692120
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 800
          Height: 600
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
            }
            Color {
              A: 0.5
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 14308924058076213231
        Name: "Header"
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
        ParentId: 10394210215295692120
        ChildIds: 14940369831728328742
        ChildIds: 5042757468361705359
        ChildIds: 18146263984457815365
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 140
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Panel {
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 14940369831728328742
        Name: "Background"
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
        ParentId: 14308924058076213231
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
            }
            Color {
              A: 0.5
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 5042757468361705359
        Name: "Title"
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
        ParentId: 14308924058076213231
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -60
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "LEADERBOARD NAME"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 50
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 18146263984457815365
        Name: "UpdateTimer"
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
        ParentId: 14308924058076213231
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -60
          Height: 40
          UIY: -15
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          Text {
            Label: "UPDATES IN 30 SECONDS"
            Color {
              R: 0.300543845
              G: 0.300543845
              B: 0.300543845
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 1398621866158387801
        Name: "Entries"
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
        ParentId: 10394210215295692120
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -20
          Height: -160
          UIY: -10
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          ScrollPanel {
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 5021583291435317856
        Name: "Display"
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
        ParentId: 4989349373807026645
        ChildIds: 7589777270212382273
        ChildIds: 10741832892478674102
        ChildIds: 14529078204911455349
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 140
          Height: 180
          UIX: 30
          UIY: -30
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 7589777270212382273
        Name: "Icon"
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
        ParentId: 5021583291435317856
        ChildIds: 11583545159706521533
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 100
          Height: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
            }
            Color {
              A: 0.5
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 11583545159706521533
        Name: "Leaderboard Icon"
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
        ParentId: 7589777270212382273
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: -20
          Height: -15
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 13164244895658121341
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 10741832892478674102
        Name: "Name"
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
        ParentId: 5021583291435317856
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 40
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Text {
            Label: "Global Deaths"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            ClipTextToSize: true
            Font {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topcenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 14529078204911455349
        Name: "Binding"
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
        ParentId: 5021583291435317856
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Height: 45
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Text {
            Label: "[X]"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
            Font {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomcenter"
              }
            }
          }
        }
      }
    }
    Assets {
      Id: 13164244895658121341
      Name: "Icon Leaderboard"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "Icon_Leaderboard"
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
