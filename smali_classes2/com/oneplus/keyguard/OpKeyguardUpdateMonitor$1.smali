.class Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$1;
.super Landroid/database/ContentObserver;
.source "OpKeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->watchForFodOnAodSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$1;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$1;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->access$1100(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "show_fod_on_aod_enabled"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->access$1002(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)Z

    return-void
.end method
