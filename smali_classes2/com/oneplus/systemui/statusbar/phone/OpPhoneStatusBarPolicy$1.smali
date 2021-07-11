.class Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$1;
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

    .line 201
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.oem.intent.action.ACTION_USB_HEADSET_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "oneplus.intent.action.VZW_FEMTOCELL_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "oneplus.intent.action.VZW_VICE_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "OpPhoneStatusBarPolicy"

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_1

    goto :goto_2

    .line 230
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "isVzwVice"

    .line 233
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 235
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceive: viceStatus = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-static {p0, v4}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->access$400(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;Z)V

    goto :goto_2

    .line 219
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "isVzwFemtocell"

    .line 222
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 224
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceive: status = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-static {p0, v4}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->access$300(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;Z)V

    goto :goto_2

    .line 215
    :cond_5
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-static {p0, p2}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->access$200(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_2

    .line 208
    :cond_6
    invoke-static {}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->access$000()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "BT battery level changed"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_7
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;->access$100(Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarPolicy;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73f2a6e4 -> :sswitch_3
        -0x290c05ee -> :sswitch_2
        0x2287d448 -> :sswitch_1
        0x34803185 -> :sswitch_0
    .end sparse-switch
.end method
