.class Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpLockscreenLockIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->getFacelockRetryAnimator()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    const-string p0, "LockIcon"

    const-string/jumbo p1, "zoomInAnimtor end"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->access$100(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    const-string p1, "LockIcon"

    const-string/jumbo v0, "zoomInAnimtor start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$3;->this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->access$200(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)V

    :cond_1
    return-void
.end method
