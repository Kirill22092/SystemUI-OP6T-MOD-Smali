.class Lcom/android/systemui/globalactions/GlobalActionsDialog$1;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;Landroid/media/AudioManager;Landroid/service/dreams/IDreamManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;Landroid/os/Vibrator;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/os/UserManager;Landroid/app/trust/TrustManager;Landroid/app/IActivityManager;Landroid/telecom/TelecomManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Landroid/view/IWindowManager;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/util/RingerModeTracker;Lcom/android/systemui/model/SysUiState;Landroid/os/Handler;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/settings/CurrentUserContextTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnlockedChanged()V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz v1, :cond_2

    .line 400
    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v0

    .line 401
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v1, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->access$100(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v1, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->access$100(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;->onDeviceLockStateChanged(Z)V

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v1, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->access$200(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v2, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/ui/ControlsUiController;

    invoke-static {v2, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->access$500(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;Lcom/android/systemui/controls/ui/ControlsUiController;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 408
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->hideLockMessage()V

    :cond_2
    return-void
.end method
