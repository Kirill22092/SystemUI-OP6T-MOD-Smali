.class Lcom/oneplus/worklife/OPWLBHelper$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/oneplus/worklife/OPWLBHelper;Landroid/os/Handler;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper$1;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 213
    iget-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper$1;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {p1}, Lcom/oneplus/worklife/OPWLBHelper;->access$000(Lcom/oneplus/worklife/OPWLBHelper;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oneplus_wlb_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 214
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper$1;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {v0}, Lcom/oneplus/worklife/OPWLBHelper;->access$100(Lcom/oneplus/worklife/OPWLBHelper;)Lcom/oneplus/worklife/OPWLBHelper$IStatusBarIconChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper$1;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {v0}, Lcom/oneplus/worklife/OPWLBHelper;->access$300(Lcom/oneplus/worklife/OPWLBHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/worklife/OPWLBHelper$1$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/worklife/OPWLBHelper$1$1;-><init>(Lcom/oneplus/worklife/OPWLBHelper$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wlb enabled changed to : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPSystemUIWLBHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
