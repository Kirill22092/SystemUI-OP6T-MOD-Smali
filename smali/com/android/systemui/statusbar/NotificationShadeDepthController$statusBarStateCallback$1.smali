.class public final Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;
.super Ljava/lang/Object;
.source "NotificationShadeDepthController.kt"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationShadeDepthController;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/BlurUtils;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/view/Choreographer;Landroid/app/WallpaperManager;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/dump/DumpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozeAmountChanged(FF)V
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$setWakeAndUnlockBlurRadius$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;I)V

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getShadeSpring()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->finishIfRunning()V

    .line 253
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getShadeAnimation()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->finishIfRunning()V

    .line 254
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getGlobalActionsSpring()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->finishIfRunning()V

    .line 255
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getBrightnessMirrorSpring()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->finishIfRunning()V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4

    .line 245
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 246
    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getShadeExpansion$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getPrevTracking$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getPrevShadeVelocity$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$getPrevShadeDirection$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)I

    move-result v3

    .line 245
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$updateShadeAnimationBlur(Lcom/android/systemui/statusbar/NotificationShadeDepthController;FZFI)V

    .line 247
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$updateShadeBlur(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    return-void
.end method
