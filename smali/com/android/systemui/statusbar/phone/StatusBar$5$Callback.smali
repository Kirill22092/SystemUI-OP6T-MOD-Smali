.class Lcom/android/systemui/statusbar/phone/StatusBar$5$Callback;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/plugins/OverlayPlugin$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callback"
.end annotation


# instance fields
.field private final mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$5;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$5;Lcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 0

    .line 1080
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5$Callback;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1081
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5$Callback;->mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

    return-void
.end method

.method static synthetic lambda$onHoldStatusBarOpenChange$0(ZLcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 0

    .line 1094
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/OverlayPlugin;->setCollapseDesired(Z)V

    return-void
.end method

.method private synthetic lambda$onHoldStatusBarOpenChange$1(Z)V
    .locals 1

    .line 1093
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5$Callback;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$5;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$5;->access$1100(Lcom/android/systemui/statusbar/phone/StatusBar$5;)Landroid/util/ArraySet;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5$Callback$X8h8BtL5sx95G3VYQ-SR0g_MCXg;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5$Callback$X8h8BtL5sx95G3VYQ-SR0g_MCXg;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$onHoldStatusBarOpenChange$2()V
    .locals 2

    .line 1092
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5$Callback;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$5;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5$Callback$99-TTdt0m5NBU3m1uv-R7PLiNeQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5$Callback$99-TTdt0m5NBU3m1uv-R7PLiNeQ;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$5$Callback;)V

    .line 1093
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setStateListener(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$OtherwisedCollapsedListener;)V

    .line 1095
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5$Callback;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$5;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    .line 1096
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$5;->access$1100(Lcom/android/systemui/statusbar/phone/StatusBar$5;)Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setForcePluginOpen(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onHoldStatusBarOpenChange$1$StatusBar$5$Callback(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$5$Callback;->lambda$onHoldStatusBarOpenChange$1(Z)V

    return-void
.end method

.method public synthetic lambda$onHoldStatusBarOpenChange$2$StatusBar$5$Callback()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$5$Callback;->lambda$onHoldStatusBarOpenChange$2()V

    return-void
.end method

.method public onHoldStatusBarOpenChange()V
    .locals 2

    .line 1086
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5$Callback;->mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/OverlayPlugin;->holdStatusBarOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5$Callback;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$5;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$5;->access$1100(Lcom/android/systemui/statusbar/phone/StatusBar$5;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5$Callback;->mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5$Callback;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$5;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$5;->access$1100(Lcom/android/systemui/statusbar/phone/StatusBar$5;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5$Callback;->mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1091
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5$Callback;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$5;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1000(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5$Callback$U2F2-aeucZtrnZrV13H_iSFQwOM;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$5$Callback$U2F2-aeucZtrnZrV13H_iSFQwOM;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$5$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
