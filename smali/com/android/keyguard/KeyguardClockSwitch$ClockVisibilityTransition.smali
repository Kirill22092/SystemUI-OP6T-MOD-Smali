.class Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;
.super Landroid/transition/Visibility;
.source "KeyguardClockSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardClockSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClockVisibilityTransition"
.end annotation


# instance fields
.field private mCutoff:F

.field private mScale:F

.field final synthetic this$0:Lcom/android/keyguard/KeyguardClockSwitch;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardClockSwitch;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->this$0:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->setCutoff(F)Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    .line 579
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->setScale(F)Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;

    return-void
.end method

.method private captureVisibility(Landroid/transition/TransitionValues;)V
    .locals 1

    .line 619
    iget-object p0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object p1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 620
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "systemui:keyguard:visibility"

    .line 619
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createAnimator(Landroid/view/View;FIIFF)Landroid/animation/Animator;
    .locals 8

    .line 655
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 656
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 657
    new-instance v7, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$ClockVisibilityTransition$0YYk1dKss121y1dzD6OuOcSJduA;

    move-object v1, v7

    move v2, p2

    move-object v3, p1

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/-$$Lambda$KeyguardClockSwitch$ClockVisibilityTransition$0YYk1dKss121y1dzD6OuOcSJduA;-><init>(FLandroid/view/View;IFF)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 666
    new-instance p2, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$1;

    iget-object p5, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->this$0:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p5}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p2, p0, p5, p1, p3}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$1;-><init>(Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;Landroid/content/Context;Landroid/view/View;I)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 679
    new-instance p2, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$2;

    invoke-direct {p2, p0, p1, p4}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition$2;-><init>(Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;Landroid/view/View;I)V

    invoke-virtual {p0, p2}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic lambda$createAnimator$0(FLandroid/view/View;IFFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 658
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p5

    cmpl-float p0, p5, p0

    if-lez p0, :cond_0

    .line 660
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 662
    :cond_0
    invoke-static {p3, p4, p5}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    .line 663
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 664
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 614
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 615
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->captureVisibility(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 608
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 609
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->captureVisibility(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7

    .line 626
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 629
    :cond_0
    iget v2, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->mCutoff:F

    .line 631
    iget-object p1, p4, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo p3, "systemui:keyguard:visibility"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 632
    iget v5, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->mScale:F

    const/4 v3, 0x4

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p2

    .line 634
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->createAnimator(Landroid/view/View;FIIFF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7

    .line 641
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 644
    iget p3, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->mCutoff:F

    sub-float v2, p1, p3

    .line 646
    iget-object p1, p4, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo p3, "systemui:keyguard:visibility"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 648
    iget v6, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->mScale:F

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p2

    .line 649
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->createAnimator(Landroid/view/View;FIIFF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public setCutoff(F)Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;
    .locals 0

    .line 589
    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->mCutoff:F

    return-object p0
.end method

.method public setScale(F)Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;
    .locals 0

    .line 602
    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch$ClockVisibilityTransition;->mScale:F

    return-object p0
.end method
