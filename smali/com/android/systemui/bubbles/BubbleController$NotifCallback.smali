.class public interface abstract Lcom/android/systemui/bubbles/BubbleController$NotifCallback;
.super Ljava/lang/Object;
.source "BubbleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotifCallback"
.end annotation


# virtual methods
.method public abstract invalidateNotifications(Ljava/lang/String;)V
.end method

.method public abstract maybeCancelSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
.end method

.method public abstract removeNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
.end method
