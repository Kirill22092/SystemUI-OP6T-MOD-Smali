.class Lcom/android/systemui/pip/tv/PipNotification$1;
.super Ljava/lang/Object;
.source "PipNotification.java"

# interfaces
.implements Lcom/android/systemui/pip/tv/PipManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipNotification$1;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveToFullscreen()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$1;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->access$300(Lcom/android/systemui/pip/tv/PipNotification;)V

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification$1;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/pip/tv/PipNotification;->access$002(Lcom/android/systemui/pip/tv/PipNotification;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onPipActivityClosed()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$1;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->access$300(Lcom/android/systemui/pip/tv/PipNotification;)V

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification$1;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/pip/tv/PipNotification;->access$002(Lcom/android/systemui/pip/tv/PipNotification;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onPipEntered(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$1;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/tv/PipNotification;->access$002(Lcom/android/systemui/pip/tv/PipNotification;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipNotification$1;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipNotification;->access$100(Lcom/android/systemui/pip/tv/PipNotification;)Z

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification$1;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {p0}, Lcom/android/systemui/pip/tv/PipNotification;->access$200(Lcom/android/systemui/pip/tv/PipNotification;)V

    return-void
.end method

.method public onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 0

    return-void
.end method

.method public onPipResizeAboutToStart()V
    .locals 0

    return-void
.end method

.method public onShowPipMenu()V
    .locals 0

    return-void
.end method
