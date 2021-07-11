.class public final Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$springAnimation$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "NotificationShadeDepthController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 451
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$springAnimation$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    .line 452
    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;)F
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 459
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$springAnimation$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 451
    check-cast p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$springAnimation$1;->getValue(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;F)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 454
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$springAnimation$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->setRadius(I)V

    .line 455
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$springAnimation$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->access$getView$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;)Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$scheduleUpdate(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 451
    check-cast p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$springAnimation$1;->setValue(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;F)V

    return-void
.end method
