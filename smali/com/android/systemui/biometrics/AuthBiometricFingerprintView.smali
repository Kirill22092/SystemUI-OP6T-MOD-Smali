.class public Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;
.super Lcom/android/systemui/biometrics/AuthBiometricView;
.source "AuthBiometricFingerprintView.java"


# instance fields
.field private mFodShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->hideFodImmediately()V

    return-void
.end method

.method private getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_fp_to_error:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_fp_to_error:I

    goto :goto_1

    :cond_2
    if-eq p1, v1, :cond_4

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_fp_to_error:I

    goto :goto_1

    :cond_4
    :goto_0
    sget p1, Lcom/android/systemui/R$drawable;->fingerprint_dialog_error_to_fp:I

    :goto_1
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getFodAnimationSize()I
    .locals 0

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodViewSettings;->getFodAnimViewHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private hideFodImmediately()V
    .locals 1

    const-class v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->hideFodImmediately()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->mFodShowing:Z

    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->updateState(I)V

    return-void
.end method

.method private opUpdateAccentColor(Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .locals 6

    if-eqz p1, :cond_0

    const/16 p0, 0x64

    invoke-static {p0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result p0

    const/4 v0, 0x5

    const-string v1, "_R_G_L_1_G_D_0_P_0"

    const-string v2, "_R_G_L_1_G_D_1_P_0"

    const-string v3, "_R_G_L_1_G_D_2_P_0"

    const-string v4, "_R_G_L_1_G_D_3_P_0"

    const-string v5, "_R_G_L_1_G_D_4_P_0"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {p1, v3, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->changePathStrokeColor(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private shouldAnimateForTransition(II)Z
    .locals 4

    const/4 p0, 0x0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_0

    return p0

    :cond_0
    return v2

    :cond_1
    if-eq p1, v0, :cond_3

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    return p0

    :cond_3
    :goto_0
    return v2
.end method

.method private showTouchSensorString()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->fingerprint_dialog_touch_sensor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$color;->biometric_dialog_gray:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateIcon(II)V
    .locals 5

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    const-string v1, "BiometricPrompt/AuthBiometricFingerprintView"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateIcon: lastState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", newState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", fodShowing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->mFodShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", iconVisible= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    sget p2, Lcom/android/systemui/R$drawable;->fp_icon_default_disable:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/android/systemui/R$color;->biometric_fingerprint_error_color:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->mFodShowing:Z

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->mFodShowing:Z

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Animation not found, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->opUpdateAccentColor(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->shouldAnimateForTransition(II)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_7
    return-void
.end method


# virtual methods
.method protected getBiometricIconSize()I
    .locals 1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->getBiometricIconSize()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodViewSettings;->getFodIconSize(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method protected getBottomSpaceHeight(Landroid/util/DisplayMetrics;)I
    .locals 10

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->getBottomSpaceHeight(Landroid/util/DisplayMetrics;)I

    move-result p0

    return p0

    :cond_0
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->getFodAnimationSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->getBiometricIconSize()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFodViewSettings;->getFodAnimViewY(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomFingerprintType2()Z

    move-result v3

    invoke-static {}, Lcom/oneplus/util/OpUtils;->is2KResolution()Z

    move-result v4

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCutout()Z

    move-result v5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/oneplus/util/OpUtils;->isSupportResolutionSwitch(Landroid/content/Context;)Z

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adjusting bottom space. isFpType2= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", is2kDisplay= "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSupportCutout= "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isCutoutHide= "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSupportResolutionSwitch= "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricPrompt/AuthBiometricFingerprintView"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->getCutoutPathdataHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr p1, v3

    :cond_1
    sub-int/2addr p1, v2

    int-to-float p1, p1

    sub-float/2addr p1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->oneplus_contorl_radius_r16:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method protected getDelayAfterAuthenticatedDurationMs()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getStateForAfterError()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected handleResetAfterError()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->showTouchSensorString()V

    return-void
.end method

.method protected handleResetAfterHelp()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->showTouchSensorString()V

    return-void
.end method

.method protected needWrap(Lcom/android/systemui/biometrics/AuthBiometricView$Callback;)Lcom/android/systemui/biometrics/AuthBiometricView$Callback;
    .locals 1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView$1;-><init>(Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;Lcom/android/systemui/biometrics/AuthBiometricView$Callback;)V

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->needWrap(Lcom/android/systemui/biometrics/AuthBiometricView$Callback;)Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    return-object p1
.end method

.method onAttachedToWindowInternal()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onAttachedToWindowInternal()V

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->showTouchSensorString()V

    return-void
.end method

.method public onBackKeyClicked()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->hideFodImmediately()V

    return-void
.end method

.method protected onBiometricPromptReady()V
    .locals 3

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->getBiometricPromptBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "key_cookie"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "BiometricPrompt/AuthBiometricFingerprintView"

    if-nez v0, :cond_1

    const-string p0, "onBiometricPromptReady: cookie must not be zero."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-class v2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->onBiometricPromptReady(I)V

    goto :goto_0

    :cond_2
    const-string v0, "onBiometricPromptReady: fodDialogImpl is null!!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->mFodShowing:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->updateState(I)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->hideFodImmediately()V

    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->onError(Ljava/lang/String;)V

    return-void
.end method

.method protected supportsSmallDialog()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateState(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->updateIcon(II)V

    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    return-void
.end method
