.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$9;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 3

    const/4 v0, 0x0

    .line 219
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    .line 220
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    .line 221
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleAlpha:F

    .line 229
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 232
    :cond_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x320

    .line 233
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    goto :goto_1

    .line 235
    :cond_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isRecentUnlockBiometricFace()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isRecentUnlockBiometricFinger()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x12c

    .line 244
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    goto :goto_1

    .line 236
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAnimationDuration = 0, isRecentUnlockBiometricFace():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isRecentUnlockBiometricFace()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRecentUnlockBiometricFinger():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isRecentUnlockBiometricFinger()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrimState.UNLOCKED"

    .line 237
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-wide/16 v0, 0x0

    .line 241
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    .line 248
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mLaunchingAffordanceWithPreview:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    const/4 v0, 0x0

    .line 250
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    .line 251
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    .line 252
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleTint:I

    .line 253
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    .line 255
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_5

    .line 257
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, -0x1000000

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    .line 258
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    .line 259
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimForBubble:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    .line 262
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    .line 263
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    .line 264
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleTint:I

    .line 265
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    :cond_5
    return-void
.end method
