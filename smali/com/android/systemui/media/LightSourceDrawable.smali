.class public final Lcom/android/systemui/media/LightSourceDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LightSourceDrawable.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLightSourceDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LightSourceDrawable.kt\ncom/android/systemui/media/LightSourceDrawable\n*L\n1#1,291:1\n*E\n"
.end annotation


# instance fields
.field private active:Z

.field private highlightColor:I

.field private paint:Landroid/graphics/Paint;

.field private pressed:Z

.field private rippleAnimation:Landroid/animation/Animator;

.field private final rippleData:Lcom/android/systemui/media/RippleData;

.field private themeAttrs:[I


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v8, Lcom/android/systemui/media/RippleData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/RippleData;-><init>(FFFFFFF)V

    iput-object v8, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/LightSourceDrawable;->paint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/media/LightSourceDrawable;->highlightColor:I

    return-void
.end method

.method public static final synthetic access$getRippleAnimation$p(Lcom/android/systemui/media/LightSourceDrawable;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleAnimation:Landroid/animation/Animator;

    return-object p0
.end method

.method public static final synthetic access$getRippleData$p(Lcom/android/systemui/media/LightSourceDrawable;)Lcom/android/systemui/media/RippleData;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    return-object p0
.end method

.method public static final synthetic access$obtainAttributes$s-761862978(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setRippleAnimation$p(Lcom/android/systemui/media/LightSourceDrawable;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleAnimation:Landroid/animation/Animator;

    return-void
.end method

.method private final illuminate()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/RippleData;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object v0, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/animation/Animator;

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x85

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getStartDelay()J

    move-result-wide v5

    const-wide/16 v7, 0x320

    sub-long v5, v7, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v5, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/android/systemui/media/LightSourceDrawable$illuminate$$inlined$apply$lambda$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/media/LightSourceDrawable$illuminate$$inlined$apply$lambda$1;-><init>(Lcom/android/systemui/media/LightSourceDrawable;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [F

    iget-object v4, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {v4}, Lcom/android/systemui/media/RippleData;->getProgress()F

    move-result v4

    aput v4, v2, v5

    const/4 v4, 0x1

    aput v1, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/systemui/media/LightSourceDrawable$illuminate$$inlined$apply$lambda$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/LightSourceDrawable$illuminate$$inlined$apply$lambda$2;-><init>(Lcom/android/systemui/media/LightSourceDrawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/android/systemui/media/LightSourceDrawable$illuminate$$inlined$apply$lambda$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/LightSourceDrawable$illuminate$$inlined$apply$lambda$3;-><init>(Lcom/android/systemui/media/LightSourceDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-object v0, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleAnimation:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private final setActive(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/media/LightSourceDrawable;->active:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/LightSourceDrawable;->active:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleAnimation:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/RippleData;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    const v0, 0x3d4ccccd    # 0.05f

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/RippleData;->setProgress(F)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleAnimation:Landroid/animation/Animator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_3
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {v1}, Lcom/android/systemui/media/RippleData;->getAlpha()F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/systemui/media/LightSourceDrawable$active$$inlined$apply$lambda$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/LightSourceDrawable$active$$inlined$apply$lambda$1;-><init>(Lcom/android/systemui/media/LightSourceDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/systemui/media/LightSourceDrawable$active$$inlined$apply$lambda$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/LightSourceDrawable$active$$inlined$apply$lambda$2;-><init>(Lcom/android/systemui/media/LightSourceDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleAnimation:Landroid/animation/Animator;

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private final updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3

    sget v0, Lcom/android/systemui/R$styleable;->IlluminationDrawable_rippleMinSize:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    sget v2, Lcom/android/systemui/R$styleable;->IlluminationDrawable_rippleMinSize:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/media/RippleData;->setMinSize(F)V

    :cond_0
    sget v0, Lcom/android/systemui/R$styleable;->IlluminationDrawable_rippleMaxSize:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    sget v2, Lcom/android/systemui/R$styleable;->IlluminationDrawable_rippleMaxSize:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/RippleData;->setMaxSize(F)V

    :cond_1
    sget v0, Lcom/android/systemui/R$styleable;->IlluminationDrawable_highlight:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    sget v0, Lcom/android/systemui/R$styleable;->IlluminationDrawable_highlight:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/RippleData;->setHighlight(F)V

    :cond_2
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Lcom/android/systemui/media/LightSourceDrawable;->themeAttrs:[I

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/systemui/R$styleable;->IlluminationDrawable:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/media/LightSourceDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/LightSourceDrawable;->themeAttrs:[I

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    array-length v0, v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {v0}, Lcom/android/systemui/media/RippleData;->getMinSize()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {v1}, Lcom/android/systemui/media/RippleData;->getMaxSize()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {v2}, Lcom/android/systemui/media/RippleData;->getProgress()F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/media/LightSourceDrawable;->highlightColor:I

    iget-object v2, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {v2}, Lcom/android/systemui/media/RippleData;->getAlpha()F

    move-result v2

    const/16 v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/media/LightSourceDrawable;->paint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/RadialGradient;

    iget-object v3, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {v3}, Lcom/android/systemui/media/RippleData;->getX()F

    move-result v4

    iget-object v3, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {v3}, Lcom/android/systemui/media/RippleData;->getY()F

    move-result v5

    const/4 v3, 0x2

    new-array v7, v3, [I

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v1, 0x1

    aput v3, v7, v1

    invoke-static {}, Lcom/android/systemui/media/LightSourceDrawableKt;->access$getGRADIENT_STOPS$p()[F

    move-result-object v8

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v10

    move v6, v0

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {v1}, Lcom/android/systemui/media/RippleData;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {v2}, Lcom/android/systemui/media/RippleData;->getY()F

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/media/LightSourceDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {v0}, Lcom/android/systemui/media/RippleData;->getMinSize()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {v1}, Lcom/android/systemui/media/RippleData;->getMaxSize()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {v2}, Lcom/android/systemui/media/RippleData;->getProgress()F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {v2}, Lcom/android/systemui/media/RippleData;->getX()F

    move-result v2

    sub-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {v3}, Lcom/android/systemui/media/RippleData;->getY()F

    move-result v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {v4}, Lcom/android/systemui/media/RippleData;->getX()F

    move-result v4

    add-float/2addr v4, v0

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {v5}, Lcom/android/systemui/media/RippleData;->getY()F

    move-result v5

    add-float/2addr v5, v0

    float-to-int v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    return-object v1
.end method

.method public final getHighlightColor()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/LightSourceDrawable;->highlightColor:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 0
    .param p1    # Landroid/graphics/Outline;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "outline"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public hasFocusStateSpecified()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "attrs"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/android/systemui/R$styleable;->IlluminationDrawable:[I

    invoke-static {p1, p4, p3, p2}, Lcom/android/systemui/media/LightSourceDrawable;->access$obtainAttributes$s-761862978(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/media/LightSourceDrawable;->themeAttrs:[I

    const-string p2, "a"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/media/LightSourceDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public isProjected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onStateChange([I)Z
    .locals 10
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/media/LightSourceDrawable;->pressed:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/media/LightSourceDrawable;->pressed:Z

    array-length v3, p1

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v4, v3, :cond_1

    aget v9, p1, v4

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    move v7, v8

    goto :goto_1

    :sswitch_1
    iput-boolean v8, p0, Lcom/android/systemui/media/LightSourceDrawable;->pressed:Z

    goto :goto_1

    :sswitch_2
    move v5, v8

    goto :goto_1

    :sswitch_3
    move v6, v8

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/media/LightSourceDrawable;->pressed:Z

    if-nez p1, :cond_2

    if-nez v6, :cond_2

    if-eqz v7, :cond_3

    :cond_2
    move v2, v8

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/systemui/media/LightSourceDrawable;->setActive(Z)V

    if-eqz v1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/media/LightSourceDrawable;->pressed:Z

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/media/LightSourceDrawable;->illuminate()V

    :cond_4
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x101009c -> :sswitch_3
        0x101009e -> :sswitch_2
        0x10100a7 -> :sswitch_1
        0x1010367 -> :sswitch_0
    .end sparse-switch
.end method

.method public setAlpha(I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Alpha is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Color filters are not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setHighlightColor(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/media/LightSourceDrawable;->highlightColor:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/media/LightSourceDrawable;->highlightColor:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/RippleData;->setX(F)V

    iget-object p1, p0, Lcom/android/systemui/media/LightSourceDrawable;->rippleData:Lcom/android/systemui/media/RippleData;

    invoke-virtual {p1, p2}, Lcom/android/systemui/media/RippleData;->setY(F)V

    iget-boolean p1, p0, Lcom/android/systemui/media/LightSourceDrawable;->active:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
