.class Lcom/android/systemui/glwallpaper/ImageRevealHelper;
.super Ljava/lang/Object;
.source "ImageRevealHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;
    }
.end annotation


# instance fields
.field private final mAnimator:Landroid/animation/ValueAnimator;

.field private mAwake:Z

.field private mReveal:F

.field private final mRevealListener:Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mReveal:F

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAwake:Z

    .line 40
    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mRevealListener:Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;

    new-array p1, v0, [F

    .line 41
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAnimator:Landroid/animation/ValueAnimator;

    .line 42
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 43
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/glwallpaper/-$$Lambda$ImageRevealHelper$F24215Snv58_ZInLQsaNs5JLH9M;

    invoke-direct {v0, p0}, Lcom/android/systemui/glwallpaper/-$$Lambda$ImageRevealHelper$F24215Snv58_ZInLQsaNs5JLH9M;-><init>(Lcom/android/systemui/glwallpaper/ImageRevealHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 49
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/glwallpaper/ImageRevealHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/glwallpaper/ImageRevealHelper$1;-><init>(Lcom/android/systemui/glwallpaper/ImageRevealHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/glwallpaper/ImageRevealHelper;)Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mRevealListener:Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;

    return-object p0
.end method

.method private animate()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mReveal:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-boolean v2, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAwake:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 77
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getReveal()F
    .locals 0

    .line 81
    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mReveal:F

    return p0
.end method

.method public synthetic lambda$new$0$ImageRevealHelper(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 44
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mReveal:F

    .line 45
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mRevealListener:Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;

    if-eqz p0, :cond_0

    .line 46
    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;->onRevealStateChanged()V

    :cond_0
    return-void
.end method

.method updateAwake(ZJ)V
    .locals 2

    .line 85
    iput-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAwake:Z

    .line 86
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_1

    .line 90
    iget-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mAwake:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iput p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mReveal:F

    .line 91
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mRevealListener:Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;->onRevealStart(Z)V

    .line 92
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mRevealListener:Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;

    invoke-interface {p1}, Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;->onRevealStateChanged()V

    .line 93
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->mRevealListener:Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;

    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;->onRevealEnd()V

    goto :goto_1

    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->animate()V

    :goto_1
    return-void
.end method
