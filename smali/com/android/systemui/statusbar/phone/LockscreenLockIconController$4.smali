.class Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$4;
.super Ljava/lang/Object;
.source "LockscreenLockIconController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;


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

    .line 222
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$4;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullyHiddenChanged(Z)V
    .locals 0

    .line 229
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$4;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1900(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$4;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$2000(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 232
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$4;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    :cond_0
    return-void
.end method

.method public onPulseExpansionChanged(Z)V
    .locals 0

    return-void
.end method
