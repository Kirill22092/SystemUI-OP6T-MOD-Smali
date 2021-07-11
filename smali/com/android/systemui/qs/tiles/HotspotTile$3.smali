.class Lcom/android/systemui/qs/tiles/HotspotTile$3;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 722
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MHS SU error == "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mhs"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$3100(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$3200(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$string;->mhs_call_back_error:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 724
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1900(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    return-void
.end method

.method public onSuccess(Z)V
    .locals 7

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is SU MHS Allowed == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mhs"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1900(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    .line 703
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2000(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    and-int/2addr p1, v0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 704
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2100()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2200(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V

    .line 705
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1400(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    .line 707
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2300(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "op_mhi_alert_on_dont_show_again"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    .line 708
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iput v1, p1, Lcom/android/systemui/qs/tiles/HotspotTile;->mIsAuthorizationClient:I

    .line 709
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2500(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-static {p1, v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2402(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 710
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2400(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2602(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 711
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2700(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->mobile_hotspot:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2800(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->hotspot_tip_message:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2600(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2600(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    aput-object p0, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showMHSErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 715
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iput v0, p1, Lcom/android/systemui/qs/tiles/HotspotTile;->mIsAuthorizationClient:I

    .line 716
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2900(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->mobile_hotspot:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$3000(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->mobile_hotspot_authoration_error:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showMHSErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTimeout()V
    .locals 3

    const-string v0, "mhs"

    const-string v1, "MHS SU time out"

    .line 729
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$3300(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$3400(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->mhs_call_back_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 731
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1900(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    return-void
.end method
