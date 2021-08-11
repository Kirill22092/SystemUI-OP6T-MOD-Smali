.class Lcom/oneplus/worklife/OPWLBHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "OPWLBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/worklife/OPWLBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/worklife/OPWLBHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/worklife/OPWLBHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper$2;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    const/4 v0, -0x1

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/worklife/OPWLBHelper$2;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {p2}, Lcom/oneplus/worklife/OPWLBHelper;->access$000(Lcom/oneplus/worklife/OPWLBHelper;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "oneplus_wlb_mode"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: isAdmin user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " wlb enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSystemUIWLBHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper$2;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {v0}, Lcom/oneplus/worklife/OPWLBHelper;->access$100(Lcom/oneplus/worklife/OPWLBHelper;)Lcom/oneplus/worklife/OPWLBHelper$IStatusBarIconChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper$2;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {p0}, Lcom/oneplus/worklife/OPWLBHelper;->access$100(Lcom/oneplus/worklife/OPWLBHelper;)Lcom/oneplus/worklife/OPWLBHelper$IStatusBarIconChangeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/worklife/OPWLBHelper$IStatusBarIconChangeListener;->onShowWLBStatusBarIcon()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper$2;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {p0}, Lcom/oneplus/worklife/OPWLBHelper;->access$100(Lcom/oneplus/worklife/OPWLBHelper;)Lcom/oneplus/worklife/OPWLBHelper$IStatusBarIconChangeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/worklife/OPWLBHelper$IStatusBarIconChangeListener;->onHideWLBStatusBarIcon()V

    :cond_1
    :goto_0
    return-void
.end method
