.class final Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;
.super Ljava/lang/Object;
.source "ToggleRangeBehavior.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $gestureDetector:Landroid/view/GestureDetector;

.field final synthetic $gestureListener:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;Landroid/view/GestureDetector;Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->$gestureDetector:Landroid/view/GestureDetector;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->$gestureListener:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
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

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 80
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->$gestureListener:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;

    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->isDragging()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 82
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->$gestureListener:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;

    invoke-virtual {p1, v1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->setDragging(Z)V

    .line 83
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->endUpdateRange()V

    :cond_1
    return v1
.end method
