.class Lcom/android/systemui/globalactions/GlobalActionsDialog$2;
.super Landroid/database/ContentObserver;
.source "GlobalActionsDialog.java"


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
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/os/Handler;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$2;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$2;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method
