.class public final Lcom/android/systemui/media/MediaScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "MediaScrollView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaScrollView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaScrollView.kt\ncom/android/systemui/media/MediaScrollView\n*L\n1#1,131:1\n*E\n"
.end annotation


# instance fields
.field private animationTargetX:F

.field private contentContainer:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private touchListener:Lcom/android/systemui/Gefingerpoken;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/MediaScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/MediaScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 20
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final transformScrollX(I)I
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/systemui/media/MediaScrollView;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p0

    sub-int/2addr v0, p0

    sub-int p1, v0, p1

    goto :goto_0

    :cond_0
    const-string p0, "contentContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public final cancelCurrentScroll()V
    .locals 8

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v2

    .line 125
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const-string v1, "event"

    .line 127
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 128
    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 129
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final getContentContainer()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/android/systemui/media/MediaScrollView;->contentContainer:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "contentContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getContentTranslation()F
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/android/systemui/media/MediaScrollView;->contentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const-string v2, "contentContainer"

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->getPhysicsAnimator(Landroid/view/View;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget p0, p0, Lcom/android/systemui/media/MediaScrollView;->animationTargetX:F

    goto :goto_0

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaScrollView;->contentContainer:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result p0

    :goto_0
    return p0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getRelativeScrollX()I
    .locals 1

    .line 58
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaScrollView;->transformScrollX(I)I

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/media/MediaScrollView;->contentContainer:Landroid/view/ViewGroup;

    return-void

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 82
    iget-object v0, p0, Lcom/android/systemui/media/MediaScrollView;->touchListener:Lcom/android/systemui/Gefingerpoken;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p1}, Lcom/android/systemui/Gefingerpoken;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 85
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 90
    iget-object v0, p0, Lcom/android/systemui/media/MediaScrollView;->touchListener:Lcom/android/systemui/Gefingerpoken;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p1}, Lcom/android/systemui/Gefingerpoken;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 93
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaScrollView;->getContentTranslation()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 116
    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method public scrollTo(II)V
    .locals 2

    .line 67
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    if-eq v0, p2, :cond_1

    .line 68
    :cond_0
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 69
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 70
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    .line 71
    iput p2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    .line 72
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidateParentCaches()V

    .line 73
    iget p1, p0, Landroid/widget/HorizontalScrollView;->mScrollX:I

    iget p2, p0, Landroid/widget/HorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 74
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_1

    .line 75
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method public final setAnimationTargetX(F)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/android/systemui/media/MediaScrollView;->animationTargetX:F

    return-void
.end method

.method public final setRelativeScrollX(I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaScrollView;->transformScrollX(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    return-void
.end method

.method public final setTouchListener(Lcom/android/systemui/Gefingerpoken;)V
    .locals 0
    .param p1    # Lcom/android/systemui/Gefingerpoken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 26
    iput-object p1, p0, Lcom/android/systemui/media/MediaScrollView;->touchListener:Lcom/android/systemui/Gefingerpoken;

    return-void
.end method
