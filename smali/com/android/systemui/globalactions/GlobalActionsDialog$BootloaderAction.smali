.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$BootloaderAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootloaderAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 2

    .line 2847
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BootloaderAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 2848
    sget v0, Lcom/android/systemui/R$drawable;->ic_bootloader:I

    sget v1, Lcom/android/systemui/R$string;->zzz_op_global_action_bootloader:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V
    .locals 0

    .line 2846
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$BootloaderAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 2

    .line 2864
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BootloaderAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1500(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "bootloader"

    invoke-interface {p0, v0, v1, v0}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->op_reboot(ZLjava/lang/String;Z)V

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
