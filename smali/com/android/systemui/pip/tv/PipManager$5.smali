.class Lcom/android/systemui/pip/tv/PipManager$5;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 2

    sget-boolean p2, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    const-string p3, "PipManager"

    if-eqz p2, :cond_0

    const-string p2, "onActivityPinned()"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p2}, Lcom/android/systemui/pip/tv/PipManager;->access$1700(Lcom/android/systemui/pip/tv/PipManager;)Landroid/app/ActivityManager$StackInfo;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p0, "Cannot find pinned stack"

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-boolean p4, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz p4, :cond_2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PINNED_STACK:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p3, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    iget p4, p2, Landroid/app/ActivityManager$StackInfo;->stackId:I

    invoke-static {p3, p4}, Lcom/android/systemui/pip/tv/PipManager;->access$2202(Lcom/android/systemui/pip/tv/PipManager;I)I

    iget-object p3, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    iget-object p4, p2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v0, p4

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget p4, p4, v0

    invoke-static {p3, p4}, Lcom/android/systemui/pip/tv/PipManager;->access$1902(Lcom/android/systemui/pip/tv/PipManager;I)I

    iget-object p3, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    iget-object p2, p2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length p4, p2

    sub-int/2addr p4, v1

    aget-object p2, p2, p4

    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/systemui/pip/tv/PipManager;->access$2302(Lcom/android/systemui/pip/tv/PipManager;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object p2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p2, v1}, Lcom/android/systemui/pip/tv/PipManager;->access$402(Lcom/android/systemui/pip/tv/PipManager;I)I

    iget-object p2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p2}, Lcom/android/systemui/pip/tv/PipManager;->access$600(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/systemui/pip/tv/PipManager;->access$2402(Lcom/android/systemui/pip/tv/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p2}, Lcom/android/systemui/pip/tv/PipManager;->access$2600(Lcom/android/systemui/pip/tv/PipManager;)Landroid/media/session/MediaSessionManager;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p3}, Lcom/android/systemui/pip/tv/PipManager;->access$2500(Lcom/android/systemui/pip/tv/PipManager;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    iget-object p2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p2}, Lcom/android/systemui/pip/tv/PipManager;->access$2600(Lcom/android/systemui/pip/tv/PipManager;)Landroid/media/session/MediaSessionManager;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/systemui/pip/tv/PipManager;->access$300(Lcom/android/systemui/pip/tv/PipManager;Ljava/util/List;)V

    iget-object p2, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p2}, Lcom/android/systemui/pip/tv/PipManager;->access$1000(Lcom/android/systemui/pip/tv/PipManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_0
    if-ltz p2, :cond_3

    iget-object p3, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p3}, Lcom/android/systemui/pip/tv/PipManager;->access$1000(Lcom/android/systemui/pip/tv/PipManager;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {p3, p1}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onPipEntered(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p0, v1}, Lcom/android/systemui/pip/tv/PipManager;->access$2700(Lcom/android/systemui/pip/tv/PipManager;Z)V

    return-void
.end method

.method public onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V
    .locals 0

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    sget-boolean p1, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "PipManager"

    const-string p2, "onPinnedActivityRestartAttempt()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipManager;->movePipToFullscreen()V

    return-void
.end method

.method public onTaskStackChanged()V
    .locals 6

    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    const-string v1, "PipManager"

    if-eqz v0, :cond_0

    const-string v0, "onTaskStackChanged()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$1600(Lcom/android/systemui/pip/tv/PipManager;)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$1700(Lcom/android/systemui/pip/tv/PipManager;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v4, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    array-length v1, v4

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    iget-object v4, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v5}, Lcom/android/systemui/pip/tv/PipManager;->access$1900(Lcom/android/systemui/pip/tv/PipManager;)I

    move-result v5

    if-ne v4, v5, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v3, :cond_5

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p0, v2}, Lcom/android/systemui/pip/tv/PipManager;->access$1800(Lcom/android/systemui/pip/tv/PipManager;Z)V

    return-void

    :cond_4
    :goto_2
    const-string v0, "There is nothing in pinned stack"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {p0, v3}, Lcom/android/systemui/pip/tv/PipManager;->access$1800(Lcom/android/systemui/pip/tv/PipManager;Z)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$1600(Lcom/android/systemui/pip/tv/PipManager;)I

    move-result v0

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$2000(Lcom/android/systemui/pip/tv/PipManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$2100(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipManager;->access$1500(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v0

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipManager;->access$600(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;

    move-result-object v1

    if-eq v1, v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-static {v1, v0}, Lcom/android/systemui/pip/tv/PipManager;->access$602(Lcom/android/systemui/pip/tv/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager$5;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {p0, v2}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    :cond_7
    return-void
.end method
