.class Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$1;
.super Landroid/content/BroadcastReceiver;
.source "OpScreenBurnInProtector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x7ed8ea7f

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    const v0, -0x56ac2893

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    goto :goto_2

    .line 101
    :cond_3
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->stop()V

    goto :goto_2

    .line 98
    :cond_4
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpScreenBurnInProtector;->start()V

    :goto_2
    return-void
.end method
