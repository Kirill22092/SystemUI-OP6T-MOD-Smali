.class Lcom/android/systemui/bubbles/animation/StackAnimationController$2;
.super Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
.source "StackAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/animation/StackAnimationController;->getMagnetizedStack(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/magnetictarget/MagnetizedObject<",
        "Lcom/android/systemui/bubbles/animation/StackAnimationController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/animation/StackAnimationController;Landroid/content/Context;Lcom/android/systemui/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$2;->this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    return-void
.end method


# virtual methods
.method public getHeight(Lcom/android/systemui/bubbles/animation/StackAnimationController;)F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$2;->this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->access$200(Lcom/android/systemui/bubbles/animation/StackAnimationController;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public bridge synthetic getHeight(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController$2;->getHeight(Lcom/android/systemui/bubbles/animation/StackAnimationController;)F

    move-result p0

    return p0
.end method

.method public getLocationOnScreen(Lcom/android/systemui/bubbles/animation/StackAnimationController;[I)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$2;->this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->access$100(Lcom/android/systemui/bubbles/animation/StackAnimationController;)Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    const/4 v0, 0x0

    aput p1, p2, v0

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$2;->this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->access$100(Lcom/android/systemui/bubbles/animation/StackAnimationController;)Landroid/graphics/PointF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-int p0, p0

    const/4 p1, 0x1

    aput p0, p2, p1

    return-void
.end method

.method public bridge synthetic getLocationOnScreen(Ljava/lang/Object;[I)V
    .locals 0

    check-cast p1, Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/StackAnimationController$2;->getLocationOnScreen(Lcom/android/systemui/bubbles/animation/StackAnimationController;[I)V

    return-void
.end method

.method public getWidth(Lcom/android/systemui/bubbles/animation/StackAnimationController;)F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/StackAnimationController$2;->this$0:Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->access$200(Lcom/android/systemui/bubbles/animation/StackAnimationController;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public bridge synthetic getWidth(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/android/systemui/bubbles/animation/StackAnimationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/StackAnimationController$2;->getWidth(Lcom/android/systemui/bubbles/animation/StackAnimationController;)F

    move-result p0

    return p0
.end method
