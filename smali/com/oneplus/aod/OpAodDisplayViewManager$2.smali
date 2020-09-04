.class Lcom/oneplus/aod/OpAodDisplayViewManager$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpAodDisplayViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OpAodDisplayViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodDisplayViewManager;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamingStateChanged(Z)V
    .locals 0

    .line 372
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDreamingStateChanged(Z)V

    .line 373
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/OpClockViewCtrl;->onDreamingStateChanged(Z)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .line 378
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 379
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->onScreenTurnedOn()V

    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpClockViewCtrl;->onTimeChanged()V

    .line 348
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/slice/OpSliceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->onTimeChanged()V

    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0

    .line 366
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserInfoChanged(I)V

    .line 367
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/OpClockViewCtrl;->onUserInfoChanged(I)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OpClockViewCtrl;->onUserSwitchComplete(I)V

    .line 355
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$300(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodMain;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$100(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpClockViewCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/OpClockViewCtrl;->getClockStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodMain;->setClockStyle(I)V

    .line 356
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$300(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodMain;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OpAodMain;->onUserSwitchComplete(I)V

    .line 359
    iget-object v0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$400(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->onUserSwitchComplete(I)V

    .line 361
    iget-object p0, p0, Lcom/oneplus/aod/OpAodDisplayViewManager$2;->this$0:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->access$200(Lcom/oneplus/aod/OpAodDisplayViewManager;)Lcom/oneplus/aod/slice/OpSliceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/slice/OpSliceManager;->onUserSwitchComplete(I)V

    return-void
.end method
