.class Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;
.super Ljava/lang/Object;
.source "LockscreenLockIconController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardFadingAwayChanged()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$900(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$2300(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$2302(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z

    .line 342
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1800(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)V

    :cond_0
    return-void
.end method

.method public onKeyguardShowingChanged()V
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$2200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z

    move-result v0

    .line 326
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$900(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$2202(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 327
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$2200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$2300(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$2302(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z

    move v2, v1

    :cond_0
    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$2200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$2402(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z

    .line 334
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1800(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)V

    return-void
.end method

.method public onUnlockedChanged()V
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$6;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    return-void
.end method
