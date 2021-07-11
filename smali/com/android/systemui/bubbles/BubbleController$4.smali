.class Lcom/android/systemui/bubbles/BubbleController$4;
.super Landroid/content/pm/LauncherApps$Callback;
.source "BubbleController.java"


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

    .line 475
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$4;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$4;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    const/16 p2, 0xd

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleData;->removeBubblesWithPackageName(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 3

    .line 498
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object v0, p1, p3

    .line 501
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController$4;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/bubbles/BubbleData;->removeBubblesWithPackageName(Ljava/lang/String;I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 508
    invoke-super {p0, p1, p2, p3}, Landroid/content/pm/LauncherApps$Callback;->onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 511
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$4;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    const/16 p3, 0xc

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/bubbles/BubbleData;->removeBubblesWithInvalidShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    return-void
.end method
