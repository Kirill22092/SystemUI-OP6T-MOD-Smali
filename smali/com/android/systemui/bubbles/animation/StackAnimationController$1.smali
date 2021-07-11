.class Lcom/android/systemui/bubbles/animation/StackAnimationController$1;
.super Ljava/lang/Object;
.source "StackAnimationController.java"

# interfaces
.implements Lcom/android/systemui/util/FloatingContentCoordinator$FloatingContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/animation/StackAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mFloatingBoundsOnScreen:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;->this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;->mFloatingBoundsOnScreen:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getAllowedFloatingBoundsRegion()Landroid/graphics/Rect;
    .locals 3

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;->getFloatingBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    .line 223
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 224
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;->this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->getAllowableStackPositionRegion()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 225
    iget p0, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr p0, v2

    iput p0, v1, Landroid/graphics/Rect;->right:I

    .line 226
    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr p0, v0

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method

.method public getFloatingBoundsOnScreen()Landroid/graphics/Rect;
    .locals 6

    .line 233
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;->this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->access$000(Lcom/android/systemui/bubbles/animation/StackAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;->this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->access$000(Lcom/android/systemui/bubbles/animation/StackAnimationController;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;->this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget-object v0, v0, Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;->mFloatingBoundsOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;->this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    .line 241
    invoke-static {v1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->access$100(Lcom/android/systemui/bubbles/animation/StackAnimationController;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;->this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    .line 242
    invoke-static {v2}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->access$100(Lcom/android/systemui/bubbles/animation/StackAnimationController;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;->this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    .line 243
    invoke-static {v3}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->access$100(Lcom/android/systemui/bubbles/animation/StackAnimationController;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;->this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-static {v4}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->access$200(Lcom/android/systemui/bubbles/animation/StackAnimationController;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;->this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    .line 244
    invoke-static {v4}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->access$100(Lcom/android/systemui/bubbles/animation/StackAnimationController;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;->this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-static {v5}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->access$200(Lcom/android/systemui/bubbles/animation/StackAnimationController;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;->this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-static {v5}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->access$300(Lcom/android/systemui/bubbles/animation/StackAnimationController;)I

    move-result v5

    add-int/2addr v4, v5

    .line 240
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;->mFloatingBoundsOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 249
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;->mFloatingBoundsOnScreen:Landroid/graphics/Rect;

    return-object p0
.end method

.method public moveToBounds(Landroid/graphics/Rect;)V
    .locals 2

    .line 216
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$1;->this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->springStack(FFF)V

    return-void
.end method
