.class Lcom/oneplus/keyguard/OpKeyguardClockInfoView$5;
.super Landroid/content/BroadcastReceiver;
.source "OpKeyguardClockInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpKeyguardClockInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$5;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 462
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIME_TICK"

    .line 463
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "OpKeyguardClockInfoView"

    if-eqz p2, :cond_1

    .line 464
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    const-string p1, "ACTION_TIME_TICK"

    .line 465
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$5;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$500(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 468
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ACTION_SCREEN_OFF"

    .line 469
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$5;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p1}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$600(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V

    .line 471
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardClockInfoView$5;->this$0:Lcom/oneplus/keyguard/OpKeyguardClockInfoView;

    invoke-static {p0}, Lcom/oneplus/keyguard/OpKeyguardClockInfoView;->access$500(Lcom/oneplus/keyguard/OpKeyguardClockInfoView;)V

    :cond_2
    :goto_0
    return-void
.end method
