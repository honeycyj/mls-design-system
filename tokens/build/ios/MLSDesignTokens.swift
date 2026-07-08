import SwiftUI

public struct MLSColorToken {
  public let light: Color
  public let dark: Color
}

public enum MLSColors {
  public static let colorTextPrimary = MLSColorToken(light: Color(mlsToken: "#000000"), dark: Color(mlsToken: "#FFFFFF"))
  public static let colorTextSecondary = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.7)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.7)"))
  public static let colorTextTertiary = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.4)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.4)"))
  public static let colorTextDisabled = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.2)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.2)"))
  public static let colorTextBrand = MLSColorToken(light: Color(mlsToken: "#782CE8"), dark: Color(mlsToken: "#AA70FF"))
  public static let colorTextOnbrand = MLSColorToken(light: Color(mlsToken: "#FFFFFF"), dark: Color(mlsToken: "#FFFFFF"))
  public static let colorTextOnbrandSecondary = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.7)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.7)"))
  public static let colorTextOnbrandDisabled = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.2)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.2)"))
  public static let colorTextBrandMuted = MLSColorToken(light: Color(mlsToken: "#C094FF"), dark: Color(mlsToken: "#C094FF"))
  public static let colorTextSuccess = MLSColorToken(light: Color(mlsToken: "#85E0A3"), dark: Color(mlsToken: "#85E0A3"))
  public static let colorTextDanger = MLSColorToken(light: Color(mlsToken: "#F87171"), dark: Color(mlsToken: "#F87171"))
  public static let colorTextWarning = MLSColorToken(light: Color(mlsToken: "#F97316"), dark: Color(mlsToken: "#FFCD29"))
  public static let colorTextInfo = MLSColorToken(light: Color(mlsToken: "#0D99FF"), dark: Color(mlsToken: "#80CAFF"))
  public static let colorIconPrimary = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.9)"), dark: Color(mlsToken: "#FFFFFF"))
  public static let colorIconSecondary = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.7)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.7)"))
  public static let colorIconTertiary = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.4)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.4)"))
  public static let colorIconDisabled = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.2)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.2)"))
  public static let colorIconBrand = MLSColorToken(light: Color(mlsToken: "#9146FF"), dark: Color(mlsToken: "#AA70FF"))
  public static let colorIconOnbrand = MLSColorToken(light: Color(mlsToken: "#FFFFFF"), dark: Color(mlsToken: "#FFFFFF"))
  public static let colorIconOnbrandSecondary = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.7)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.7)"))
  public static let colorIconOnbrandDisabled = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.2)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.2)"))
  public static let colorIconSuccess = MLSColorToken(light: Color(mlsToken: "#14AE5C"), dark: Color(mlsToken: "#85E0A3"))
  public static let colorIconWarning = MLSColorToken(light: Color(mlsToken: "#F97316"), dark: Color(mlsToken: "#FFCD29"))
  public static let colorIconDanger = MLSColorToken(light: Color(mlsToken: "#EF4444"), dark: Color(mlsToken: "#F87171"))
  public static let colorIconInfo = MLSColorToken(light: Color(mlsToken: "#0D99FF"), dark: Color(mlsToken: "#80CAFF"))
  public static let colorBrand50 = MLSColorToken(light: Color(mlsToken: "#F0F0FF"), dark: Color(mlsToken: "#F0F0FF"))
  public static let colorBrand100 = MLSColorToken(light: Color(mlsToken: "#EAE4FA"), dark: Color(mlsToken: "#EAE4FA"))
  public static let colorBrand200 = MLSColorToken(light: Color(mlsToken: "#D7C9F7"), dark: Color(mlsToken: "#D7C9F7"))
  public static let colorBrand300 = MLSColorToken(light: Color(mlsToken: "#BEA3F7"), dark: Color(mlsToken: "#BEA3F7"))
  public static let colorBrand350 = MLSColorToken(light: Color(mlsToken: "#C094FF"), dark: Color(mlsToken: "#C094FF"))
  public static let colorBrand400 = MLSColorToken(light: Color(mlsToken: "#AA70FF"), dark: Color(mlsToken: "#AA70FF"))
  public static let colorBrand500 = MLSColorToken(light: Color(mlsToken: "#9146FF"), dark: Color(mlsToken: "#9146FF"))
  public static let colorBrand600 = MLSColorToken(light: Color(mlsToken: "#782CE8"), dark: Color(mlsToken: "#782CE8"))
  public static let colorBrand700 = MLSColorToken(light: Color(mlsToken: "#5C16C5"), dark: Color(mlsToken: "#5C16C5"))
  public static let colorBrand800 = MLSColorToken(light: Color(mlsToken: "#451193"), dark: Color(mlsToken: "#451193"))
  public static let colorBrand900 = MLSColorToken(light: Color(mlsToken: "#32126F"), dark: Color(mlsToken: "#32126F"))
  public static let colorBrand950 = MLSColorToken(light: Color(mlsToken: "#21124D"), dark: Color(mlsToken: "#21124D"))
  public static let colorBrandDefault = MLSColorToken(light: Color(mlsToken: "#9146FF"), dark: Color(mlsToken: "#9146FF"))
  public static let colorBrandTrans = MLSColorToken(light: Color(mlsToken: "#9146FF"), dark: Color(mlsToken: "#9146FF"))
  public static let colorBorderSubtle = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.05)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.05)"))
  public static let colorBorderDefault = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.1)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.1)"))
  public static let colorBorderStrong = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.15)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.15)"))
  public static let colorBorderHover = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.15)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.15)"))
  public static let colorBorderSelected = MLSColorToken(light: Color(mlsToken: "#9146FF"), dark: Color(mlsToken: "#AA70FF"))
  public static let colorBorderFocus = MLSColorToken(light: Color(mlsToken: "#AA70FF"), dark: Color(mlsToken: "#AA70FF"))
  public static let colorBorderDisabled = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.03)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.03)"))
  public static let colorBorderOnbrand = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.1)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.1)"))
  public static let colorBorderSuccess = MLSColorToken(light: Color(mlsToken: "#14AE5C"), dark: Color(mlsToken: "#14AE5C"))
  public static let colorBorderWarning = MLSColorToken(light: Color(mlsToken: "#F97316"), dark: Color(mlsToken: "#F97316"))
  public static let colorBorderDanger = MLSColorToken(light: Color(mlsToken: "#EF4444"), dark: Color(mlsToken: "#EF4444"))
  public static let colorBorderInfo = MLSColorToken(light: Color(mlsToken: "#0D99FF"), dark: Color(mlsToken: "#0D99FF"))
  public static let colorSurfaceCanvas = MLSColorToken(light: Color(mlsToken: "#ECECEF"), dark: Color(mlsToken: "#090909"))
  public static let colorSurfacePage = MLSColorToken(light: Color(mlsToken: "#FBFBFC"), dark: Color(mlsToken: "#161617"))
  public static let colorSurfaceBase = MLSColorToken(light: Color(mlsToken: "#FBFBFC"), dark: Color(mlsToken: "#161617"))
  public static let colorSurfacePanel = MLSColorToken(light: Color(mlsToken: "#F1F1F4"), dark: Color(mlsToken: "#1E1E20"))
  public static let colorSurfaceCard = MLSColorToken(light: Color(mlsToken: "#FFFFFF"), dark: Color(mlsToken: "#262628"))
  public static let colorSurfaceInput = MLSColorToken(light: Color(mlsToken: "#E4E4E8"), dark: Color(mlsToken: "#2F2F31"))
  public static let colorSurfaceFloating = MLSColorToken(light: Color(mlsToken: "#FFFFFF"), dark: Color(mlsToken: "#38383B"))
  public static let colorSurfacePopover = MLSColorToken(light: Color(mlsToken: "#DCDCE0"), dark: Color(mlsToken: "#38383B"))
  public static let colorSurfaceDialog = MLSColorToken(light: Color(mlsToken: "#D2D2D7"), dark: Color(mlsToken: "#444447"))
  public static let colorSurfaceToast = MLSColorToken(light: Color(mlsToken: "#D2D2D7"), dark: Color(mlsToken: "#38383B"))
  public static let colorSurfaceOverlay = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.4)"), dark: Color(mlsToken: "rgba(0, 0, 0, 0.7)"))
  public static let colorSurfaceTooltip = MLSColorToken(light: Color(mlsToken: "#222224"), dark: Color(mlsToken: "#222224"))
  public static let colorBgDefault = MLSColorToken(light: Color(mlsToken: "#FBFBFC"), dark: Color(mlsToken: "#000000"))
  public static let colorBgHover = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.05)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.05)"))
  public static let colorBgActive = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.1)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.1)"))
  public static let colorBgSelected = MLSColorToken(light: Color(mlsToken: "#EAE4FA"), dark: Color(mlsToken: "#5C16C5"))
  public static let colorBgOverlay = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.4)"), dark: Color(mlsToken: "rgba(0, 0, 0, 0.4)"))
  public static let colorBgScrim = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.7)"), dark: Color(mlsToken: "rgba(0, 0, 0, 0.7)"))
  public static let colorBgDisabled = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.03)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.03)"))
  public static let colorBgBrandDefault = MLSColorToken(light: Color(mlsToken: "#9146FF"), dark: Color(mlsToken: "#9146FF"))
  public static let colorBgBrandHover = MLSColorToken(light: Color(mlsToken: "#782CE8"), dark: Color(mlsToken: "#782CE8"))
  public static let colorBgBrandPressed = MLSColorToken(light: Color(mlsToken: "#9146FF"), dark: Color(mlsToken: "#9146FF"))
  public static let colorBgBrandSecondary = MLSColorToken(light: Color(mlsToken: "#5C16C5"), dark: Color(mlsToken: "#5C16C5"))
  public static let colorBgBrandTertiary = MLSColorToken(light: Color(mlsToken: "#D7C9F7"), dark: Color(mlsToken: "#5C16C5"))
  public static let colorBgBrandSelected = MLSColorToken(light: Color(mlsToken: "#EAE4FA"), dark: Color(mlsToken: "#5C16C5"))
  public static let colorBgSuccessDefault = MLSColorToken(light: Color(mlsToken: "#14AE5C"), dark: Color(mlsToken: "#14AE5C"))
  public static let colorBgSuccessHover = MLSColorToken(light: Color(mlsToken: "#009951"), dark: Color(mlsToken: "#009951"))
  public static let colorBgSuccessPressed = MLSColorToken(light: Color(mlsToken: "#009951"), dark: Color(mlsToken: "#009951"))
  public static let colorBgSuccessSecondary = MLSColorToken(light: Color(mlsToken: "#008043"), dark: Color(mlsToken: "#008043"))
  public static let colorBgSuccessTertiary = MLSColorToken(light: Color(mlsToken: "#CFF7D3"), dark: Color(mlsToken: "#024626"))
  public static let colorBgWarningDefault = MLSColorToken(light: Color(mlsToken: "#FFCD29"), dark: Color(mlsToken: "#FFCD29"))
  public static let colorBgWarningHover = MLSColorToken(light: Color(mlsToken: "#FFCD29"), dark: Color(mlsToken: "#FFCD29"))
  public static let colorBgWarningPressed = MLSColorToken(light: Color(mlsToken: "#FFC21A"), dark: Color(mlsToken: "#FFC21A"))
  public static let colorBgWarningSecondary = MLSColorToken(light: Color(mlsToken: "#FAB815"), dark: Color(mlsToken: "#FAB815"))
  public static let colorBgWarningTertiary = MLSColorToken(light: Color(mlsToken: "#FFF1C2"), dark: Color(mlsToken: "#DD940E"))
  public static let colorBgDangerDefault = MLSColorToken(light: Color(mlsToken: "#EF4444"), dark: Color(mlsToken: "#EF4444"))
  public static let colorBgDangerHover = MLSColorToken(light: Color(mlsToken: "#DC2626"), dark: Color(mlsToken: "#DC2626"))
  public static let colorBgDangerPressed = MLSColorToken(light: Color(mlsToken: "#DC2626"), dark: Color(mlsToken: "#DC2626"))
  public static let colorBgDangerSecondary = MLSColorToken(light: Color(mlsToken: "#B91C1C"), dark: Color(mlsToken: "#B91C1C"))
  public static let colorBgDangerTertiary = MLSColorToken(light: Color(mlsToken: "#FECACA"), dark: Color(mlsToken: "#7F1D1D"))
  public static let colorBgInfoDefault = MLSColorToken(light: Color(mlsToken: "#0D99FF"), dark: Color(mlsToken: "#0D99FF"))
  public static let colorBgInfoHover = MLSColorToken(light: Color(mlsToken: "#007BE5"), dark: Color(mlsToken: "#007BE5"))
  public static let colorBgInfoPressed = MLSColorToken(light: Color(mlsToken: "#0768CF"), dark: Color(mlsToken: "#0768CF"))
  public static let colorBgInfoTertiary = MLSColorToken(light: Color(mlsToken: "#E5F4FF"), dark: Color(mlsToken: "#093077"))
  public static let colorWhite3 = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.03)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.03)"))
  public static let colorWhite5 = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.05)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.05)"))
  public static let colorWhite7 = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.07)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.07)"))
  public static let colorWhite10 = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.1)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.1)"))
  public static let colorWhite15 = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.15)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.15)"))
  public static let colorWhite20 = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.2)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.2)"))
  public static let colorWhite40 = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.4)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.4)"))
  public static let colorWhite70 = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.7)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.7)"))
  public static let colorWhite80 = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.8)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.8)"))
  public static let colorWhite85 = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.85)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.85)"))
  public static let colorWhite90 = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.9)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.9)"))
  public static let colorWhite95 = MLSColorToken(light: Color(mlsToken: "rgba(255, 255, 255, 0.95)"), dark: Color(mlsToken: "rgba(255, 255, 255, 0.95)"))
  public static let colorWhite1000 = MLSColorToken(light: Color(mlsToken: "#FFFFFF"), dark: Color(mlsToken: "#FFFFFF"))
  public static let colorBlack3 = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.03)"), dark: Color(mlsToken: "rgba(0, 0, 0, 0.03)"))
  public static let colorBlack5 = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.05)"), dark: Color(mlsToken: "rgba(0, 0, 0, 0.05)"))
  public static let colorBlack7 = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.07)"), dark: Color(mlsToken: "rgba(0, 0, 0, 0.07)"))
  public static let colorBlack10 = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.1)"), dark: Color(mlsToken: "rgba(0, 0, 0, 0.1)"))
  public static let colorBlack15 = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.15)"), dark: Color(mlsToken: "rgba(0, 0, 0, 0.15)"))
  public static let colorBlack20 = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.2)"), dark: Color(mlsToken: "rgba(0, 0, 0, 0.2)"))
  public static let colorBlack25 = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.25)"), dark: Color(mlsToken: "rgba(0, 0, 0, 0.25)"))
  public static let colorBlack40 = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.4)"), dark: Color(mlsToken: "rgba(0, 0, 0, 0.4)"))
  public static let colorBlack70 = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.7)"), dark: Color(mlsToken: "rgba(0, 0, 0, 0.7)"))
  public static let colorBlack80 = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.8)"), dark: Color(mlsToken: "rgba(0, 0, 0, 0.8)"))
  public static let colorBlack85 = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.85)"), dark: Color(mlsToken: "rgba(0, 0, 0, 0.85)"))
  public static let colorBlack90 = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.9)"), dark: Color(mlsToken: "rgba(0, 0, 0, 0.9)"))
  public static let colorBlack95 = MLSColorToken(light: Color(mlsToken: "rgba(0, 0, 0, 0.95)"), dark: Color(mlsToken: "rgba(0, 0, 0, 0.95)"))
  public static let colorBlack1000 = MLSColorToken(light: Color(mlsToken: "#000000"), dark: Color(mlsToken: "#000000"))
  public static let colorNature0 = MLSColorToken(light: Color(mlsToken: "#FFFFFF"), dark: Color(mlsToken: "#FFFFFF"))
  public static let colorNature25 = MLSColorToken(light: Color(mlsToken: "#FBFBFC"), dark: Color(mlsToken: "#FBFBFC"))
  public static let colorNature50 = MLSColorToken(light: Color(mlsToken: "#F7F7F9"), dark: Color(mlsToken: "#F7F7F9"))
  public static let colorNature75 = MLSColorToken(light: Color(mlsToken: "#F1F1F4"), dark: Color(mlsToken: "#F1F1F4"))
  public static let colorNature100 = MLSColorToken(light: Color(mlsToken: "#ECECEF"), dark: Color(mlsToken: "#ECECEF"))
  public static let colorNature150 = MLSColorToken(light: Color(mlsToken: "#E4E4E8"), dark: Color(mlsToken: "#E4E4E8"))
  public static let colorNature200 = MLSColorToken(light: Color(mlsToken: "#DCDCE0"), dark: Color(mlsToken: "#DCDCE0"))
  public static let colorNature250 = MLSColorToken(light: Color(mlsToken: "#D2D2D7"), dark: Color(mlsToken: "#D2D2D7"))
  public static let colorNature300 = MLSColorToken(light: Color(mlsToken: "#C3C3C8"), dark: Color(mlsToken: "#C3C3C8"))
  public static let colorNature350 = MLSColorToken(light: Color(mlsToken: "#B4B4BA"), dark: Color(mlsToken: "#B4B4BA"))
  public static let colorNature400 = MLSColorToken(light: Color(mlsToken: "#A0A0A6"), dark: Color(mlsToken: "#A0A0A6"))
  public static let colorNature500 = MLSColorToken(light: Color(mlsToken: "#7F7F86"), dark: Color(mlsToken: "#7F7F86"))
  public static let colorNature600 = MLSColorToken(light: Color(mlsToken: "#5F5F66"), dark: Color(mlsToken: "#5F5F66"))
  public static let colorNature700 = MLSColorToken(light: Color(mlsToken: "#444447"), dark: Color(mlsToken: "#444447"))
  public static let colorNature750 = MLSColorToken(light: Color(mlsToken: "#38383B"), dark: Color(mlsToken: "#38383B"))
  public static let colorNature800 = MLSColorToken(light: Color(mlsToken: "#2F2F31"), dark: Color(mlsToken: "#2F2F31"))
  public static let colorNature850 = MLSColorToken(light: Color(mlsToken: "#262628"), dark: Color(mlsToken: "#262628"))
  public static let colorNature875 = MLSColorToken(light: Color(mlsToken: "#222224"), dark: Color(mlsToken: "#222224"))
  public static let colorNature900 = MLSColorToken(light: Color(mlsToken: "#1E1E20"), dark: Color(mlsToken: "#1E1E20"))
  public static let colorNature925 = MLSColorToken(light: Color(mlsToken: "#161617"), dark: Color(mlsToken: "#161617"))
  public static let colorNature950 = MLSColorToken(light: Color(mlsToken: "#090909"), dark: Color(mlsToken: "#090909"))
  public static let colorNature1000 = MLSColorToken(light: Color(mlsToken: "#000000"), dark: Color(mlsToken: "#000000"))
  public static let colorRed50 = MLSColorToken(light: Color(mlsToken: "#FEF2F2"), dark: Color(mlsToken: "#FEF2F2"))
  public static let colorRed100 = MLSColorToken(light: Color(mlsToken: "#FEE2E2"), dark: Color(mlsToken: "#FEE2E2"))
  public static let colorRed200 = MLSColorToken(light: Color(mlsToken: "#FECACA"), dark: Color(mlsToken: "#FECACA"))
  public static let colorRed300 = MLSColorToken(light: Color(mlsToken: "#FCA5A5"), dark: Color(mlsToken: "#FCA5A5"))
  public static let colorRed400 = MLSColorToken(light: Color(mlsToken: "#F87171"), dark: Color(mlsToken: "#F87171"))
  public static let colorRed500 = MLSColorToken(light: Color(mlsToken: "#EF4444"), dark: Color(mlsToken: "#EF4444"))
  public static let colorRed600 = MLSColorToken(light: Color(mlsToken: "#DC2626"), dark: Color(mlsToken: "#DC2626"))
  public static let colorRed700 = MLSColorToken(light: Color(mlsToken: "#B91C1C"), dark: Color(mlsToken: "#B91C1C"))
  public static let colorRed800 = MLSColorToken(light: Color(mlsToken: "#991B1B"), dark: Color(mlsToken: "#991B1B"))
  public static let colorRed900 = MLSColorToken(light: Color(mlsToken: "#7F1D1D"), dark: Color(mlsToken: "#7F1D1D"))
  public static let colorRed950 = MLSColorToken(light: Color(mlsToken: "#450A0A"), dark: Color(mlsToken: "#450A0A"))
  public static let colorOrange50 = MLSColorToken(light: Color(mlsToken: "#FFF7ED"), dark: Color(mlsToken: "#FFF7ED"))
  public static let colorOrange100 = MLSColorToken(light: Color(mlsToken: "#FFEDD5"), dark: Color(mlsToken: "#FFEDD5"))
  public static let colorOrange200 = MLSColorToken(light: Color(mlsToken: "#FED7AA"), dark: Color(mlsToken: "#FED7AA"))
  public static let colorOrange300 = MLSColorToken(light: Color(mlsToken: "#FDBA74"), dark: Color(mlsToken: "#FDBA74"))
  public static let colorOrange400 = MLSColorToken(light: Color(mlsToken: "#FB923C"), dark: Color(mlsToken: "#FB923C"))
  public static let colorOrange500 = MLSColorToken(light: Color(mlsToken: "#F97316"), dark: Color(mlsToken: "#F97316"))
  public static let colorOrange600 = MLSColorToken(light: Color(mlsToken: "#EA580C"), dark: Color(mlsToken: "#EA580C"))
  public static let colorOrange700 = MLSColorToken(light: Color(mlsToken: "#C2410C"), dark: Color(mlsToken: "#C2410C"))
  public static let colorOrange800 = MLSColorToken(light: Color(mlsToken: "#9A3412"), dark: Color(mlsToken: "#9A3412"))
  public static let colorOrange900 = MLSColorToken(light: Color(mlsToken: "#7C2D12"), dark: Color(mlsToken: "#7C2D12"))
  public static let colorOrange950 = MLSColorToken(light: Color(mlsToken: "#431407"), dark: Color(mlsToken: "#431407"))
  public static let colorYellow100 = MLSColorToken(light: Color(mlsToken: "#FFFBEB"), dark: Color(mlsToken: "#FFFBEB"))
  public static let colorYellow200 = MLSColorToken(light: Color(mlsToken: "#FFF1C2"), dark: Color(mlsToken: "#FFF1C2"))
  public static let colorYellow300 = MLSColorToken(light: Color(mlsToken: "#FFE8A3"), dark: Color(mlsToken: "#FFE8A3"))
  public static let colorYellow400 = MLSColorToken(light: Color(mlsToken: "#FFD966"), dark: Color(mlsToken: "#FFD966"))
  public static let colorYellow500 = MLSColorToken(light: Color(mlsToken: "#FFCD29"), dark: Color(mlsToken: "#FFCD29"))
  public static let colorYellow600 = MLSColorToken(light: Color(mlsToken: "#FFC21A"), dark: Color(mlsToken: "#FFC21A"))
  public static let colorYellow700 = MLSColorToken(light: Color(mlsToken: "#FAB815"), dark: Color(mlsToken: "#FAB815"))
  public static let colorYellow800 = MLSColorToken(light: Color(mlsToken: "#EBA611"), dark: Color(mlsToken: "#EBA611"))
  public static let colorYellow900 = MLSColorToken(light: Color(mlsToken: "#DD940E"), dark: Color(mlsToken: "#DD940E"))
  public static let colorYellow1000 = MLSColorToken(light: Color(mlsToken: "#B86200"), dark: Color(mlsToken: "#B86200"))
  public static let colorGreen100 = MLSColorToken(light: Color(mlsToken: "#EBFFEE"), dark: Color(mlsToken: "#EBFFEE"))
  public static let colorGreen200 = MLSColorToken(light: Color(mlsToken: "#CFF7D3"), dark: Color(mlsToken: "#CFF7D3"))
  public static let colorGreen300 = MLSColorToken(light: Color(mlsToken: "#AFF4C6"), dark: Color(mlsToken: "#AFF4C6"))
  public static let colorGreen400 = MLSColorToken(light: Color(mlsToken: "#85E0A3"), dark: Color(mlsToken: "#85E0A3"))
  public static let colorGreen500 = MLSColorToken(light: Color(mlsToken: "#14AE5C"), dark: Color(mlsToken: "#14AE5C"))
  public static let colorGreen600 = MLSColorToken(light: Color(mlsToken: "#009951"), dark: Color(mlsToken: "#009951"))
  public static let colorGreen700 = MLSColorToken(light: Color(mlsToken: "#008043"), dark: Color(mlsToken: "#008043"))
  public static let colorGreen800 = MLSColorToken(light: Color(mlsToken: "#036838"), dark: Color(mlsToken: "#036838"))
  public static let colorGreen900 = MLSColorToken(light: Color(mlsToken: "#024626"), dark: Color(mlsToken: "#024626"))
  public static let colorGreen1000 = MLSColorToken(light: Color(mlsToken: "#083A23"), dark: Color(mlsToken: "#083A23"))
  public static let colorBlue100 = MLSColorToken(light: Color(mlsToken: "#F2F9FF"), dark: Color(mlsToken: "#F2F9FF"))
  public static let colorBlue200 = MLSColorToken(light: Color(mlsToken: "#E5F4FF"), dark: Color(mlsToken: "#E5F4FF"))
  public static let colorBlue300 = MLSColorToken(light: Color(mlsToken: "#BDE3FF"), dark: Color(mlsToken: "#BDE3FF"))
  public static let colorBlue400 = MLSColorToken(light: Color(mlsToken: "#80CAFF"), dark: Color(mlsToken: "#80CAFF"))
  public static let colorBlue500 = MLSColorToken(light: Color(mlsToken: "#0D99FF"), dark: Color(mlsToken: "#0D99FF"))
  public static let colorBlue600 = MLSColorToken(light: Color(mlsToken: "#007BE5"), dark: Color(mlsToken: "#007BE5"))
  public static let colorBlue700 = MLSColorToken(light: Color(mlsToken: "#0768CF"), dark: Color(mlsToken: "#0768CF"))
  public static let colorBlue800 = MLSColorToken(light: Color(mlsToken: "#034AC1"), dark: Color(mlsToken: "#034AC1"))
  public static let colorBlue900 = MLSColorToken(light: Color(mlsToken: "#093077"), dark: Color(mlsToken: "#093077"))
  public static let colorBlue1000 = MLSColorToken(light: Color(mlsToken: "#0D193F"), dark: Color(mlsToken: "#0D193F"))
}

