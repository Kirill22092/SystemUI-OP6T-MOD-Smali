.class Lcom/android/systemui/statusbar/phone/StatusBar$14;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 4360
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 1

    .line 4374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozing()V

    .line 4375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenOff()V

    .line 4376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$400(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onScreenTurnedOff()V

    .line 4377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    .line 4379
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 4381
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4383
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->resetStatus()V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .line 4369
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$400(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onScreenTurnedOn()V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 1

    .line 4363
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onScreenTurningOn()V

    .line 4364
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onScreenTurningOn()V

    return-void
.end method
