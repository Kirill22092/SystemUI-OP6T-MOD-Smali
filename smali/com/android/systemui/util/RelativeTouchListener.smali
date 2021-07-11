.class public abstract Lcom/android/systemui/util/RelativeTouchListener;
.super Ljava/lang/Object;
.source "RelativeTouchListener.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRelativeTouchListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RelativeTouchListener.kt\ncom/android/systemui/util/RelativeTouchListener\n*L\n1#1,164:1\n*E\n"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private movedEnough:Z

.field private performedLongClick:Z

.field private final touchDown:Landroid/graphics/PointF;

.field private touchSlop:I

.field private final velocityTracker:Landroid/view/VelocityTracker;

.field private final viewPositionOnTouchDown:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    .line 86
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    .line 88
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lcom/android/systemui/util/RelativeTouchListener;->touchSlop:I

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/RelativeTouchListener;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$setPerformedLongClick$p(Lcom/android/systemui/util/RelativeTouchListener;Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/util/RelativeTouchListener;->performedLongClick:Z

    return-void
.end method

.method private final addMovement(Landroid/view/MotionEvent;)V
    .locals 3

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 160
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 161
    iget-object p0, p0, Lcom/android/systemui/util/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float p0, v0

    neg-float v0, v1

    .line 162
    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method


# virtual methods
.method public abstract onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFF)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ev"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, p2}, Lcom/android/systemui/util/RelativeTouchListener;->addMovement(Landroid/view/MotionEvent;)V

    .line 100
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/util/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v7, v0, v1

    .line 101
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/util/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v8, v0, v1

    .line 103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    if-eq v0, v11, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/util/RelativeTouchListener;->movedEnough:Z

    if-nez v0, :cond_1

    float-to-double v0, v7

    float-to-double v3, v8

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/util/RelativeTouchListener;->touchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/util/RelativeTouchListener;->performedLongClick:Z

    if-nez v0, :cond_1

    .line 126
    iput-boolean v11, p0, Lcom/android/systemui/util/RelativeTouchListener;->movedEnough:Z

    .line 127
    iget-object v0, p0, Lcom/android/systemui/util/RelativeTouchListener;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 130
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/util/RelativeTouchListener;->movedEnough:Z

    if-eqz v0, :cond_7

    .line 131
    iget-object v0, p0, Lcom/android/systemui/util/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/util/RelativeTouchListener;->onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFF)V

    goto/16 :goto_1

    .line 136
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/util/RelativeTouchListener;->movedEnough:Z

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/android/systemui/util/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/util/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    .line 139
    iget-object v0, p0, Lcom/android/systemui/util/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    const-string/jumbo v2, "velocityTracker"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    iget-object v0, p0, Lcom/android/systemui/util/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 138
    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/util/RelativeTouchListener;->onUp(Landroid/view/View;Landroid/view/MotionEvent;FFFFFF)V

    goto :goto_0

    .line 140
    :cond_3
    iget-boolean p2, p0, Lcom/android/systemui/util/RelativeTouchListener;->performedLongClick:Z

    if-nez p2, :cond_4

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 143
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/util/RelativeTouchListener;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 146
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/util/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 147
    iput-boolean v1, p0, Lcom/android/systemui/util/RelativeTouchListener;->movedEnough:Z

    goto :goto_1

    .line 105
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/RelativeTouchListener;->onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 111
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const-string v2, "ViewConfiguration.get(v.context)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/util/RelativeTouchListener;->touchSlop:I

    .line 113
    iget-object v0, p0, Lcom/android/systemui/util/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {v0, v2, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 114
    iget-object p2, p0, Lcom/android/systemui/util/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 116
    iput-boolean v1, p0, Lcom/android/systemui/util/RelativeTouchListener;->performedLongClick:Z

    .line 117
    iget-object p2, p0, Lcom/android/systemui/util/RelativeTouchListener;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/util/RelativeTouchListener$onTouch$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/RelativeTouchListener$onTouch$1;-><init>(Lcom/android/systemui/util/RelativeTouchListener;Landroid/view/View;)V

    .line 121
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p0

    int-to-long p0, p0

    .line 117
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_1
    return v11
.end method

.method public abstract onUp(Landroid/view/View;Landroid/view/MotionEvent;FFFFFF)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
