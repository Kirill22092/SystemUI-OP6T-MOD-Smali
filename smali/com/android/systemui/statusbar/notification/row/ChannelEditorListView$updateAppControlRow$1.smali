.class final Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateAppControlRow$1;
.super Ljava/lang/Object;
.source "ChannelEditorListView.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->updateAppControlRow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateAppControlRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateAppControlRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->getController()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->proposeSetAppNotificationsEnabled(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateAppControlRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->access$updateRows(Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;)V

    return-void
.end method
