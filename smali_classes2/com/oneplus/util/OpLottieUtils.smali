.class public Lcom/oneplus/util/OpLottieUtils;
.super Ljava/lang/Object;
.source "OpLottieUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpLottieUtils"


# instance fields
.field private mBg:Landroid/widget/ImageView;

.field private mClickedForAnim:Z

.field private mContext:Landroid/content/Context;

.field private mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

.field private mIsAnimating:Z

.field private mLottieAnimView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/oneplus/util/OpLottieUtils;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/oneplus/util/OpLottieUtils;->mBg:Landroid/widget/ImageView;

    .line 66
    iput-object p3, p0, Lcom/oneplus/util/OpLottieUtils;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/util/OpLottieUtils;)Lcom/airbnb/lottie/LottieDrawable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils;->mLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/util/OpLottieUtils;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils;->mLottieAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/util/OpLottieUtils;Lcom/android/systemui/plugins/qs/QSTile$State;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/oneplus/util/OpLottieUtils;->setBgAnimator(Lcom/android/systemui/plugins/qs/QSTile$State;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/util/OpLottieUtils;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/oneplus/util/OpLottieUtils;->onFinish(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/util/OpLottieUtils;)Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-object p0
.end method

.method private createLottieDrawable(Lcom/android/systemui/plugins/qs/QSTile$State;Z)Lcom/airbnb/lottie/LottieDrawable;
    .locals 2

    .line 118
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    .line 119
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->removeAllAnimatorListeners()V

    .line 120
    new-instance v1, Lcom/oneplus/util/-$$Lambda$OpLottieUtils$KLHs-jaR4W6vEh09AMB5gG5I_xY;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/util/-$$Lambda$OpLottieUtils$KLHs-jaR4W6vEh09AMB5gG5I_xY;-><init>(Lcom/oneplus/util/OpLottieUtils;Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 127
    new-instance v1, Lcom/oneplus/util/OpLottieUtils$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/util/OpLottieUtils$2;-><init>(Lcom/oneplus/util/OpLottieUtils;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getCurrentBgColor()I
    .locals 2

    .line 187
    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils;->mBg:Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 188
    sget-object p0, Lcom/oneplus/util/OpLottieUtils;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentBgColor: mBg is null."

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 192
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    :cond_1
    return v0
.end method

.method private static getCurrentShape(Landroid/content/Context;)I
    .locals 2

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_shape"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getCurrentShapeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 298
    invoke-static {p0}, Lcom/oneplus/util/OpLottieUtils;->getCurrentShape(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "circle"

    return-object p0

    :cond_0
    const-string p0, "squircle"

    return-object p0

    :cond_1
    const-string p0, "teardrop"

    return-object p0

    :cond_2
    const-string p0, "roundedrect"

    return-object p0
.end method

.method private getLottieAnimFile(Lcom/android/systemui/plugins/qs/QSTile$State;)Ljava/lang/String;
    .locals 4

    .line 205
    invoke-virtual {p0, p1}, Lcom/oneplus/util/OpLottieUtils;->isNeedLottie(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 209
    :cond_0
    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 212
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->lottiePrefix:Ljava/lang/CharSequence;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, "_"

    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/util/OpLottieUtils;->getCurrentShapeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz p0, :cond_3

    if-eq p0, v1, :cond_2

    const-string p0, "inactive"

    .line 222
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string p0, "active"

    .line 218
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string p0, "unavailable"

    .line 225
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eqz v0, :cond_4

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "android"

    .line 230
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p0, ".json"

    .line 232
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isCurShapeNeedLottie(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 265
    :cond_0
    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/util/OpLottieUtils;->getCurrentShape(Landroid/content/Context;)I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    const/4 v3, 0x4

    if-eq p0, v1, :cond_2

    if-eq p0, v3, :cond_1

    .line 268
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->lottieSupport:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_4

    return v2

    .line 283
    :cond_1
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->lottieSupport:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_4

    return v2

    .line 278
    :cond_2
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->lottieSupport:I

    and-int/2addr p0, v3

    if-eqz p0, :cond_4

    return v2

    .line 273
    :cond_3
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->lottieSupport:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method private isCurStateNeedLottie(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 240
    :cond_0
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 248
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->lottieSupport:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_3

    return v1

    .line 242
    :cond_1
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->lottieSupport:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_3

    return v1

    .line 253
    :cond_2
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->lottieSupport:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return p0
.end method

.method private synthetic lambda$createLottieDrawable$0(Lcom/airbnb/lottie/LottieDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils;->mBg:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->cancelAnimation()V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 124
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setBgAnimator$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/oneplus/util/OpLottieUtils;->mBg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private onFinish(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/oneplus/util/OpLottieUtils;->mBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 197
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 198
    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getCircleColorForState(I)I

    move-result p1

    .line 197
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    const/4 p1, 0x0

    .line 200
    iput-boolean p1, p0, Lcom/oneplus/util/OpLottieUtils;->mClickedForAnim:Z

    .line 201
    iput-boolean p1, p0, Lcom/oneplus/util/OpLottieUtils;->mIsAnimating:Z

    return-void
.end method

.method private setBgAnimator(Lcom/android/systemui/plugins/qs/QSTile$State;)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 165
    invoke-direct {p0}, Lcom/oneplus/util/OpLottieUtils;->getCurrentBgColor()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getCircleColorForState(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/oneplus/util/-$$Lambda$OpLottieUtils$pyRyLRZa5U9o76ho7ClFEwqqfI8;

    invoke-direct {v1, p0}, Lcom/oneplus/util/-$$Lambda$OpLottieUtils$pyRyLRZa5U9o76ho7ClFEwqqfI8;-><init>(Lcom/oneplus/util/OpLottieUtils;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 169
    new-instance v1, Lcom/oneplus/util/OpLottieUtils$3;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/util/OpLottieUtils$3;-><init>(Lcom/oneplus/util/OpLottieUtils;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method


# virtual methods
.method public applyLottieAnimIfNeeded(Landroid/widget/FrameLayout;Lcom/android/systemui/plugins/qs/QSTile$State;Z)Z
    .locals 3

    .line 80
    iget-boolean v0, p0, Lcom/oneplus/util/OpLottieUtils;->mIsAnimating:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/oneplus/util/OpLottieUtils;->isNeedLottie(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/oneplus/util/OpLottieUtils;->mIsAnimating:Z

    .line 85
    iget-object v1, p0, Lcom/oneplus/util/OpLottieUtils;->mLottieAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v1, :cond_1

    .line 86
    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v2, p0, Lcom/oneplus/util/OpLottieUtils;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/util/OpLottieUtils;->mLottieAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 87
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 88
    invoke-direct {p0, p2, p3}, Lcom/oneplus/util/OpLottieUtils;->createLottieDrawable(Lcom/android/systemui/plugins/qs/QSTile$State;Z)Lcom/airbnb/lottie/LottieDrawable;

    move-result-object p3

    iput-object p3, p0, Lcom/oneplus/util/OpLottieUtils;->mLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 89
    iget-object v1, p0, Lcom/oneplus/util/OpLottieUtils;->mLottieAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object p3, p0, Lcom/oneplus/util/OpLottieUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_background_size:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 92
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x11

    .line 93
    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 94
    iget-object p3, p0, Lcom/oneplus/util/OpLottieUtils;->mLottieAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p3, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/oneplus/util/OpLottieUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/oneplus/util/OpLottieUtils;->getLottieAnimFile(Lcom/android/systemui/plugins/qs/QSTile$State;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/oneplus/util/OpLottieUtils$1;

    invoke-direct {p3, p0}, Lcom/oneplus/util/OpLottieUtils$1;-><init>(Lcom/oneplus/util/OpLottieUtils;)V

    invoke-static {p1, p2, p3}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromAssetFileName(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNeedLottie(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 111
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->lottiePrefix:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/util/OpLottieUtils;->mClickedForAnim:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/util/OpLottieUtils;->isCurStateNeedLottie(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/oneplus/util/OpLottieUtils;->isCurShapeNeedLottie(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public synthetic lambda$createLottieDrawable$0$OpLottieUtils(Lcom/airbnb/lottie/LottieDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/util/OpLottieUtils;->lambda$createLottieDrawable$0(Lcom/airbnb/lottie/LottieDrawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$setBgAnimator$1$OpLottieUtils(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/util/OpLottieUtils;->lambda$setBgAnimator$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 70
    iget-boolean v0, p0, Lcom/oneplus/util/OpLottieUtils;->mIsAnimating:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 74
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/util/OpLottieUtils;->mClickedForAnim:Z

    const/4 p0, 0x0

    return p0
.end method
