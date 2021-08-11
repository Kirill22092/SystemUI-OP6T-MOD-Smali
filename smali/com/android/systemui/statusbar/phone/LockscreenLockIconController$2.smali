.class Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;
.super Ljava/lang/Object;
.source "LockscreenLockIconController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozeAmountChanged(FF)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setDozeAmount(F)V

    :cond_0
    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1400(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)V

    return-void
.end method

.method public onPulsingChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1500(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1700(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;I)V

    return-void
.end method
