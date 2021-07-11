.class public Lcom/oneplus/systemui/biometrics/OpFodViewSettings;
.super Ljava/lang/Object;
.source "OpFodViewSettings.java"


# direct methods
.method public static getFodAnimViewHeight(Landroid/content/Context;)I
    .locals 1

    .line 30
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget v0, Lcom/android/systemui/R$dimen;->fp_animation_height_2k:I

    goto :goto_0

    .line 34
    :cond_0
    sget v0, Lcom/android/systemui/R$dimen;->fp_animation_height_1080p:I

    goto :goto_0

    .line 37
    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->fp_animation_height:I

    .line 39
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getFodAnimViewY(Landroid/content/Context;)I
    .locals 1

    .line 13
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_ss_y:I

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_y_2k:I

    goto :goto_0

    .line 19
    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_y_1080p:I

    goto :goto_0

    .line 22
    :cond_2
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_y:I

    .line 24
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getFodHighlightSize(Landroid/content/Context;)I
    .locals 1

    .line 60
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_ss_width:I

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_2k:I

    goto :goto_0

    .line 66
    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_1080p:I

    goto :goto_0

    .line 69
    :cond_2
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width:I

    .line 71
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getFodHighlightY(Landroid/content/Context;)I
    .locals 1

    .line 44
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_ss_location_y:I

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_location_y_2k:I

    goto :goto_0

    .line 50
    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_location_y_1080p:I

    goto :goto_0

    .line 53
    :cond_2
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_location_y:I

    .line 55
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getFodIconSize(Landroid/content/Context;)I
    .locals 1

    .line 76
    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_width_2k:I

    goto :goto_0

    .line 79
    :cond_0
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_width_1080p:I

    .line 81
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getFodTouchSize(Landroid/content/Context;)I
    .locals 1

    .line 102
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_size_2k:I

    goto :goto_0

    .line 106
    :cond_0
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_size_1080p:I

    goto :goto_0

    .line 109
    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_size:I

    .line 111
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getFodTouchY(Landroid/content/Context;)I
    .locals 1

    .line 86
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_ss_location_y:I

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_location_y_2k:I

    goto :goto_0

    .line 92
    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_location_y_1080p:I

    goto :goto_0

    .line 95
    :cond_2
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_location_y:I

    .line 97
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method
