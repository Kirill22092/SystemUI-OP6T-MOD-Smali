.class final Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "ChannelEditorDialogController.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->access$getConfigurationController$p(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->access$getMConfigurationListener$p(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$mConfigurationListener$1;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->getOnFinishListener()Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;->onChannelEditorDialogFinished()V

    :cond_1
    return-void
.end method
