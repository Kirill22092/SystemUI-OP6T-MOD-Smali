.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogoutAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 2

    .line 1172
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const v0, 0x10803f9

    const v1, 0x1040382

    .line 1173
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V
    .locals 0

    .line 1171
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method

.method private synthetic lambda$onPress$0()V
    .locals 3

    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2500(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 1193
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 1194
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/app/IActivityManager;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t logout user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GlobalActionsDialog"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onPress$0$GlobalActionsDialog$LogoutAction()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;->lambda$onPress$0()V

    return-void
.end method

.method public onPress()V
    .locals 4

    .line 1190
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$LogoutAction$3H17sX2I_BqMu2dZ5Dekk1AEv-U;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$LogoutAction$3H17sX2I_BqMu2dZ5Dekk1AEv-U;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LogoutAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 1198
    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2100(Lcom/android/systemui/globalactions/GlobalActionsDialog;)I

    move-result p0

    int-to-long v2, p0

    .line 1190
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
