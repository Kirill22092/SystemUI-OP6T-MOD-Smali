.class Lcom/android/systemui/qs/tiles/DataSaverTile$1;
.super Landroid/content/BroadcastReceiver;
.source "DataSaverTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DataSaverTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DataSaverTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DataSaverTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$1;->this$0:Lcom/android/systemui/qs/tiles/DataSaverTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$1;->this$0:Lcom/android/systemui/qs/tiles/DataSaverTile;

    const-string v1, "pcoState"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {v0, p2}, Lcom/android/systemui/qs/tiles/DataSaverTile;->access$002(Lcom/android/systemui/qs/tiles/DataSaverTile;I)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PCO value:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$1;->this$0:Lcom/android/systemui/qs/tiles/DataSaverTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DataSaverTile;->access$000(Lcom/android/systemui/qs/tiles/DataSaverTile;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DataSaverTile"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "oneplus.intent.action.PCO_STATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$1;->this$0:Lcom/android/systemui/qs/tiles/DataSaverTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/DataSaverTile;->access$000(Lcom/android/systemui/qs/tiles/DataSaverTile;)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$1;->this$0:Lcom/android/systemui/qs/tiles/DataSaverTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/DataSaverTile;->access$000(Lcom/android/systemui/qs/tiles/DataSaverTile;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$1;->this$0:Lcom/android/systemui/qs/tiles/DataSaverTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/DataSaverTile;->access$000(Lcom/android/systemui/qs/tiles/DataSaverTile;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$1;->this$0:Lcom/android/systemui/qs/tiles/DataSaverTile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/DataSaverTile;->access$100(Lcom/android/systemui/qs/tiles/DataSaverTile;Z)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$1;->this$0:Lcom/android/systemui/qs/tiles/DataSaverTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DataSaverTile$1;->this$0:Lcom/android/systemui/qs/tiles/DataSaverTile;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/DataSaverTile;->access$100(Lcom/android/systemui/qs/tiles/DataSaverTile;Z)V

    :cond_3
    :goto_1
    return-void
.end method
