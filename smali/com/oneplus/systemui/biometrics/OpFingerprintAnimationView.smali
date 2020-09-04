.class public Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;
.super Landroid/widget/ImageView;
.source "OpFingerprintAnimationView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAnimationDuration:I

.field private mBackground:Landroid/graphics/drawable/AnimationDrawable;

.field private mFingerprintAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v0, "FingerprintAnimationView"

    .line 20
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->TAG:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView$1;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->mHandler:Landroid/os/Handler;

    .line 46
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "FingerprintAnimationView"

    .line 20
    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->TAG:Ljava/lang/String;

    .line 71
    new-instance p2, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView$1;

    invoke-direct {p2, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView$1;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;)V

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->mHandler:Landroid/os/Handler;

    .line 40
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "FingerprintAnimationView"

    .line 20
    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->TAG:Ljava/lang/String;

    .line 71
    new-instance p2, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView$1;

    invoke-direct {p2, p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView$1;-><init>(Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;)V

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->mHandler:Landroid/os/Handler;

    .line 34
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;)Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->mFingerprintAnimationCtrl:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    return-object p0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    .line 50
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    .line 52
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v0

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->mAnimationDuration:I

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 116
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->stopAnimation()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->mBackground:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    const/4 v0, 0x4

    .line 95
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
