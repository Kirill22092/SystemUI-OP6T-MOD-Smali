.class Lcom/android/systemui/qs/tiles/OPReverseChargeTile$3;
.super Landroid/content/BroadcastReceiver;
.source "OPReverseChargeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/OPReverseChargeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$3;->this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 208
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "reverse_wireless_charge"

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 211
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$3;->this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->access$200(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reverse wireless charging enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->isEnabled()Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 213
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$3;->this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->access$300(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/OPReverseChargeTile$3;->this$0:Lcom/android/systemui/qs/tiles/OPReverseChargeTile;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/tiles/OPReverseChargeTile;->access$002(Lcom/android/systemui/qs/tiles/OPReverseChargeTile;Z)Z

    :cond_0
    return-void
.end method
