.class Lcom/android/systemui/qs/tiles/HotspotTile$MobileDataContentObserver;
.super Landroid/database/ContentObserver;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$MobileDataContentObserver;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$MobileDataContentObserver;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1600(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "mobile_data"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$MobileDataContentObserver;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1700(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mobile data enabled status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const-string v2, "ON"

    goto :goto_1

    :cond_1
    const-string v2, "OFF"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$MobileDataContentObserver;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1800(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V

    return-void
.end method
