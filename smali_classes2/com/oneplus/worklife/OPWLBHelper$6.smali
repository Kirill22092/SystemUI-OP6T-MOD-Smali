.class Lcom/oneplus/worklife/OPWLBHelper$6;
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

    .line 487
    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper$6;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 490
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 491
    iget-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper$6;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {p1}, Lcom/oneplus/worklife/OPWLBHelper;->access$1000(Lcom/oneplus/worklife/OPWLBHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 493
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper$6;->this$0:Lcom/oneplus/worklife/OPWLBHelper;

    invoke-static {p0}, Lcom/oneplus/worklife/OPWLBHelper;->access$1100(Lcom/oneplus/worklife/OPWLBHelper;)V

    .line 495
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DeviceProvisionedObserver onChange isProvisioned "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPSystemUIWLBHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
