.class Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;
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
    name = "AodModeNotifyRunnable"
.end annotation


# instance fields
.field private mAodMode:I

.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;


# direct methods
.method private constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;->this$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$1;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;-><init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "OpFodDisplayNotifier"

    .line 161
    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;->mAodMode:I

    const/4 v2, -0x2

    const-string v3, "auto_brightness_in_aod"

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;->this$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->access$100(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 162
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;->this$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->access$100(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 170
    :goto_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set OP_DISPLAY_AOD_MODE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;->mAodMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;->this$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->access$200(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v1

    const/16 v2, 0x8

    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;->mAodMode:I

    invoke-interface {v1, v2, p0}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postOnBackgroundThread Exception e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method protected setMode(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$AodModeNotifyRunnable;->mAodMode:I

    return-void
.end method
