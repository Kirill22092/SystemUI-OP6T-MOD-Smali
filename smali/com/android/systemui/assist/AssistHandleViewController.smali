.class public Lcom/android/systemui/assist/AssistHandleViewController;
.super Ljava/lang/Object;
.source "AssistHandleViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;


# instance fields
.field mAssistHintBlocked:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mAssistHintLeft:Lcom/android/systemui/CornerHandleView;

.field private mAssistHintRight:Lcom/android/systemui/CornerHandleView;

.field mAssistHintVisible:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mBottomOffset:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mAssistHintBlocked:Z

    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mHandler:Landroid/os/Handler;

    sget p1, Lcom/android/systemui/R$id;->assist_hint_left:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/CornerHandleView;

    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mAssistHintLeft:Lcom/android/systemui/CornerHandleView;

    sget p1, Lcom/android/systemui/R$id;->assist_hint_right:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/CornerHandleView;

    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mAssistHintRight:Lcom/android/systemui/CornerHandleView;

    return-void
.end method

.method private fade(Landroid/view/View;ZZ)V
    .locals 15

    move-object/from16 v8, p1

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v10}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x0

    const v3, 0x3f8ccccd    # 1.1f

    const-wide/16 v5, 0x2ee

    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ee66666    # 0.45f

    const v12, 0x3f2b851f    # 0.67f

    invoke-direct {v7, v9, v0, v12, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/assist/AssistHandleViewController;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v13

    new-instance v14, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    invoke-direct {v14, v0, v9, v12, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const v2, 0x3f8ccccd    # 1.1f

    const v3, 0x3f7851ec    # 0.97f

    const-wide/16 v5, 0x190

    move-object v0, p0

    move-object v7, v14

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/assist/AssistHandleViewController;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v9

    const v2, 0x3f7851ec    # 0.97f

    const v3, 0x3f828f5c    # 1.02f

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/assist/AssistHandleViewController;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v10

    const v2, 0x3f828f5c    # 1.02f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/assist/AssistHandleViewController;->getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v11, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v11, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method private hideAssistHandles()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mAssistHintLeft:Lcom/android/systemui/CornerHandleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mAssistHintRight:Lcom/android/systemui/CornerHandleView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mAssistHintVisible:Z

    return-void
.end method

.method private synthetic lambda$setAssistHintBlocked$1(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistHandleViewController;->setAssistHintBlocked(Z)V

    return-void
.end method

.method private synthetic lambda$setAssistHintVisible$0(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistHandleViewController;->setAssistHintVisible(Z)V

    return-void
.end method


# virtual methods
.method getHandleAnimator(Landroid/view/View;FFZJLandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v6

    invoke-static {v4, v5, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v8, v7, [F

    const/4 v9, 0x0

    aput v6, v8, v9

    const/4 v10, 0x1

    aput v4, v8, v10

    invoke-static {p1, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v11, v7, [F

    aput v6, v11, v9

    aput v4, v11, v10

    invoke-static {p1, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const v6, 0x3e4ccccd    # 0.2f

    const/4 v8, 0x0

    invoke-static {v6, v8, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    invoke-static {v6, v8, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    if-eqz p4, :cond_0

    const/4 v6, -0x1

    goto :goto_0

    :cond_0
    move v6, v10

    :goto_0
    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v7, [F

    int-to-float v6, v6

    mul-float v12, v6, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    aput v12, v11, v9

    mul-float/2addr v6, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v6, v12

    aput v6, v11, v10

    invoke-static {p1, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v7, [F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v2, v11

    iget v11, v0, Lcom/android/systemui/assist/AssistHandleViewController;->mBottomOffset:I

    int-to-float v11, v11

    add-float/2addr v2, v11

    aput v2, v7, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v3, v2

    iget v0, v0, Lcom/android/systemui/assist/AssistHandleViewController;->mBottomOffset:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    aput v3, v7, v10

    invoke-static {p1, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-wide/from16 v2, p5

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v1
.end method

.method public synthetic lambda$setAssistHintBlocked$1$AssistHandleViewController(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleViewController;->lambda$setAssistHintBlocked$1(Z)V

    return-void
.end method

.method public synthetic lambda$setAssistHintVisible$0$AssistHandleViewController(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleViewController;->lambda$setAssistHintVisible$0(Z)V

    return-void
.end method

.method public onDarkIntensity(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mAssistHintLeft:Lcom/android/systemui/CornerHandleView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/CornerHandleView;->updateDarkness(F)V

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mAssistHintRight:Lcom/android/systemui/CornerHandleView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/CornerHandleView;->updateDarkness(F)V

    return-void
.end method

.method public setAssistHintBlocked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/assist/-$$Lambda$AssistHandleViewController$ai-ftoeNqQkXVTgh21US20St6-A;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleViewController$ai-ftoeNqQkXVTgh21US20St6-A;-><init>(Lcom/android/systemui/assist/AssistHandleViewController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mAssistHintBlocked:Z

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mAssistHintVisible:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleViewController;->hideAssistHandles()V

    :cond_1
    return-void
.end method

.method public setAssistHintVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/assist/-$$Lambda$AssistHandleViewController$UwVsLlCfHOnxZGhueV8hx6rT9Z4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleViewController$UwVsLlCfHOnxZGhueV8hx6rT9Z4;-><init>(Lcom/android/systemui/assist/AssistHandleViewController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mAssistHintBlocked:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mAssistHintVisible:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mAssistHintVisible:Z

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mAssistHintLeft:Lcom/android/systemui/CornerHandleView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/assist/AssistHandleViewController;->fade(Landroid/view/View;ZZ)V

    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mAssistHintRight:Lcom/android/systemui/CornerHandleView;

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mAssistHintVisible:Z

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/assist/AssistHandleViewController;->fade(Landroid/view/View;ZZ)V

    :cond_2
    return-void
.end method

.method public setBottomOffset(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mBottomOffset:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mBottomOffset:I

    iget-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleViewController;->mAssistHintVisible:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleViewController;->hideAssistHandles()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistHandleViewController;->setAssistHintVisible(Z)V

    :cond_0
    return-void
.end method
