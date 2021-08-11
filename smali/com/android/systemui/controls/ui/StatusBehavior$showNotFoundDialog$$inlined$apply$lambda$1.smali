.class final Lcom/android/systemui/controls/ui/StatusBehavior$showNotFoundDialog$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "StatusBehavior.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/StatusBehavior;->showNotFoundDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ControlWithState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cvh$inlined:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field final synthetic $cws$inlined:Lcom/android/systemui/controls/ui/ControlWithState;

.field final synthetic $this_apply:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog$Builder;Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/CharSequence;Lcom/android/systemui/controls/ui/ControlWithState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/StatusBehavior$showNotFoundDialog$$inlined$apply$lambda$1;->$this_apply:Landroid/app/AlertDialog$Builder;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/StatusBehavior$showNotFoundDialog$$inlined$apply$lambda$1;->$cvh$inlined:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-object p4, p0, Lcom/android/systemui/controls/ui/StatusBehavior$showNotFoundDialog$$inlined$apply$lambda$1;->$cws$inlined:Lcom/android/systemui/controls/ui/ControlWithState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/controls/ui/StatusBehavior$showNotFoundDialog$$inlined$apply$lambda$1;->$cws$inlined:Lcom/android/systemui/controls/ui/ControlWithState;

    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/ControlWithState;->getControl()Landroid/service/controls/Control;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/service/controls/Control;->getAppIntent()Landroid/app/PendingIntent;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/PendingIntent;->send()V

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/controls/ui/StatusBehavior$showNotFoundDialog$$inlined$apply$lambda$1;->$this_apply:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/StatusBehavior$showNotFoundDialog$$inlined$apply$lambda$1;->$cvh$inlined:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setErrorStatus()V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
