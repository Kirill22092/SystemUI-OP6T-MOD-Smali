.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$RecoveryAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecoveryAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 2

    .line 2822
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RecoveryAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 2823
    sget v0, Lcom/android/systemui/R$drawable;->ic_recovery:I

    sget v1, Lcom/android/systemui/R$string;->zzz_op_global_action_recovery:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V
    .locals 0

    .line 2821
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RecoveryAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method

.method private synthetic lambda$onPress$0()V
    .locals 2

    .line 2841
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RecoveryAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1500(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "recovery"

    invoke-interface {p0, v0, v1, v0}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->op_reboot(ZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPress$0$GlobalActionsDialog$RecoveryAction()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RecoveryAction;->lambda$onPress$0()V

    return-void
.end method

.method public onPress()V
    .locals 4

    .line 2840
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RecoveryAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$RecoveryAction$odIMTe-NSZ26X-XtvuLjBVfOymY;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$RecoveryAction$odIMTe-NSZ26X-XtvuLjBVfOymY;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$RecoveryAction;)V

    const-wide/16 v2, 0x1f4

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

    const/4 p0, 0x0

    return p0
.end method
