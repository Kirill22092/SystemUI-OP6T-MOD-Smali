.class final Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$2;
.super Ljava/lang/Object;
.source "ChannelEditorListView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/ChannelRow;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ChannelRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ChannelRow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->access$getSwitch$p(Lcom/android/systemui/statusbar/notification/row/ChannelRow;)Landroid/widget/Switch;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Switch;->toggle()V

    return-void
.end method
