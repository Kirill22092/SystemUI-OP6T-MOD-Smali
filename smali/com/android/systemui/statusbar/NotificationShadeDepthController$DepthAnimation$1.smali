.class final Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$1;
.super Ljava/lang/Object;
.source "NotificationShadeDepthController.kt"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "*>;>;ZFF)V"
        }
    .end annotation

    .line 467
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->access$setPendingRadius$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;I)V

    return-void
.end method
