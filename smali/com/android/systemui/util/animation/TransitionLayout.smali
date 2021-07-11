.class public final Lcom/android/systemui/util/animation/TransitionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "TransitionLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransitionLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransitionLayout.kt\ncom/android/systemui/util/animation/TransitionLayout\n*L\n1#1,368:1\n*E\n"
.end annotation


# instance fields
.field private final boundsRect:Landroid/graphics/Rect;

.field private currentState:Lcom/android/systemui/util/animation/TransitionViewState;

.field private desiredMeasureHeight:I

.field private desiredMeasureWidth:I

.field private measureAsConstraint:Z

.field private final originalGoneChildrenSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final originalViewAlphas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final preDrawApplicator:Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;

.field private updateScheduled:Z


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

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/util/animation/TransitionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/util/animation/TransitionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->boundsRect:Landroid/graphics/Rect;

    .line 44
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->originalGoneChildrenSet:Ljava/util/Set;

    .line 45
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->originalViewAlphas:Ljava/util/Map;

    .line 47
    new-instance p1, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p1}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 57
    new-instance p1, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p1}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    .line 73
    new-instance p1, Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;-><init>(Lcom/android/systemui/util/animation/TransitionLayout;)V

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->preDrawApplicator:Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;

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

    .line 40
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/util/animation/TransitionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$applyCurrentState(Lcom/android/systemui/util/animation/TransitionLayout;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/util/animation/TransitionLayout;->applyCurrentState()V

    return-void
.end method

.method public static final synthetic access$setUpdateScheduled$p(Lcom/android/systemui/util/animation/TransitionLayout;Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->updateScheduled:Z

    return-void
.end method

.method private final applyCurrentState()V
    .locals 12

    .line 101
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v1}, Lcom/android/systemui/util/animation/TransitionViewState;->getContentTranslation()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    .line 103
    iget-object v2, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v2}, Lcom/android/systemui/util/animation/TransitionViewState;->getContentTranslation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_c

    .line 105
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 106
    iget-object v6, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v6}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v6

    const-string v7, "child"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/util/animation/WidgetState;

    if-eqz v6, :cond_b

    .line 118
    instance-of v7, v5, Landroid/widget/TextView;

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureWidth()I

    move-result v8

    if-ge v7, v8, :cond_1

    move-object v7, v5

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 120
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 121
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureWidth()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_1

    :cond_0
    move v7, v3

    .line 120
    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    .line 130
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureWidth()I

    move-result v9

    if-ne v8, v9, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureHeight()I

    move-result v9

    if-eq v8, v9, :cond_3

    .line 131
    :cond_2
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureWidth()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 133
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureHeight()I

    move-result v10

    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 135
    invoke-virtual {v5, v8, v9}, Landroid/view/View;->measure(II)V

    .line 136
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v5, v3, v3, v8, v9}, Landroid/view/View;->layout(IIII)V

    :cond_3
    if-eqz v7, :cond_4

    .line 138
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_3

    :cond_4
    move v8, v3

    .line 139
    :goto_3
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getX()F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v9, v1

    sub-int/2addr v9, v8

    .line 140
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getY()F

    move-result v10

    float-to-int v10, v10

    add-int/2addr v10, v2

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    move v7, v3

    :goto_4
    if-eqz v7, :cond_6

    .line 142
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureWidth()I

    move-result v11

    goto :goto_5

    :cond_6
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getWidth()I

    move-result v11

    :goto_5
    if-eqz v7, :cond_7

    .line 143
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureHeight()I

    move-result v7

    goto :goto_6

    :cond_7
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getHeight()I

    move-result v7

    :goto_6
    add-int/2addr v11, v9

    add-int/2addr v7, v10

    .line 144
    invoke-virtual {v5, v9, v10, v11, v7}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 145
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getScale()F

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleX(F)V

    .line 146
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getScale()F

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setScaleY(F)V

    .line 147
    invoke-virtual {v5}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_8

    goto :goto_7

    :cond_8
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 148
    :goto_7
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getHeight()I

    move-result v10

    invoke-virtual {v7, v8, v3, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 149
    invoke-virtual {v5, v7}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 150
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getAlpha()F

    move-result v7

    invoke-static {v5, v7}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    .line 151
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getGone()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-nez v6, :cond_9

    goto :goto_8

    :cond_9
    move v6, v3

    goto :goto_9

    :cond_a
    :goto_8
    const/4 v6, 0x4

    :goto_9
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 157
    :cond_c
    invoke-direct {p0}, Lcom/android/systemui/util/animation/TransitionLayout;->updateBounds()V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/TransitionViewState;->getTranslation()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/TransitionViewState;->getTranslation()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/TransitionViewState;->getAlpha()F

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    return-void
.end method

.method private final applyCurrentStateOnPredraw()V
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->updateScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->updateScheduled:Z

    .line 166
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->preDrawApplicator:Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private final applySetToFullLayout(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 5

    .line 257
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 259
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 260
    iget-object v3, p0, Lcom/android/systemui/util/animation/TransitionLayout;->originalGoneChildrenSet:Ljava/util/Set;

    const-string v4, "child"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    .line 261
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 264
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/util/animation/TransitionLayout;->originalViewAlphas:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private final ensureViewsNotGone()V
    .locals 6

    .line 275
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 277
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 278
    iget-object v4, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v4}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v4

    const-string v5, "child"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/animation/WidgetState;

    if-eqz v4, :cond_1

    .line 279
    invoke-virtual {v4}, Lcom/android/systemui/util/animation/WidgetState;->getGone()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x4

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final updateBounds()V
    .locals 4

    .line 209
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    .line 210
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    .line 211
    iget-object v2, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v2}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 212
    iget-object v3, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v3}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 211
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setLeftTopRightBottom(IIII)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->boundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public final calculateViewState(Lcom/android/systemui/util/animation/MeasurementInput;Landroidx/constraintlayout/widget/ConstraintSet;Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 4
    .param p1    # Lcom/android/systemui/util/animation/MeasurementInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/constraintlayout/widget/ConstraintSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/util/animation/TransitionViewState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constraintSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    new-instance p3, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p3}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    .line 232
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/systemui/util/animation/TransitionLayout;->applySetToFullLayout(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 233
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    .line 234
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x1

    .line 237
    iput-boolean v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->measureAsConstraint:Z

    .line 238
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/MeasurementInput;->getWidthMeasureSpec()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/MeasurementInput;->getHeightMeasureSpec()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->measure(II)V

    .line 239
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p1

    .line 240
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    .line 241
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p1, v1, v2, v3}, Landroid/view/ViewGroup;->layout(IIII)V

    const/4 p1, 0x0

    .line 242
    iput-boolean p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->measureAsConstraint:Z

    .line 243
    invoke-virtual {p3, p0}, Lcom/android/systemui/util/animation/TransitionViewState;->initFromLayout(Lcom/android/systemui/util/animation/TransitionLayout;)V

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/util/animation/TransitionLayout;->ensureViewsNotGone()V

    .line 247
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/util/animation/TransitionLayout;->applyCurrentStateOnPredraw()V

    return-object p3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_0
    if-eqz p1, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->boundsRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 204
    :cond_1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_2

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 83
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 84
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 86
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "child"

    .line 87
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 88
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 90
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 91
    iget-object v3, p0, Lcom/android/systemui/util/animation/TransitionLayout;->originalGoneChildrenSet:Ljava/util/Set;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/util/animation/TransitionLayout;->originalViewAlphas:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 188
    iget-boolean p2, p0, Lcom/android/systemui/util/animation/TransitionLayout;->measureAsConstraint:Z

    if-eqz p2, :cond_0

    .line 189
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    move-object v0, p0

    move v1, p1

    invoke-super/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    goto :goto_1

    .line 191
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    .line 193
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    const-string p5, "child"

    .line 194
    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p4, p2, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 197
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/util/animation/TransitionLayout;->applyCurrentState()V

    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 171
    iget-boolean v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->measureAsConstraint:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 174
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_2

    .line 175
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v1

    const-string v2, "child"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/animation/WidgetState;

    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {v1}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 179
    invoke-virtual {v1}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureHeight()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 181
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 183
    :cond_2
    iget p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->desiredMeasureWidth:I

    iget p2, p0, Lcom/android/systemui/util/animation/TransitionLayout;->desiredMeasureHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_1
    return-void
.end method

.method public final setMeasureState(Lcom/android/systemui/util/animation/TransitionViewState;)V
    .locals 2
    .param p1    # Lcom/android/systemui/util/animation/TransitionViewState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result v0

    .line 60
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result p1

    .line 61
    iget v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->desiredMeasureWidth:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->desiredMeasureHeight:I

    if-eq p1, v1, :cond_2

    .line 62
    :cond_0
    iput v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->desiredMeasureWidth:I

    .line 63
    iput p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->desiredMeasureHeight:I

    .line 66
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->forceLayout()V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setState(Lcom/android/systemui/util/animation/TransitionViewState;)V
    .locals 1
    .param p1    # Lcom/android/systemui/util/animation/TransitionViewState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 289
    invoke-direct {p0}, Lcom/android/systemui/util/animation/TransitionLayout;->applyCurrentState()V

    return-void
.end method
