.class Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;
.super Ljava/lang/Object;
.source "LockscreenLockIconController.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


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

    .line 103
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onViewAttachedToWindow$0(Lcom/android/systemui/dock/DockManager;)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1300(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/dock/DockManager$DockEventListener;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    return-void
.end method

.method private synthetic lambda$onViewDetachedFromWindow$1(Lcom/android/systemui/dock/DockManager;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1300(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/dock/DockManager$DockEventListener;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/dock/DockManager;->removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onViewAttachedToWindow$0$LockscreenLockIconController$1(Lcom/android/systemui/dock/DockManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->lambda$onViewAttachedToWindow$0(Lcom/android/systemui/dock/DockManager;)V

    return-void
.end method

.method public synthetic lambda$onViewDetachedFromWindow$1$LockscreenLockIconController$1(Lcom/android/systemui/dock/DockManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->lambda$onViewDetachedFromWindow$1(Lcom/android/systemui/dock/DockManager;)V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$100(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$000(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 107
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$300(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$500(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$400(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 109
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$700(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 110
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$900(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$800(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 112
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1000(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$1$lAN9mjl0bP11onyNXKoQAiuwbo4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$1$lAN9mjl0bP11onyNXKoQAiuwbo4;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 114
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$700(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1102(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z

    .line 115
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onThemeChanged()V

    .line 116
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 121
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$100(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$000(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 122
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$300(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$200(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 123
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$500(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$400(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->removeListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 124
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$700(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 125
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$900(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$800(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 127
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1000(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$1$33uhHOghx-_czm01x2awmcBSkdM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockscreenLockIconController$1$33uhHOghx-_czm01x2awmcBSkdM;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$1;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
