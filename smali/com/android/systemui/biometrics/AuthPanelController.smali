.class public Lcom/android/systemui/biometrics/AuthPanelController;
.super Landroid/view/ViewOutlineProvider;
.source "AuthPanelController.java"


# instance fields
.field private mContainerHeight:I

.field private mContainerWidth:I

.field private mContentHeight:I

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCornerRadius:F

.field private mMargin:I

.field private final mPanelView:Landroid/view/View;

.field private mUseFullScreen:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mPanelView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->oneplus_contorl_radius_r16:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mCornerRadius:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->biometric_dialog_border_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mPanelView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mPanelView:Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method private synthetic lambda$updateForContentDimensions$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    return-void
.end method

.method private synthetic lambda$updateForContentDimensions$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mCornerRadius:F

    return-void
.end method

.method private synthetic lambda$updateForContentDimensions$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentHeight:I

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mPanelView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method private synthetic lambda$updateForContentDimensions$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentWidth:I

    return-void
.end method


# virtual methods
.method getContainerHeight()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    return p0
.end method

.method getContainerWidth()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerWidth:I

    return p0
.end method

.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    iget p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerWidth:I

    iget v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentWidth:I

    sub-int v0, p1, v0

    div-int/lit8 v2, v0, 0x2

    sub-int v4, p1, v2

    iget p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentHeight:I

    iget v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    if-ge p1, v0, :cond_0

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    sub-int/2addr v0, p1

    move v3, v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    move v3, p1

    :goto_0
    iget v5, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    iget v6, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mCornerRadius:F

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method

.method public synthetic lambda$updateForContentDimensions$2$AuthPanelController(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthPanelController;->lambda$updateForContentDimensions$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$updateForContentDimensions$3$AuthPanelController(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthPanelController;->lambda$updateForContentDimensions$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$updateForContentDimensions$4$AuthPanelController(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthPanelController;->lambda$updateForContentDimensions$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$updateForContentDimensions$5$AuthPanelController(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthPanelController;->lambda$updateForContentDimensions$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public setContainerDimensions(II)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerWidth:I

    iput p2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    return-void
.end method

.method public setUseFullScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mUseFullScreen:Z

    return-void
.end method

.method public updateForContentDimensions(III)V
    .locals 8

    iget v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerWidth:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mUseFullScreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->biometric_dialog_border_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mUseFullScreen:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->oneplus_contorl_radius_r16:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_1
    if-lez p3, :cond_3

    const/4 v3, 0x2

    new-array v4, v3, [I

    iget v5, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    aput v5, v4, v1

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/biometrics/-$$Lambda$AuthPanelController$FfAW_fJIxdruLyni5niGyYZPKQI;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthPanelController$FfAW_fJIxdruLyni5niGyYZPKQI;-><init>(Lcom/android/systemui/biometrics/AuthPanelController;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v3, [F

    iget v6, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mCornerRadius:F

    aput v6, v4, v1

    aput v2, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/biometrics/-$$Lambda$AuthPanelController$InH1YHCYbFS1oQ8661noD2sY0tQ;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthPanelController$InH1YHCYbFS1oQ8661noD2sY0tQ;-><init>(Lcom/android/systemui/biometrics/AuthPanelController;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v3, [I

    iget v6, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentHeight:I

    aput v6, v4, v1

    aput p2, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v4, Lcom/android/systemui/biometrics/-$$Lambda$AuthPanelController$gEQd5p8htInmfU5UNk3JBrR4jEs;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthPanelController$gEQd5p8htInmfU5UNk3JBrR4jEs;-><init>(Lcom/android/systemui/biometrics/AuthPanelController;)V

    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v3, [I

    iget v6, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentWidth:I

    aput v6, v4, v1

    aput p1, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v4, Lcom/android/systemui/biometrics/-$$Lambda$AuthPanelController$T_ye3d_LoD4zTMypSnctnhLSMzU;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/-$$Lambda$AuthPanelController$T_ye3d_LoD4zTMypSnctnhLSMzU;-><init>(Lcom/android/systemui/biometrics/AuthPanelController;)V

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v6, p3

    invoke-virtual {p0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p3, 0x4

    new-array p3, p3, [Landroid/animation/Animator;

    aput-object v2, p3, v1

    aput-object p2, p3, v5

    aput-object p1, p3, v3

    const/4 p1, 0x3

    aput-object v0, p3, p1

    invoke-virtual {p0, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :cond_3
    iput v0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mMargin:I

    iput v2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mCornerRadius:F

    iput p1, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentWidth:I

    iput p2, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mContentHeight:I

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthPanelController;->mPanelView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    :goto_2
    return-void

    :cond_4
    :goto_3
    const-string p0, "BiometricPrompt/AuthPanelController"

    const-string p1, "Not done measuring yet"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
