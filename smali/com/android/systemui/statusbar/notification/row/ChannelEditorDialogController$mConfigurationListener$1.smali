.class public final Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$mConfigurationListener$1;
.super Ljava/lang/Object;
.source "ChannelEditorDialogController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;-><init>(Landroid/content/Context;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$mConfigurationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$mConfigurationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->access$getMOrientation$p(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$mConfigurationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->access$setMOrientation$p(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$mConfigurationListener$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->access$done(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method
