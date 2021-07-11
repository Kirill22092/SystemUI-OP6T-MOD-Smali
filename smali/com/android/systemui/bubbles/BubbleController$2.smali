.class Lcom/android/systemui/bubbles/BubbleController$2;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/systemui/bubbles/BubbleController$NotificationSuppressionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/BubbleController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/FloatingContentCoordinator;Lcom/android/systemui/bubbles/BubbleDataRepository;Lcom/android/systemui/model/SysUiState;Landroid/app/INotificationManager;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Landroid/content/pm/LauncherApps;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleController;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$2;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBubbleNotificationSuppressionChange(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 1

    .line 407
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$2;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$200(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->showInShade()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 407
    :goto_0
    invoke-interface {p0, v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->onBubbleNotificationSuppressionChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
