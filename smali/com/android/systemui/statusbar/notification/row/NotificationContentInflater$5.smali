.class Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;
.super Ljava/lang/Object;
.source "NotificationContentInflater.java"

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->applyRemoteView(Ljava/util/concurrent/Executor;ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$applyCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;

.field final synthetic val$callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

.field final synthetic val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field final synthetic val$existingView:Landroid/view/View;

.field final synthetic val$existingWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

.field final synthetic val$inflationId:I

.field final synthetic val$isNewView:Z

.field final synthetic val$newContentView:Landroid/widget/RemoteViews;

.field final synthetic val$parentLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

.field final synthetic val$reInflateFlags:I

.field final synthetic val$remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

.field final synthetic val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field final synthetic val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

.field final synthetic val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field final synthetic val$runningInflations:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;ILcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/view/View;Landroid/widget/RemoteViews;Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$isNewView:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$applyCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$runningInflations:Ljava/util/HashMap;

    iput p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$inflationId:I

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    iput p8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$reInflateFlags:I

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p12, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$existingView:Landroid/view/View;

    iput-object p13, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$newContentView:Landroid/widget/RemoteViews;

    iput-object p14, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$parentLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iput-object p15, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 6

    const-string v0, "NotifContentInflater"

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$existingView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$isNewView:Z

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$newContentView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$parentLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$newContentView:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$existingView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    :goto_0
    const-string v2, "Async Inflation failed but normal inflation finished normally."

    invoke-static {v0, v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->onViewApplied(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    const-string v2, "handleInflationError, "

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$runningInflations:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$inflationId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$runningInflations:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    invoke-static {v0, p1, v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->access$1600(Ljava/util/HashMap;Ljava/lang/Exception;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V

    goto :goto_2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleInflationError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$runningInflations:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$inflationId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$runningInflations:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    invoke-static {v0, p1, v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->access$1600(Ljava/util/HashMap;Ljava/lang/Exception;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V

    :goto_2
    return-void
.end method

.method public onViewApplied(Landroid/view/View;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$isNewView:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setIsRootNamespace(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$applyCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;->setResultView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onReinflated()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$runningInflations:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$inflationId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$result:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$reInflateFlags:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$remoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$runningInflations:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$callback:Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->access$1500(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    return-void
.end method

.method public onViewInflated(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/android/internal/widget/ImageMessageConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/internal/widget/ImageMessageConsumer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;->val$row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getImageResolver()Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/widget/ImageMessageConsumer;->setImageResolver(Lcom/android/internal/widget/ImageResolver;)V

    :cond_0
    return-void
.end method
