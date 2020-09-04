.class public final Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "HotspotSignalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setHasAnySimReady(Z)V
    .locals 3

    .line 405
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isUSS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$600(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHasAnySimReady / simReady:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$702(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z

    if-eqz p1, :cond_1

    .line 409
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$802(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z

    .line 410
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 411
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$900(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setVirtualSimstate([I)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 387
    array-length v1, p1

    if-lez v1, :cond_1

    .line 388
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 390
    sget v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->SOFTSIM_ENABLE_PILOT:I

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$300(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "virtual sim state change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$400(Lcom/android/systemui/qs/tiles/HotspotTile;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1, v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$402(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z

    .line 399
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
