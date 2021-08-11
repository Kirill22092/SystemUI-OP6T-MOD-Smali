.class public Lcom/oneplus/systemui/biometrics/OpFodViewSettings;
.super Ljava/lang/Object;
.source "OpFodViewSettings.java"


# direct methods
.method public static getFodAnimViewHeight(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$dimen;->fp_animation_height_2k:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$dimen;->fp_animation_height_1080p:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->fp_animation_height:I

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getFodAnimViewY(Landroid/content/Context;)I
    .locals 1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_ss_y:I

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_y_2k:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_y_1080p:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_animation_view_y:I

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getFodHighlightSize(Landroid/content/Context;)I
    .locals 1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_ss_width:I

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_2k:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width_1080p:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_width:I

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getFodHighlightY(Landroid/content/Context;)I
    .locals 1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_ss_location_y:I

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_location_y_2k:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_location_y_1080p:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_flash_location_y:I

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getFodIconSize(Landroid/content/Context;)I
    .locals 1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_width_2k:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_icon_normal_width_1080p:I

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getFodTouchSize(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_size_2k:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_size_1080p:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_size:I

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getFodTouchY(Landroid/content/Context;)I
    .locals 1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_ss_location_y:I

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_location_y_2k:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_location_y_1080p:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/systemui/R$dimen;->op_biometric_transparent_icon_location_y:I

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method
