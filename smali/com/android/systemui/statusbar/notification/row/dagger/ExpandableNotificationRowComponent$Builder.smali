.class public interface abstract Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;
.super Ljava/lang/Object;
.source "ExpandableNotificationRowComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract build()Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent;
.end method

.method public abstract expandableNotificationRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;
.end method

.method public abstract notificationEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;
.end method

.method public abstract onDismissRunnable(Ljava/lang/Runnable;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;
.end method

.method public abstract onExpandClickListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;
.end method

.method public abstract rowContentBindStage(Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;)Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent$Builder;
.end method
