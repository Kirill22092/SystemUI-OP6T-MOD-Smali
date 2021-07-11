.class public interface abstract Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;
.super Ljava/lang/Object;
.source "NotificationRowContentBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;,
        Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;
    }
.end annotation


# virtual methods
.method public abstract bindContent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;ZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V
.end method

.method public abstract cancelBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
.end method

.method public abstract unbindContent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V
.end method
