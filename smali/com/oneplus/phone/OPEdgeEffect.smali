.class public Lcom/oneplus/phone/OPEdgeEffect;
.super Ljava/lang/Object;
.source "OPEdgeEffect.java"


# static fields
.field private static final COS:F

.field private static final SIN:F


# instance fields
.field private mBaseGlowScale:F

.field private final mBounds:Landroid/graphics/Rect;

.field private mDisplacement:F

.field private mDuration:F

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPullDistance:F

.field private mRadius:F

.field private mStartTime:J

.field private mState:I

.field private mTargetDisplacement:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Lcom/oneplus/phone/OPEdgeEffect;->SIN:F

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/oneplus/phone/OPEdgeEffect;->COS:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 105
    iput p1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mState:I

    .line 109
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 110
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 113
    iput p1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mDisplacement:F

    .line 114
    iput p1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mTargetDisplacement:F

    .line 121
    iget-object p1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object p1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    const v1, -0x99999a

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object p1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object p1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    const-string v3, "persist.gesture_button.mode"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    aget-object v0, v2, v0

    invoke-direct {v1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 126
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private update()V
    .locals 5

    .line 356
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 357
    iget-wide v2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mDuration:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 359
    iget-object v1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 361
    iget v2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowAlphaStart:F

    iget v3, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowAlphaFinish:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowAlpha:F

    .line 362
    iget v2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleYStart:F

    iget v3, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleYFinish:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleY:F

    .line 363
    iget v1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mDisplacement:F

    iget v2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mTargetDisplacement:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mDisplacement:F

    const v1, 0x3f7fbe77    # 0.999f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    .line 366
    iget v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/4 v4, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    iput v4, p0, Lcom/oneplus/phone/OPEdgeEffect;->mState:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 395
    iput v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mState:I

    goto :goto_0

    .line 368
    :cond_2
    iput v4, p0, Lcom/oneplus/phone/OPEdgeEffect;->mState:I

    .line 369
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mStartTime:J

    const/high16 v0, 0x44160000    # 600.0f

    .line 370
    iput v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mDuration:F

    .line 372
    iget v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowAlphaStart:F

    .line 373
    iget v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleYStart:F

    .line 376
    iput v3, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowAlphaFinish:F

    .line 377
    iput v3, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 380
    :cond_3
    iput v2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mState:I

    .line 381
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mStartTime:J

    const/high16 v0, 0x44fa0000    # 2000.0f

    .line 382
    iput v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mDuration:F

    .line 384
    iget v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowAlphaStart:F

    .line 385
    iget v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleYStart:F

    .line 388
    iput v3, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowAlphaFinish:F

    .line 389
    iput v3, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleYFinish:F

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 7

    .line 319
    invoke-direct {p0}, Lcom/oneplus/phone/OPEdgeEffect;->update()V

    .line 321
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 323
    iget-object v1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    .line 324
    iget-object v2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/phone/OPEdgeEffect;->mRadius:F

    sub-float/2addr v2, v3

    .line 326
    iget v3, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleY:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v5, p0, Lcom/oneplus/phone/OPEdgeEffect;->mBaseGlowScale:F

    mul-float/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v3, v1, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 328
    iget v3, p0, Lcom/oneplus/phone/OPEdgeEffect;->mDisplacement:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    .line 329
    iget-object v4, p0, Lcom/oneplus/phone/OPEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    .line 332
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 333
    iget-object v3, p0, Lcom/oneplus/phone/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowAlpha:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 334
    iget v3, p0, Lcom/oneplus/phone/OPEdgeEffect;->mRadius:F

    iget-object v4, p0, Lcom/oneplus/phone/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 335
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 338
    iget p1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mState:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    iget p1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleY:F

    cmpl-float p1, p1, v5

    if-nez p1, :cond_0

    .line 339
    iput v1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mState:I

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 343
    :goto_0
    iget p0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mState:I

    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mState:I

    return-void
.end method

.method public isFinished()Z
    .locals 0

    .line 157
    iget p0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPull(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 182
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/phone/OPEdgeEffect;->onPull(FF)V

    return-void
.end method

.method public onPull(FF)V
    .locals 4

    .line 199
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 200
    iput p2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mTargetDisplacement:F

    .line 201
    iget p2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mState:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    iget-wide v2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float p2, v2

    iget v2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mDuration:F

    cmpg-float p2, p2, v2

    if-gez p2, :cond_0

    return-void

    .line 204
    :cond_0
    iget p2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v2, :cond_1

    .line 205
    iget p2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleY:F

    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleY:F

    .line 207
    :cond_1
    iput v2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mState:I

    .line 209
    iput-wide v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mStartTime:J

    const/high16 p2, 0x43270000    # 167.0f

    .line 210
    iput p2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mDuration:F

    .line 212
    iget p2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mPullDistance:F

    add-float/2addr p2, p1

    iput p2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mPullDistance:F

    .line 214
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v0, 0x3e19999a    # 0.15f

    .line 215
    iget v1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowAlpha:F

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr p2, v2

    add-float/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowAlphaStart:F

    iput p2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowAlpha:F

    .line 218
    iget p2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mPullDistance:F

    cmpl-float p2, p2, v3

    if-nez p2, :cond_2

    .line 219
    iput v3, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleYStart:F

    iput v3, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleY:F

    goto :goto_0

    .line 225
    :cond_2
    iput p1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleYStart:F

    iput p1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleY:F

    .line 228
    :goto_0
    iget p1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowAlpha:F

    iput p1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowAlphaFinish:F

    .line 229
    iget p1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleY:F

    iput p1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleYFinish:F

    return-void
.end method

.method public onRelease()V
    .locals 3

    const/4 v0, 0x0

    .line 239
    iput v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mPullDistance:F

    .line 241
    iget v1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 245
    iput v1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mState:I

    .line 246
    iget v1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowAlpha:F

    iput v1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowAlphaStart:F

    .line 247
    iget v1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleY:F

    iput v1, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleYStart:F

    .line 249
    iput v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowAlphaFinish:F

    .line 250
    iput v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mGlowScaleYFinish:F

    .line 252
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mStartTime:J

    const/high16 v0, 0x44160000    # 600.0f

    .line 253
    iput v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mDuration:F

    return-void
.end method

.method public setSize(II)V
    .locals 5

    int-to-float v0, p1

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    .line 136
    sget v2, Lcom/oneplus/phone/OPEdgeEffect;->SIN:F

    div-float/2addr v0, v2

    .line 137
    sget v3, Lcom/oneplus/phone/OPEdgeEffect;->COS:F

    mul-float v4, v3, v0

    sub-float v4, v0, v4

    int-to-float p2, p2

    mul-float/2addr v1, p2

    div-float/2addr v1, v2

    mul-float/2addr v3, v1

    sub-float/2addr v1, v3

    .line 143
    iput v0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mRadius:F

    const/4 v0, 0x0

    cmpl-float v0, v4, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    div-float/2addr v1, v4

    .line 144
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_0
    iput v2, p0, Lcom/oneplus/phone/OPEdgeEffect;->mBaseGlowScale:F

    .line 146
    iget-object p0, p0, Lcom/oneplus/phone/OPEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
