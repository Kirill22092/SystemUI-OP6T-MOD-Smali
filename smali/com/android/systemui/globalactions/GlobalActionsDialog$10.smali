.class Lcom/android/systemui/globalactions/GlobalActionsDialog$10;
.super Landroid/os/Handler;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    .line 2185
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$10;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 2187
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 2199
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$10;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$4300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    .line 2200
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$10;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 2189
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$10;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz v0, :cond_3

    .line 2190
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "dream"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2191
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$10;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object p1, p1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->access$4200(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    goto :goto_0

    .line 2193
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$10;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object p1, p1, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-virtual {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    .line 2195
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$10;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    :cond_3
    :goto_1
    return-void
.end method
