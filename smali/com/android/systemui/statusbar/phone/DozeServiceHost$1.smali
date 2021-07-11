.class Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;
.super Ljava/lang/Object;
.source "DozeServiceHost.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$PulseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DozeServiceHost;->pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field final synthetic val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

.field final synthetic val$passiveAuthInterrupt:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/doze/DozeHost$PulseCallback;Z)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->val$passiveAuthInterrupt:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setPulsing(Z)V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$300(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setPulsing(Z)V

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$400(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setPulsing(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$500(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setPulsing(Z)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$600(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setPulsing(Z)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$700(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setPulsing(Z)V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$802(Lcom/android/systemui/statusbar/phone/DozeServiceHost;Z)Z

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$900(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->val$passiveAuthInterrupt:Z

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$900(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onAuthInterruptDetected(Z)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$100(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$100(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$1000(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setPulsing(Z)V

    .line 347
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$1100(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setPulsing(Z)V

    return-void
.end method


# virtual methods
.method public onPulseFinished()V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$002(Lcom/android/systemui/statusbar/phone/DozeServiceHost;Z)Z

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pulseWhileDozing, onPulseFinished, mPulsing:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$000(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StatusBar"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$100(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$100(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationPanelTouchState()V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$200(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWakeLockScreenSensorActive(Z)V

    .line 325
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->setPulsing(Z)V

    return-void
.end method

.method public onPulseStarted()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pulseWhileDozing, onPulseStarted, mPulsing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$000(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$100(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->access$100(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationPanelTouchState()V

    :cond_0
    const/4 v0, 0x1

    .line 306
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->setPulsing(Z)V

    return-void
.end method
