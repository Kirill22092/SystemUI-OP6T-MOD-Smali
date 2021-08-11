.class final Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$2;
.super Ljava/lang/Object;
.source "ChannelEditorDialogController.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $listView:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

.field final synthetic $this_apply:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$2;->$this_apply:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$2;->$listView:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->access$getProvidedChannels$p(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$2;->$listView:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->highlightChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->access$getConfigurationController$p(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->access$getMConfigurationListener$p(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$mConfigurationListener$1;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$2;->$this_apply:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "context.resources"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->access$setMOrientation$p(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;I)V

    return-void
.end method
