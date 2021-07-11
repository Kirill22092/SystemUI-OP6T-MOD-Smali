.class public interface abstract Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;
.super Ljava/lang/Object;
.source "NotificationListItem.java"


# virtual methods
.method public abstract addChildNotification(Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;I)V
.end method

.method public abstract applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract getAttachedChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract isBlockingHelperShowing()Z
.end method

.method public abstract isSummaryWithChildren()Z
.end method

.method public abstract removeAllChildren()V
.end method

.method public abstract removeChildNotification(Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;)V
.end method

.method public abstract setUntruncatedChildCount(I)V
.end method
