.class Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$6;
.super Ljava/lang/Object;
.source "OpLockscreenLockIconController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->opUpdateIconAnimation(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;Landroid/view/View;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$6;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 259
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;

    .line 260
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->access$300(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_1

    const-string p1, "LockIcon"

    const-string/jumbo v0, "start recog anim again"

    .line 265
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->access$300(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 268
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$6;->val$v:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;->access$300(Lcom/android/systemui/statusbar/phone/OpLockscreenLockIconController;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
