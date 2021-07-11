.class public Lcom/oneplus/aod/OpWakingUpScrim;
.super Landroid/view/View;
.source "OpWakingUpScrim.java"


# instance fields
.field private mAnimationFrame:F

.field private mAnimationInitAlpha:F

.field private mCenterX:I

.field private mCenterY:I

.field private mCircle1Colr:I

.field private mCircle2Colr:I

.field private mCircle3Colr:I

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRadius:F

.field private mTestPaint:Landroid/graphics/Paint;

.field private mTestUnlockSpeed:Z

.field private mWidth:I

.field private mWithoutDelayAnimationDuration:I

.field private mWithoutDelayAnimationStartFrame:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/OpWakingUpScrim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OpWakingUpScrim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationStartFrame:F

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationDuration:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 37
    iput p2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationInitAlpha:F

    .line 42
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    const/high16 p1, -0x1000000

    .line 52
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle1Colr:I

    .line 53
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle2Colr:I

    .line 54
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    .line 67
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mPaint:Landroid/graphics/Paint;

    .line 68
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    iget-object p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCirclePaint:Landroid/graphics/Paint;

    .line 73
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mTestPaint:Landroid/graphics/Paint;

    .line 74
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mTestPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mTestPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 78
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/aod/OpWakingUpScrim;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpWakingUpScrim;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWidth:I

    return p0
.end method

.method static synthetic access$202(Lcom/oneplus/aod/OpWakingUpScrim;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationFrame:F

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/aod/OpWakingUpScrim;F)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpWakingUpScrim;->calculateCircleColor(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/aod/OpWakingUpScrim;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationInitAlpha:F

    return p0
.end method

.method private calculateCircleColor(F)V
    .locals 10

    .line 276
    iget v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWidth:I

    int-to-float v0, v0

    const v1, 0x41033333    # 8.2f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float v1, v0, v1

    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    .line 282
    iget v3, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    cmpl-float v4, v0, v3

    const v5, 0x3f4f5c29    # 0.81f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const v8, 0x3f68f5c3    # 0.91f

    if-ltz v4, :cond_2

    cmpl-float v4, v3, v1

    if-ltz v4, :cond_2

    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    sub-float p1, v0, v3

    sub-float v2, v0, v2

    div-float/2addr p1, v2

    mul-float/2addr p1, v8

    move v7, p1

    goto :goto_0

    :cond_0
    sub-float/2addr v6, p1

    cmpg-float p1, v8, v6

    if-gez p1, :cond_1

    move v8, v6

    :cond_1
    move v7, v8

    :goto_0
    mul-float/2addr v5, v7

    .line 289
    iget p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    sub-float p1, v0, p1

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    mul-float/2addr p1, v5

    move v9, v7

    move v7, p1

    move p1, v9

    goto :goto_2

    .line 290
    :cond_2
    iget v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    sub-float/2addr v6, p1

    cmpg-float p1, v8, v6

    if-gez p1, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v8

    :goto_1
    mul-float/2addr v5, v7

    cmpl-float p1, v6, v5

    if-lez p1, :cond_4

    move v5, v6

    :cond_4
    move p1, v7

    move v7, v5

    goto :goto_2

    :cond_5
    move p1, v7

    .line 297
    :goto_2
    invoke-direct {p0, v7}, Lcom/oneplus/aod/OpWakingUpScrim;->getColor(F)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle1Colr:I

    .line 298
    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpWakingUpScrim;->getColor(F)I

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle2Colr:I

    return-void
.end method

.method private getColor(F)I
    .locals 1

    .line 271
    iget p0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public getDisappearAnimationWithDelay()Landroid/animation/AnimatorSet;
    .locals 7

    .line 220
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 222
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 223
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 224
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x1db

    .line 225
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 226
    new-instance v2, Lcom/oneplus/aod/OpWakingUpScrim$3;

    invoke-direct {v2, p0}, Lcom/oneplus/aod/OpWakingUpScrim$3;-><init>(Lcom/oneplus/aod/OpWakingUpScrim;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 240
    new-instance v2, Lcom/oneplus/aod/OpWakingUpScrim$4;

    invoke-direct {v2, p0}, Lcom/oneplus/aod/OpWakingUpScrim$4;-><init>(Lcom/oneplus/aod/OpWakingUpScrim;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    .line 265
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getDisappearAnimationWithoutDelay(Z)Landroid/animation/Animator;
    .locals 6

    .line 165
    iget v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationStartFrame:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    const/16 v2, 0x1db

    if-eqz p1, :cond_1

    .line 166
    iget p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationDuration:I

    if-lez p1, :cond_1

    move v2, p1

    .line 168
    :cond_1
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v0

    .line 170
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v2, v2

    .line 171
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 173
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a    # 0.3f

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v2, v3, v1, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 174
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 175
    new-instance v1, Lcom/oneplus/aod/OpWakingUpScrim$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpWakingUpScrim$1;-><init>(Lcom/oneplus/aod/OpWakingUpScrim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 189
    new-instance v1, Lcom/oneplus/aod/OpWakingUpScrim$2;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpWakingUpScrim$2;-><init>(Lcom/oneplus/aod/OpWakingUpScrim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 215
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 93
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    iget-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 96
    iget-object v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mHeight:I

    int-to-float v5, v0

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 97
    iget-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCenterY:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 101
    iget-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 102
    iget-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCenterX:I

    int-to-float v3, v1

    iget v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCenterY:I

    int-to-float v4, v1

    iget v5, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    const/4 v1, 0x3

    new-array v6, v1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle1Colr:I

    aput v2, v6, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle2Colr:I

    aput v2, v6, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    aput v2, v6, v1

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 112
    iget-object v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 113
    iget v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    iget-object v3, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 116
    iget-boolean v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mTestUnlockSpeed:Z

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 118
    iget v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationFrame:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mTestPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 120
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_1

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mTestUnlockSpeed draw mRadius: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationFrame:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpWakingUpScrim"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 127
    iget-object v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 85
    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWidth:I

    .line 86
    iput p2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mHeight:I

    .line 87
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCenterX:I

    .line 88
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCenterY:I

    return-void
.end method

.method public reset()V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 133
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mRadius:F

    const-string v0, "debug.wakingup.scrim"

    const/4 v1, 0x0

    .line 136
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mTestUnlockSpeed:Z

    const-string v2, "OpWakingUpScrim"

    if-eqz v0, :cond_0

    const-string v0, "debug.wakingup.scrim.animation.start.frame"

    .line 138
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    iput v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationStartFrame:F

    const-string v0, "debug.wakingup.scrim.animation.start.duration"

    .line 139
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationDuration:I

    const/16 v0, 0x64

    const-string v4, "debug.wakingup.scrim.animation.init.alpha"

    .line 140
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationInitAlpha:F

    .line 141
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debug AnimationStartFrame:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationStartFrame:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " AnimationDuration:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mWithoutDelayAnimationDuration:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mAnimationInitAlpha:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mAnimationInitAlpha:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "debug.wakingup.scrim2"

    .line 149
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "debug.wakingup.scrim.color"

    const-string v3, "FF000000"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 152
    iput v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle1Colr:I

    .line 153
    iput v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle2Colr:I

    .line 154
    iput v1, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    .line 155
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_1

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debug mCircle3Colr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/aod/OpWakingUpScrim;->mCircle3Colr:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " debugColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " debugColorText:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