public enum MLSMetrics {
  public static let dimensionSpace0: CGFloat = 0
  public static let dimensionSpace2: CGFloat = 2
  public static let dimensionSpace4: CGFloat = 4
  public static let dimensionSpace8: CGFloat = 8
  public static let dimensionSpace12: CGFloat = 12
  public static let dimensionSpace16: CGFloat = 16
  public static let dimensionSpace24: CGFloat = 24
  public static let dimensionSpace32: CGFloat = 32
  public static let dimensionSpace40: CGFloat = 40
  public static let dimensionSpace72: CGFloat = 72
  public static let dimensionSpace96: CGFloat = 96
  public static let dimensionSpace128: CGFloat = 128
  public static let dimensionRadiusNone: CGFloat = 0
  public static let dimensionRadiusXs: CGFloat = 1
  public static let dimensionRadiusSm: CGFloat = 2
  public static let dimensionRadiusMd: CGFloat = 3
  public static let dimensionRadiusLg: CGFloat = 5
  public static let dimensionRadiusXl: CGFloat = 8
  public static let dimensionRadius2xl: CGFloat = 13
  public static let dimensionRadiusDisplay: CGFloat = 21
  public static let dimensionRadiusFull: CGFloat = 9999
  public static let dimensionStroke1: CGFloat = 1
  public static let dimensionStroke2: CGFloat = 2
  public static let dimensionStroke15: CGFloat = 1.5
  public static let dimensionStroke05: CGFloat = 0.5
  public static let numberOpacity0: CGFloat = 0
  public static let numberOpacity10: CGFloat = 0.1
  public static let numberOpacity20: CGFloat = 0.2
  public static let numberOpacity40: CGFloat = 0.4
  public static let numberOpacity80: CGFloat = 0.8
  public static let numberOpacity100: CGFloat = 1
}

