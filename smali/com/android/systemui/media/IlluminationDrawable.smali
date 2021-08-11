.class public final Lcom/android/systemui/media/IlluminationDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IlluminationDrawable.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIlluminationDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IlluminationDrawable.kt\ncom/android/systemui/media/IlluminationDrawable\n*L\n1#1,179:1\n*E\n"
.end annotation


# instance fields
.field private backgroundAnimation:Landroid/animation/ValueAnimator;

.field private backgroundColor:I

.field private cornerRadius:F

.field private highlight:F

.field private highlightColor:I

.field private final lightSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/media/LightSourceDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private paint:Landroid/graphics/Paint;

.field private themeAttrs:[I

.field private tmpHsl:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->tmpHsl:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->paint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->lightSources:Ljava/util/ArrayList;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static final synthetic access$getBackgroundAnimation$p(Lcom/android/systemui/media/IlluminationDrawable;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/IlluminationDrawable;->backgroundAnimation:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic access$getBackgroundColor$p(Lcom/android/systemui/media/IlluminationDrawable;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/IlluminationDrawable;->backgroundColor:I

    return p0
.end method

.method public static final synthetic access$getHighlightColor$p(Lcom/android/systemui/media/IlluminationDrawable;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/IlluminationDrawable;->highlightColor:I

    return p0
.end method

.method public static final synthetic access$getLightSources$p(Lcom/android/systemui/media/IlluminationDrawable;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/IlluminationDrawable;->lightSources:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getPaint$p(Lcom/android/systemui/media/IlluminationDrawable;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/IlluminationDrawable;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static final synthetic access$obtainAttributes$s-761862978(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setBackgroundAnimation$p(Lcom/android/systemui/media/IlluminationDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/IlluminationDrawable;->backgroundAnimation:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setBackgroundColor$p(Lcom/android/systemui/media/IlluminationDrawable;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/IlluminationDrawable;->setBackgroundColor(I)V

    return-void
.end method

.method public static final synthetic access$setHighlightColor$p(Lcom/android/systemui/media/IlluminationDrawable;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/media/IlluminationDrawable;->highlightColor:I

    return-void
.end method

.method public static final synthetic access$setPaint$p(Lcom/android/systemui/media/IlluminationDrawable;Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/IlluminationDrawable;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method private final animateBackground()V
    .locals 6

    iget v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->backgroundColor:I

    iget-object v1, p0, Lcom/android/systemui/media/IlluminationDrawable;->tmpHsl:[F

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    iget-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->tmpHsl:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    iget v3, p0, Lcom/android/systemui/media/IlluminationDrawable;->highlight:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v3

    cmpg-float v5, v2, v5

    if-gez v5, :cond_0

    add-float/2addr v2, v3

    goto :goto_0

    :cond_0
    sub-float/2addr v2, v3

    :goto_0
    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/IlluminationDrawable;->highlightColor:I

    iget-object v3, p0, Lcom/android/systemui/media/IlluminationDrawable;->tmpHsl:[F

    invoke-static {v3}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/media/IlluminationDrawable;->backgroundAnimation:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v4, 0x172

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$$inlined$apply$lambda$1;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$$inlined$apply$lambda$1;-><init>(Lcom/android/systemui/media/IlluminationDrawable;III)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$$inlined$apply$lambda$2;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/android/systemui/media/IlluminationDrawable$animateBackground$$inlined$apply$lambda$2;-><init>(Lcom/android/systemui/media/IlluminationDrawable;III)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iput-object v1, p0, Lcom/android/systemui/media/IlluminationDrawable;->backgroundAnimation:Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final setBackgroundColor(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->backgroundColor:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/media/IlluminationDrawable;->backgroundColor:I

    invoke-direct {p0}, Lcom/android/systemui/media/IlluminationDrawable;->animateBackground()V

    return-void
.end method

.method private final updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 2

    sget v0, Lcom/android/systemui/R$styleable;->IlluminationDrawable_cornerRadius:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$styleable;->IlluminationDrawable_cornerRadius:I

    iget v1, p0, Lcom/android/systemui/media/IlluminationDrawable;->cornerRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->cornerRadius:F

    :cond_0
    sget v0, Lcom/android/systemui/R$styleable;->IlluminationDrawable_highlight:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/R$styleable;->IlluminationDrawable_highlight:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/media/IlluminationDrawable;->highlight:F

    :cond_1
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

    iget-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->themeAttrs:[I

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/systemui/R$styleable;->IlluminationDrawable:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/media/IlluminationDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/IlluminationDrawable;->themeAttrs:[I

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
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v5, v0

    iget v7, p0, Lcom/android/systemui/media/IlluminationDrawable;->cornerRadius:F

    iget-object v8, p0, Lcom/android/systemui/media/IlluminationDrawable;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1    # Landroid/graphics/Outline;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/media/IlluminationDrawable;->cornerRadius:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
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

    invoke-static {p1, p4, p3, p2}, Lcom/android/systemui/media/IlluminationDrawable;->access$obtainAttributes$s-761862978(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/media/IlluminationDrawable;->themeAttrs:[I

    const-string p2, "a"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/media/IlluminationDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final registerLightSource(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "lightSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/media/LightSourceDrawable;

    const-string v1, "null cannot be cast to non-null type com.android.systemui.media.LightSourceDrawable"

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/IlluminationDrawable;->lightSources:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/android/systemui/media/LightSourceDrawable;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/media/LightSourceDrawable;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/media/IlluminationDrawable;->lightSources:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/android/systemui/media/LightSourceDrawable;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
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

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/media/IlluminationDrawable;->setBackgroundColor(I)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0
.end method
