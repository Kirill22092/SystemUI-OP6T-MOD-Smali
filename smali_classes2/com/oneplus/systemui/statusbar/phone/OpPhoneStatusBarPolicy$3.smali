.class Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$3;
.super Landroid/content/BroadcastReceiver;
.source "OpPhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "nfc"

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->access$900(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object p0

    invoke-interface {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->access$900(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method
