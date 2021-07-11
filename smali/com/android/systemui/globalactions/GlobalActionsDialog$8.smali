.class Lcom/android/systemui/globalactions/GlobalActionsDialog$8;
.super Landroid/telephony/PhoneStateListener;
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

    .line 2156
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    .line 2159
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2160
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2161
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    :goto_1
    invoke-static {v0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3602(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    .line 2162
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3800(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleState;)V

    .line 2163
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2164
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3900(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2165
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$8;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$4000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
