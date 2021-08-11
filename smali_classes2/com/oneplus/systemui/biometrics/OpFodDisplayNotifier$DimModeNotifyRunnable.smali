.class Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;
.super Ljava/lang/Object;
.source "OpFodDisplayNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimModeNotifyRunnable"
.end annotation


# instance fields
.field private mAodMode:I

.field private mDimMode:I

.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;->this$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "OpFodDisplayNotifier"

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;->this$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->access$300(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set dim mDimMode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;->mDimMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", aodMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;->mAodMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isKeyguardDone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;->this$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->access$200(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v2

    const/16 v3, 0xa

    iget v4, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;->mDimMode:I

    invoke-interface {v2, v3, v4}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V

    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;->mDimMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "FingerPrintMode"

    if-nez v2, :cond_3

    :try_start_1
    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;->mAodMode:I

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eq v2, v6, :cond_0

    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;->mAodMode:I

    if-ne v2, v5, :cond_2

    :cond_0
    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;->mAodMode:I

    if-eq v2, v6, :cond_1

    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;->mAodMode:I

    if-ne v2, v5, :cond_4

    :cond_1
    if-eqz v1, :cond_4

    :cond_2
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;->this$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->access$400(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)Lcom/oneplus/core/oimc/OIMCServiceManager;

    move-result-object p0

    invoke-virtual {p0, v4, v6, v3}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;->this$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->access$400(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)Lcom/oneplus/core/oimc/OIMCServiceManager;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v4, v1, v3}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDisplayDimMode Exception e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method protected setMode(II)V
    .locals 0

    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;->mDimMode:I

    iput p2, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$DimModeNotifyRunnable;->mAodMode:I

    return-void
.end method
