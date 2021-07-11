.class final Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$4;
.super Ljava/lang/Object;
.source "ChannelEditorDialogController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$4;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$4;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->launchSettings(Landroid/view/View;)V

    .line 359
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$$inlined$apply$lambda$4;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->access$done(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V

    return-void
.end method
