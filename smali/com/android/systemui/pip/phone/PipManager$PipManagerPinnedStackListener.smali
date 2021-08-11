.class Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;
.super Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipManagerPinnedStackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/pip/phone/PipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipManager;Lcom/android/systemui/pip/phone/PipManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;-><init>(Lcom/android/systemui/pip/phone/PipManager;)V

    return-void
.end method

.method private synthetic lambda$onActionsChanged$3(Landroid/content/pm/ParceledListSlice;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setAppActions(Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method private synthetic lambda$onActivityHidden$4(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipManager;->access$700(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/PipBoundsHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/PipBoundsHandler;->onResetReentryBounds(Landroid/content/ComponentName;)V

    return-void
.end method

.method private synthetic lambda$onAspectRatioChanged$7(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipManager;->access$700(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/PipBoundsHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/PipBoundsHandler;->onAspectRatioChanged(F)V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$6()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipManager;->access$700(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/PipBoundsHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pip/PipBoundsHandler;->onConfigurationChanged()V

    return-void
.end method

.method private synthetic lambda$onDisplayInfoChanged$5(Landroid/view/DisplayInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipManager;->access$700(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/PipBoundsHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/PipBoundsHandler;->onDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method private synthetic lambda$onImeVisibilityChanged$1(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$700(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/PipBoundsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/pip/PipBoundsHandler;->onImeVisibilityChanged(ZI)V

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onImeVisibilityChanged(ZI)V

    return-void
.end method

.method private synthetic lambda$onListenerRegistered$0(Landroid/view/IPinnedStackController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipManager;->access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setPinnedStackController(Landroid/view/IPinnedStackController;)V

    return-void
.end method

.method private synthetic lambda$onMovementBoundsChanged$2(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipManager;->access$800(Lcom/android/systemui/pip/phone/PipManager;Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onActionsChanged$3$PipManager$PipManagerPinnedStackListener(Landroid/content/pm/ParceledListSlice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->lambda$onActionsChanged$3(Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method public synthetic lambda$onActivityHidden$4$PipManager$PipManagerPinnedStackListener(Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->lambda$onActivityHidden$4(Landroid/content/ComponentName;)V

    return-void
.end method

.method public synthetic lambda$onAspectRatioChanged$7$PipManager$PipManagerPinnedStackListener(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->lambda$onAspectRatioChanged$7(F)V

    return-void
.end method

.method public synthetic lambda$onConfigurationChanged$6$PipManager$PipManagerPinnedStackListener()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->lambda$onConfigurationChanged$6()V

    return-void
.end method

.method public synthetic lambda$onDisplayInfoChanged$5$PipManager$PipManagerPinnedStackListener(Landroid/view/DisplayInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->lambda$onDisplayInfoChanged$5(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public synthetic lambda$onImeVisibilityChanged$1$PipManager$PipManagerPinnedStackListener(ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->lambda$onImeVisibilityChanged$1(ZI)V

    return-void
.end method

.method public synthetic lambda$onListenerRegistered$0$PipManager$PipManagerPinnedStackListener(Landroid/view/IPinnedStackController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->lambda$onListenerRegistered$0(Landroid/view/IPinnedStackController;)V

    return-void
.end method

.method public synthetic lambda$onMovementBoundsChanged$2$PipManager$PipManagerPinnedStackListener(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->lambda$onMovementBoundsChanged$2(Z)V

    return-void
.end method

.method public onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$600(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$w3TtXQNx6JYy0rkssM6SOCMIiCQ;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$w3TtXQNx6JYy0rkssM6SOCMIiCQ;-><init>(Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onActivityHidden(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$600(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$jzbSRhWFoxplnSPY2RgqZCPd1ts;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$jzbSRhWFoxplnSPY2RgqZCPd1ts;-><init>(Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAspectRatioChanged(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$600(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$as1Gj0OwAKB_hvEWCKYdRYRFM9g;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$as1Gj0OwAKB_hvEWCKYdRYRFM9g;-><init>(Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$600(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$_tnyP4cjZoY1aQdH46PDBhGhzVU;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$_tnyP4cjZoY1aQdH46PDBhGhzVU;-><init>(Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDisplayInfoChanged(Landroid/view/DisplayInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$600(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$P0_Ji3WptNFaEdrasIn3ZLSvnUM;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$P0_Ji3WptNFaEdrasIn3ZLSvnUM;-><init>(Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;Landroid/view/DisplayInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$600(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$u1KCCoxakH7gZKPv7iZK4aLn7MU;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$u1KCCoxakH7gZKPv7iZK4aLn7MU;-><init>(Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onListenerRegistered(Landroid/view/IPinnedStackController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$600(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$MK-nIqOfkRku5-KYToXZ0-DmcZA;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$MK-nIqOfkRku5-KYToXZ0-DmcZA;-><init>(Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;Landroid/view/IPinnedStackController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMovementBoundsChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->access$600(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$f-SQ0yydZH1ZP4stoL54CdBZ7QU;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PipManagerPinnedStackListener$f-SQ0yydZH1ZP4stoL54CdBZ7QU;-><init>(Lcom/android/systemui/pip/phone/PipManager$PipManagerPinnedStackListener;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
