.class Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction$1;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;)V
    .locals 0

    .line 1121
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1126
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    const/16 v1, 0x124

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 1128
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1800(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;->GA_BUGREPORT_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialog$GlobalActionsEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 1129
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->launchBugReportHandlerApp()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GlobalActionsDialog"

    const-string v1, "Bugreport handler could not be launched"

    .line 1130
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction$1;->this$1:Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$BugReportAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
