.class Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$HideAodModeRunnable;
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
    name = "HideAodModeRunnable"
.end annotation


# instance fields
.field private mHideAodMode:I

.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$HideAodModeRunnable;->this$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "OpFodDisplayNotifier"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OP_DISPLAY_APPLY_HIDE_AOD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$HideAodModeRunnable;->mHideAodMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$HideAodModeRunnable;->this$0:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->access$200(Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v1

    const/16 v2, 0xb

    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$HideAodModeRunnable;->mHideAodMode:I

    invoke-interface {v1, v2, p0}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

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

    :goto_0
    return-void
.end method

.method protected setMode(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier$HideAodModeRunnable;->mHideAodMode:I

    return-void
.end method
