.class Lcom/android/systemui/qs/tiles/CastTile$1;
.super Ljava/lang/Object;
.source "CastTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CastTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CastTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    const-string p2, "persist.debug.wfd.enable"

    const/4 p4, 0x0

    invoke-static {p2, p4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/CastTile;->access$300(Lcom/android/systemui/qs/tiles/CastTile;)Z

    move-result p2

    if-eq p1, p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {p2, p1}, Lcom/android/systemui/qs/tiles/CastTile;->access$302(Lcom/android/systemui/qs/tiles/CastTile;Z)Z

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean p1, p3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz p1, :cond_1

    const/4 p4, 0x1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/CastTile;->access$300(Lcom/android/systemui/qs/tiles/CastTile;)Z

    move-result p1

    if-eq p4, p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-static {p1, p4}, Lcom/android/systemui/qs/tiles/CastTile;->access$302(Lcom/android/systemui/qs/tiles/CastTile;Z)Z

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CastTile$1;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    :cond_2
    :goto_0
    return-void
.end method
