.class public interface abstract Lcom/android/systemui/statusbar/notification/collection/SimpleNotificationListContainer;
.super Ljava/lang/Object;
.source "SimpleNotificationListContainer.kt"


# virtual methods
.method public abstract addListItem(Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;)V
    .param p1    # Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract generateChildOrderChangedEvent()V
.end method

.method public abstract getContainerChildAt(I)Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getContainerChildCount()I
.end method

.method public abstract notifyGroupChildAdded(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract notifyGroupChildRemoved(Landroid/view/View;Landroid/view/ViewGroup;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract removeListItem(Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;)V
    .param p1    # Lcom/android/systemui/statusbar/notification/stack/NotificationListItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setChildTransferInProgress(Z)V
.end method