private extension Color {
  init(mlsToken value: String) {
    let rgba = MLSColorParser.parse(value)
    self.init(.sRGB, red: rgba.red, green: rgba.green, blue: rgba.blue, opacity: rgba.alpha)
  }
}

private enum MLSColorParser {
  static func parse(_ value: String) -> (red: Double, green: Double, blue: Double, alpha: Double) {
    if value.hasPrefix("#") {
      let hex = String(value.dropFirst())
      let scanner = Scanner(string: hex)
      var raw: UInt64 = 0
      scanner.scanHexInt64(&raw)

      switch hex.count {
      case 6:
        return (
          Double((raw >> 16) & 0xff) / 255,
          Double((raw >> 8) & 0xff) / 255,
          Double(raw & 0xff) / 255,
          1
        )
      case 8:
        return (
          Double((raw >> 16) & 0xff) / 255,
          Double((raw >> 8) & 0xff) / 255,
          Double(raw & 0xff) / 255,
          Double((raw >> 24) & 0xff) / 255
        )
      default:
        return (0, 0, 0, 1)
      }
    }

    let pattern = #"rgba\((\d+),\s*(\d+),\s*(\d+),\s*([0-9.]+)\)"#
    guard
      let regex = try? NSRegularExpression(pattern: pattern),
      let match = regex.firstMatch(in: value, range: NSRange(value.startIndex..., in: value)),
      let redRange = Range(match.range(at: 1), in: value),
      let greenRange = Range(match.range(at: 2), in: value),
      let blueRange = Range(match.range(at: 3), in: value),
      let alphaRange = Range(match.range(at: 4), in: value)
    else {
      return (0, 0, 0, 1)
    }

    return (
      Double(value[redRange])! / 255,
      Double(value[greenRange])! / 255,
      Double(value[blueRange])! / 255,
      Double(value[alphaRange])!
    )
  }
}
