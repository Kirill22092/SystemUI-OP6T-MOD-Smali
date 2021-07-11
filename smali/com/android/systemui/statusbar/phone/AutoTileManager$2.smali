.class Lcom/android/systemui/statusbar/phone/AutoTileManager$2;
.super Ljava/lang/Object;
.source "AutoTileManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AutoTileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDataSaverChanged$0()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$600(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$500(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDataSaverChanged$0$AutoTileManager$2()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;->lambda$onDataSaverChanged$0()V

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$100(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/AutoAddTracker;

    move-result-object v0

    const-string v1, "saver"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 220
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$300(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSTileHost;->addTile(Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$100(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/AutoAddTracker;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/AutoAddTracker;->setTileAdded(Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$400(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$2$aKs9haH_6r0xP_BBV2VFTNLlSTM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$2$aKs9haH_6r0xP_BBV2VFTNLlSTM;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
