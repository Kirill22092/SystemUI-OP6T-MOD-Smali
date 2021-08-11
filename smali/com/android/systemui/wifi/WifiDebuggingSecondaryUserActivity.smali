.class public Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiDebuggingSecondaryUserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;
    }
.end annotation


# instance fields
.field private mWifiChangeReceiver:Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "wifi"

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance p1, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;

    invoke-direct {p1, p0, p0}, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;-><init>(Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;->mWifiChangeReceiver:Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;

    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget v0, Lcom/android/systemui/R$string;->wifi_debugging_secondary_user_title:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    sget v0, Lcom/android/systemui/R$string;->wifi_debugging_secondary_user_message:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;->mWifiChangeReceiver:Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/AlertActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;->mWifiChangeReceiver:Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    return-void
.end method
