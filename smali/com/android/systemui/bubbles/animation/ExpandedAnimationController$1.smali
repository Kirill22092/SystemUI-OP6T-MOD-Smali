.class Lcom/android/systemui/bubbles/animation/ExpandedAnimationController$1;
.super Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
.source "ExpandedAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->prepareForBubbleDrag(Landroid/view/View;Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/magnetictarget/MagnetizedObject<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

.field final synthetic val$bubble:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;Landroid/content/Context;Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroid/view/View;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController$1;->this$0:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iput-object p6, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController$1;->val$bubble:Landroid/view/View;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    return-void
.end method


# virtual methods
.method public getHeight(Landroid/view/View;)F
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController$1;->this$0:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->access$000(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getHeight(Ljava/lang/Object;)F
    .locals 0

    .line 334
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController$1;->getHeight(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public getLocationOnScreen(Landroid/view/View;[I)V
    .locals 1

    .line 347
    iget-object p1, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController$1;->val$bubble:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    float-to-int p1, p1

    const/4 v0, 0x0

    aput p1, p2, v0

    .line 348
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController$1;->val$bubble:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    float-to-int p0, p0

    const/4 p1, 0x1

    aput p0, p2, p1

    return-void
.end method

.method public bridge synthetic getLocationOnScreen(Ljava/lang/Object;[I)V
    .locals 0

    .line 334
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController$1;->getLocationOnScreen(Landroid/view/View;[I)V

    return-void
.end method

.method public getWidth(Landroid/view/View;)F
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController$1;->this$0:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->access$000(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getWidth(Ljava/lang/Object;)F
    .locals 0

    .line 334
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController$1;->getWidth(Landroid/view/View;)F

    move-result p0

    return p0
.end method
