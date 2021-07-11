.class public Lcom/oneplus/anim/OpGraphLight$AnimateImageView;
.super Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;
.source "OpGraphLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/anim/OpGraphLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimateImageView"
.end annotation


# instance fields
.field private final mAlphaInAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaInAnimatorDisappear:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lcom/oneplus/anim/OpGraphLight;


# direct methods
.method public constructor <init>(Lcom/oneplus/anim/OpGraphLight;Landroid/content/Context;)V
    .locals 9

    .line 594
    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    .line 595
    invoke-direct {p0, p1, p2}, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;-><init>(Lcom/oneplus/anim/OpGraphLight;Landroid/content/Context;)V

    .line 596
    iget-object p2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$array;->op_light_start_animation:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mAnimationArray:Landroid/content/res/TypedArray;

    const/4 p2, 0x2

    new-array v0, p2, [I

    .line 597
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    .line 598
    new-instance v3, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$1;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$1;-><init>(Lcom/oneplus/anim/OpGraphLight$AnimateImageView;Lcom/oneplus/anim/OpGraphLight;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 617
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/4 v4, 0x0

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p2, p2, [I

    .line 619
    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v7, 0x96

    invoke-virtual {p2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAlphaInAnimatorDisappear:Landroid/animation/ValueAnimator;

    .line 620
    new-instance v0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$2;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$2;-><init>(Lcom/oneplus/anim/OpGraphLight$AnimateImageView;Lcom/oneplus/anim/OpGraphLight;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 639
    iget-object p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAlphaInAnimatorDisappear:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v3, v4, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 640
    iget-object p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAlphaInAnimatorDisappear:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 642
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 643
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->mAlphaInAnimatorDisappear:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 644
    iget-object p2, p0, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$3;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/anim/OpGraphLight$AnimateImageView$3;-><init>(Lcom/oneplus/anim/OpGraphLight$AnimateImageView;Lcom/oneplus/anim/OpGraphLight;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xe1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x96
    .end array-data
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v0}, Lcom/oneplus/anim/OpGraphLight;->access$900(Lcom/oneplus/anim/OpGraphLight;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;->startAnimation(I)V

    return-void
.end method
