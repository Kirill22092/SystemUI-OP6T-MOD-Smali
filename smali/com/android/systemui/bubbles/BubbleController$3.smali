.class Lcom/android/systemui/bubbles/BubbleController$3;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;


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

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$600(Lcom/android/systemui/bubbles/BubbleController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/bubbles/BubbleController;->access$700(Lcom/android/systemui/bubbles/BubbleController;I)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleData;->dismissAll(I)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0, p1}, Lcom/android/systemui/bubbles/BubbleController;->access$800(Lcom/android/systemui/bubbles/BubbleController;I)V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->access$602(Lcom/android/systemui/bubbles/BubbleController;I)I

    return-void
.end method
