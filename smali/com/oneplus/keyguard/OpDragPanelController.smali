.class public Lcom/oneplus/keyguard/OpDragPanelController;
.super Ljava/lang/Object;
.source "OpDragPanelController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;,
        Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;
    }
.end annotation


# static fields
.field private static mDropThreshold:I


# instance fields
.field private animationRunning:Z

.field private isStart:Z

.field private mArrowView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDragEndAnimation:Landroid/animation/AnimatorSet;

.field private mDragStartAnimation:Landroid/animation/AnimatorSet;

.field private mDropped:Z

.field private mHander:Landroid/os/Handler;

.field private mHintAnimation:Landroid/animation/AnimatorSet;

.field private mHintText:Landroid/widget/TextView;

.field private mIndicatorLayout:Landroid/widget/LinearLayout;

.field private mIsReseting:Z

.field private mLastX:F

.field private mLastY:F

.field private mPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

.field private mShakeAnimator:Landroid/animation/AnimatorSet;

.field private mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

.field private mTouched:Z

.field private mVelocityTracker:Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

.field private shakeAnimationRunning:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/keyguard/OpEmergencyPanel;Lcom/oneplus/keyguard/OpEmergencyBubble;Landroid/widget/LinearLayout;)V
    .locals 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouched:Z

    .line 38
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropped:Z

    .line 40
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIsReseting:Z

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mLastX:F

    .line 44
    iput v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mLastY:F

    .line 46
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->isStart:Z

    .line 53
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->animationRunning:Z

    .line 54
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->shakeAnimationRunning:Z

    .line 57
    new-instance v0, Lcom/oneplus/keyguard/OpDragPanelController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/keyguard/OpDragPanelController$1;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    .line 145
    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    .line 146
    iput-object p2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    .line 147
    iput-object p3, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    .line 148
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    new-instance p2, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;Lcom/oneplus/keyguard/OpDragPanelController$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    iput-object p4, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIndicatorLayout:Landroid/widget/LinearLayout;

    .line 150
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIndicatorLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/android/systemui/R$id;->arrow_panel:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    .line 151
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIndicatorLayout:Landroid/widget/LinearLayout;

    sget p2, Lcom/android/systemui/R$id;->hint:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintText:Landroid/widget/TextView;

    .line 152
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->op_emergency_bubble_drop_distance:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sput p1, Lcom/oneplus/keyguard/OpDragPanelController;->mDropThreshold:I

    const-wide/16 p1, 0x74

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpDragPanelController;->getZoomInAnimatorSet(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragStartAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 p1, 0x4b

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/oneplus/keyguard/OpDragPanelController;->getZoomOutAnimatorSet(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragEndAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->createHintAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->stopShakeAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->stopHintAnimation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragStartAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oneplus/keyguard/OpDragPanelController;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouched:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/oneplus/keyguard/OpDragPanelController;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouched:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mVelocityTracker:Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/oneplus/keyguard/OpDragPanelController;Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mVelocityTracker:Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    return-object p1
.end method

.method static synthetic access$1500()I
    .locals 1

    .line 25
    sget v0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropThreshold:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyBubble;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/oneplus/keyguard/OpDragPanelController;F)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpDragPanelController;->onDragStart(F)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->onDragEnd()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->createShakeAnimator()V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mShakeAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyPanel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/keyguard/OpDragPanelController;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->isStart:Z

    return p0
.end method

.method static synthetic access$600(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/keyguard/OpDragPanelController;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIsReseting:Z

    return p0
.end method

.method static synthetic access$800(Lcom/oneplus/keyguard/OpDragPanelController;)F
    .locals 0

    .line 25
    iget p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mLastY:F

    return p0
.end method

.method static synthetic access$802(Lcom/oneplus/keyguard/OpDragPanelController;F)F
    .locals 0

    .line 25
    iput p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mLastY:F

    return p1
.end method

.method static synthetic access$900(Lcom/oneplus/keyguard/OpDragPanelController;)F
    .locals 0

    .line 25
    iget p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mLastX:F

    return p0
.end method

.method static synthetic access$902(Lcom/oneplus/keyguard/OpDragPanelController;F)F
    .locals 0

    .line 25
    iput p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mLastX:F

    return p1
.end method

.method private createHintAnimation()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->getHintAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintAnimation:Landroid/animation/AnimatorSet;

    .line 344
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oneplus/keyguard/OpDragPanelController$4;

    invoke-direct {v1, p0}, Lcom/oneplus/keyguard/OpDragPanelController$4;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method private createShakeAnimator()V
    .locals 5

    .line 373
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mShakeAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 374
    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpDragPanelController;->getZoomInAnimatorSet(J)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 375
    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpDragPanelController;->getZoomOutAnimatorSet(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 377
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mShakeAnimator:Landroid/animation/AnimatorSet;

    .line 378
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mShakeAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 379
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mShakeAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oneplus/keyguard/OpDragPanelController$5;

    invoke-direct {v1, p0}, Lcom/oneplus/keyguard/OpDragPanelController$5;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method private getAlphaAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 6

    .line 331
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    const-string v4, "scaleX"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 333
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    const-string v4, "scaleY"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 335
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    aput-object p0, v4, v2

    .line 336
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x96

    .line 337
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v3

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getHintAnimation()Landroid/animation/AnimatorSet;
    .locals 9

    .line 356
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_emergency_panel_indicator_arrow_animation_transY:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 357
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    const v2, 0x10c000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 359
    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0x4b

    .line 360
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 361
    iget-object v3, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v4, [F

    fill-array-data v6, :array_1

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0xb7

    .line 362
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 363
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v4, [F

    neg-float v7, v0

    const/4 v8, 0x0

    aput v7, v6, v8

    const/4 v7, 0x1

    aput v0, v6, v7

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v5, 0x49f

    .line 364
    invoke-virtual {p0, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 365
    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 367
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v8

    aput-object p0, v1, v7

    aput-object v3, v1, v4

    .line 368
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getZoomInAnimatorSet(J)Landroid/animation/AnimatorSet;
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 285
    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    const-string v3, "scaleY"

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 286
    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    const v3, 0x10c000e

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 288
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 289
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 290
    invoke-virtual {v3, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 291
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 292
    new-instance p1, Lcom/oneplus/keyguard/OpDragPanelController$2;

    invoke-direct {p1, p0}, Lcom/oneplus/keyguard/OpDragPanelController$2;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v3

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
    .end array-data
.end method

.method private getZoomOutAnimatorSet(J)Landroid/animation/AnimatorSet;
    .locals 4

    .line 307
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 308
    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    const-string v3, "scaleY"

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 309
    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    const v3, 0x10c000e

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 312
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 313
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 314
    invoke-virtual {v3, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 315
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 316
    new-instance p1, Lcom/oneplus/keyguard/OpDragPanelController$3;

    invoke-direct {p1, p0}, Lcom/oneplus/keyguard/OpDragPanelController$3;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v3

    nop

    :array_0
    .array-data 4
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isAnimationRunning()Z
    .locals 0

    .line 437
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->animationRunning:Z

    return p0
.end method

.method private isShakeAnimationRunning()Z
    .locals 0

    .line 433
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->shakeAnimationRunning:Z

    return p0
.end method

.method private onDragEnd()V
    .locals 3

    .line 209
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->isStart:Z

    if-eqz v0, :cond_4

    .line 210
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "OpDragPanelController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragEnd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragStartAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropped:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mVelocityTracker:Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->isDrop()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropped:Z

    .line 212
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragStartAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragStartAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 215
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropped:Z

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragEndAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 217
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->restartAnimation()V

    goto :goto_0

    .line 219
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->getAlphaAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 221
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpEmergencyPanel;->onDrop()V

    .line 222
    :cond_3
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_4

    const-string p0, "onDrop"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private onDragStart(F)V
    .locals 12

    .line 190
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->isStart:Z

    if-eqz v0, :cond_2

    .line 191
    sget v0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropThreshold:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 192
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "onDragStart:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    sget v3, Lcom/oneplus/keyguard/OpEmergencyBubble;->ACTIVE_CIRCLE_COLOR:I

    const/4 v5, 0x0

    .line 196
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v4, v0

    const v0, -0x14ffd8

    const-wide v1, 0x3fd999999999999aL    # 0.4

    .line 198
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v6, v8

    sub-double/2addr v1, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, v6

    double-to-int v1, v1

    .line 199
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v8, v10

    if-ltz v2, :cond_1

    .line 200
    sget v0, Lcom/oneplus/keyguard/OpEmergencyBubble;->ACTIVE_TEXT_COLOR:I

    const-wide v1, 0x3fc999999999999aL    # 0.2

    .line 201
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v8, v10

    add-double/2addr v8, v1

    mul-double/2addr v8, v6

    double-to-int v1, v8

    :cond_1
    move v6, v0

    move v7, v1

    .line 203
    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/keyguard/OpEmergencyBubble;->drawView(IIIII)V

    .line 204
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIndicatorLayout:Landroid/widget/LinearLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouched:Z

    .line 178
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropped:Z

    .line 179
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIsReseting:Z

    .line 180
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->stopHintAnimation()V

    .line 181
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->stopShakeAnimation()V

    .line 182
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetIndicatorLayout()V

    .line 183
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetArrow(Z)V

    .line 184
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetTouchView()V

    .line 185
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetText()V

    .line 186
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    const-string p0, "OpDragPanelController"

    const-string v0, "reset"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private resetArrow(Z)V
    .locals 2

    .line 260
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "resetArrow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    move p1, v1

    .line 264
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 265
    iget-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 266
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private resetIndicatorLayout()V
    .locals 2

    .line 270
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "IndicatorLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIndicatorLayout:Landroid/widget/LinearLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private resetText()V
    .locals 1

    .line 441
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 442
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private resetTouchView()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 251
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 252
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 253
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 254
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 255
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 256
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpEmergencyBubble;->reset()V

    return-void
.end method

.method private restartAnimation()V
    .locals 2

    .line 275
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "restartAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetTouchView()V

    .line 277
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetIndicatorLayout()V

    const/4 v0, 0x0

    .line 278
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetArrow(Z)V

    .line 279
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->startShakeAnimation()V

    .line 280
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->startHintAnimation()V

    return-void
.end method

.method private startHintAnimation()V
    .locals 4

    .line 399
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAnimation animationRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isAnimationRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpDragPanelController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    .line 403
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->animationRunning:Z

    :cond_1
    return-void
.end method

.method private startShakeAnimation()V
    .locals 4

    .line 390
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startShakeAnimation, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isShakeAnimationRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpDragPanelController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isShakeAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 393
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 394
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->shakeAnimationRunning:Z

    :cond_1
    return-void
.end method

.method private stopHintAnimation()V
    .locals 2

    .line 420
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopAnimation animationRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isAnimationRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpDragPanelController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 426
    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->animationRunning:Z

    .line 427
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetIndicatorLayout()V

    const/4 v0, 0x1

    .line 428
    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetArrow(Z)V

    :cond_2
    return-void
.end method

.method private stopShakeAnimation()V
    .locals 2

    .line 408
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopShakeAnimation, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isShakeAnimationRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpDragPanelController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isShakeAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mShakeAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 414
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->shakeAnimationRunning:Z

    .line 415
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetTouchView()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .line 158
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->isStart:Z

    .line 160
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->reset()V

    .line 161
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->restartAnimation()V

    .line 162
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 166
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->isStart:Z

    .line 168
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->reset()V

    .line 169
    iget-object p0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
