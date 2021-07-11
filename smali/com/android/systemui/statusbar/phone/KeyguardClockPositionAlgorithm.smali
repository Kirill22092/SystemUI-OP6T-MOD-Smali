.class public Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
.super Lcom/oneplus/systemui/statusbar/phone/OpKeyguardClockPositionAlgorithm;
.source "KeyguardClockPositionAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;
    }
.end annotation


# static fields
.field private static CLOCK_HEIGHT_WEIGHT:F = 0.7f

.field private static ONEPLUS_PORTING:Z = true


# instance fields
.field private mBurnInPreventionOffsetX:I

.field private mBurnInPreventionOffsetY:I

.field private mBypassEnabled:Z

.field private mClockNotificationsMargin:I

.field private mClockPreferredY:I

.field private mContainerTopPadding:I

.field private mDarkAmount:F

.field private mEmptyDragAmount:F

.field private mHasCustomClock:Z

.field private mHasVisibleNotifs:Z

.field private mKeyguardStatusHeight:I

.field private mMaxShadeBottom:I

.field private mMinTopMargin:I

.field private mNotificationStackHeight:I

.field private mPanelExpansion:F

.field private mUnlockedStackScrollerPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardClockPositionAlgorithm;-><init>()V

    return-void
.end method

.method private burnInPreventionOffsetX()F
    .locals 2

    .line 304
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetX:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetX:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method private burnInPreventionOffsetY()F
    .locals 2

    .line 299
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetY:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetY:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method private getClockAlpha(I)F
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 293
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr p1, v1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 294
    sget-object v1, Lcom/android/systemui/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 295
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method private getClockY(F)I
    .locals 4

    .line 266
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasCustomClock:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getPreferredClockY()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getMaxClockY()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->burnInPreventionOffsetY()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    .line 268
    invoke-static {v1, v0}, Landroid/util/MathUtils;->max(FF)F

    move-result v0

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedPreferredClockY()I

    move-result v1

    int-to-float v1, v1

    .line 271
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    .line 274
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 275
    invoke-static {v2, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    .line 276
    invoke-static {v2, v0, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClockY()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-static {v1, p1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardClockPositionAlgorithm"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasCustomClock:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    .line 281
    :goto_1
    invoke-static {v1, p1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private getExpandedPreferredClockY()I
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasCustomClock:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasVisibleNotifs:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getPreferredClockY()I

    move-result p0

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedClockPosition()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getMaxClockY()I
    .locals 0

    .line 225
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardClockPositionAlgorithm;->opGetMaxClockY()I

    move-result p0

    return p0
.end method

.method private getPreferredClockY()I
    .locals 0

    .line 232
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockPreferredY:I

    return p0
.end method


# virtual methods
.method public getExpandedClockPosition()I
    .locals 4

    .line 246
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxShadeBottom:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    sub-int/2addr v0, v1

    .line 247
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 249
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    int-to-float v2, v2

    sget v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->CLOCK_HEIGHT_WEIGHT:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationStackHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    int-to-float v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    int-to-float v0, v1

    .line 256
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getMaxClockY()I

    move-result p0

    int-to-float p0, p0

    cmpl-float v1, v0, p0

    if-lez v1, :cond_1

    move v0, p0

    :cond_1
    float-to-int p0, v0

    return p0
.end method

.method public getMinStackScrollerPadding()F
    .locals 2

    .line 218
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUnlockedStackScrollerPadding:I

    int-to-float p0, p0

    goto :goto_0

    .line 219
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    :goto_0
    return p0
.end method

.method public loadDimens(Landroid/content/res/Resources;)V
    .locals 3

    .line 150
    sget v0, Lcom/android/systemui/R$dimen;->keyguard_clock_notifications_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    .line 154
    sget v0, Lcom/android/systemui/R$dimen;->keyguard_clock_top_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_lock_height:I

    .line 156
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_lock_padding:I

    .line 157
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_clock_lock_margin:I

    .line 158
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 154
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mContainerTopPadding:I

    .line 159
    sget v0, Lcom/android/systemui/R$dimen;->burn_in_prevention_offset_x:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetX:I

    .line 161
    sget v0, Lcom/android/systemui/R$dimen;->burn_in_prevention_offset_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetY:I

    .line 165
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->ONEPLUS_PORTING:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardClockPositionAlgorithm;->opLoadDimens(Landroid/content/res/Resources;)V

    :cond_0
    return-void
.end method

.method public opGetClockY()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPanelExpansion:F

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY(F)I

    move-result p0

    return p0
.end method

.method public run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V
    .locals 2

    .line 207
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPanelExpansion:F

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY(F)I

    move-result v0

    .line 208
    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    .line 209
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockAlpha(I)F

    move-result v1

    iput v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    .line 210
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUnlockedStackScrollerPadding:I

    goto :goto_0

    .line 211
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v0, v1

    :goto_0
    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 212
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUnlockedStackScrollerPadding:I

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 213
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY(F)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v0, v1

    :goto_1
    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingExpanded:I

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->burnInPreventionOffsetX()F

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p0

    float-to-int p0, p0

    iput p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    return-void
.end method

.method public setup(IIIFIIIZZFFZI)V
    .locals 1

    .line 175
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mContainerTopPadding:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    .line 176
    iput p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxShadeBottom:I

    .line 177
    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationStackHeight:I

    .line 178
    iput p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPanelExpansion:F

    .line 180
    iput p6, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    .line 181
    iput p7, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockPreferredY:I

    .line 182
    iput-boolean p8, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasCustomClock:Z

    .line 183
    iput-boolean p9, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasVisibleNotifs:Z

    .line 184
    iput p10, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    .line 185
    iput p11, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    .line 186
    iput-boolean p12, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    .line 187
    iput p13, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUnlockedStackScrollerPadding:I

    .line 190
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    .line 191
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p12, "setup: minTopMargin= "

    invoke-virtual {p0, p12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxShadeBottom= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", notificationStackHeight= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", panelExpansion= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", parentHeight= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", keyguardStatusHeight= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", clockPreferredY= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", hasCustomClock= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hasVisibleNotifs= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", dark= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", emptyDragAmount= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardClockPositionAlgorithm"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
