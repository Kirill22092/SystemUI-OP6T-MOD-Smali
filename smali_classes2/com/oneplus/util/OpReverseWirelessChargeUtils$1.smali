.class Lcom/oneplus/util/OpReverseWirelessChargeUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "OpReverseWirelessChargeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/util/OpReverseWirelessChargeUtils;->init(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->showNotification(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.oneplus.systemui.REVERSE_WIRELESS_CHARGING_OPEN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReverseWirelessCharge: open settings received."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.OP_REVERSE_WIRELESS_CHARGING_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.oneplus.systemui.REVERSE_WIRELESS_CHARGING_STOP"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ReverseWirelessCharge: stop received."

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v0}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->setEnabled(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->access$100()Landroid/os/Handler;

    move-result-object p0

    new-instance p2, Lcom/oneplus/util/-$$Lambda$OpReverseWirelessChargeUtils$1$gxLYnE_xP34dSz7ZAOuhQcgSpUA;

    invoke-direct {p2, p1}, Lcom/oneplus/util/-$$Lambda$OpReverseWirelessChargeUtils$1$gxLYnE_xP34dSz7ZAOuhQcgSpUA;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
