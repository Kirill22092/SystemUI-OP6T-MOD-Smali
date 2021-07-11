.class public final Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ToggleRangeBehavior.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/ToggleRangeBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ToggleRangeGestureListener"
.end annotation


# instance fields
.field private isDragging:Z

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

.field private final v:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/ToggleRangeBehavior;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 323
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->v:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final isDragging()Z
    .locals 0

    .line 324
    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->isDragging:Z

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "e"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget-boolean p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->isDragging:Z

    if-eqz p1, :cond_0

    return-void

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlActionCoordinator()Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->longPress(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p4, "e1"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e2"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    iget-boolean p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->isDragging:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 345
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->beginUpdateRange()V

    .line 346
    iput-boolean p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->isDragging:Z

    :cond_0
    neg-float p1, p3

    .line 349
    iget-object p3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->v:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    const/16 p3, 0x2710

    int-to-float p3, p3

    mul-float/2addr p3, p1

    float-to-int p1, p3

    .line 351
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getClipLayer()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p0, p3, p2, p2}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->updateRange(IZZ)V

    return p2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isToggleable()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 357
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlActionCoordinator()Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked()Z

    move-result p0

    invoke-interface {p1, v0, v1, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinator;->toggle(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public final setDragging(Z)V
    .locals 0

    .line 324
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->isDragging:Z

    return-void
.end method
