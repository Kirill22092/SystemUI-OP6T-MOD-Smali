.class Lcom/android/systemui/wifi/WifiDebuggingActivity$WifiChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiDebuggingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wifi/WifiDebuggingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiChangeReceiver"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/android/systemui/wifi/WifiDebuggingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/wifi/WifiDebuggingActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity$WifiChangeReceiver;->this$0:Lcom/android/systemui/wifi/WifiDebuggingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity$WifiChangeReceiver;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo p1, "wifi_state"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity$WifiChangeReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_0
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    if-ne p2, v1, :cond_6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity$WifiChangeReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity$WifiChangeReceiver;->this$0:Lcom/android/systemui/wifi/WifiDebuggingActivity;

    invoke-static {p1}, Lcom/android/systemui/wifi/WifiDebuggingActivity;->access$000(Lcom/android/systemui/wifi/WifiDebuggingActivity;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity$WifiChangeReceiver;->this$0:Lcom/android/systemui/wifi/WifiDebuggingActivity;

    invoke-static {p2}, Lcom/android/systemui/wifi/WifiDebuggingActivity;->access$100(Lcom/android/systemui/wifi/WifiDebuggingActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity$WifiChangeReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity$WifiChangeReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity$WifiChangeReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_6
    :goto_2
    return-void
.end method
