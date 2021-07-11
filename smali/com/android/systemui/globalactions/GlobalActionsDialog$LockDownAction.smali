.class Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockDownAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 2

    .line 1271
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const v0, 0x10803ca

    const v1, 0x1040381

    .line 1272
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-void
.end method

.method private synthetic lambda$onPress$0()V
    .locals 0

    .line 1285
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2900(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method

.method private synthetic lambda$onPress$1()V
    .locals 2

    .line 1283
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V

    .line 1285
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2800(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$LockDownAction$UFvjFvUftPqqk6y_pLhQitE-Mwo;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$LockDownAction$UFvjFvUftPqqk6y_pLhQitE-Mwo;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "GlobalActionsDialog"

    const-string v1, "Error while trying to lock device."

    .line 1287
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onPress$0$GlobalActionsDialog$LockDownAction()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;->lambda$onPress$0()V

    return-void
.end method

.method public synthetic lambda$onPress$1$GlobalActionsDialog$LockDownAction()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;->lambda$onPress$1()V

    return-void
.end method

.method public onPress()V
    .locals 4

    .line 1277
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 1280
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$LockDownAction$XAwczE30yz6IBOlgb2Bdgs7PPO4;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$LockDownAction$XAwczE30yz6IBOlgb2Bdgs7PPO4;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$LockDownAction;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
