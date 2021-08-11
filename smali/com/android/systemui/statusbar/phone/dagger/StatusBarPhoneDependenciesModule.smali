.class public interface abstract Lcom/android/systemui/statusbar/phone/dagger/StatusBarPhoneDependenciesModule;
.super Ljava/lang/Object;
.source "StatusBarPhoneDependenciesModule.java"


# direct methods
.method public static provideNotificationGroupAlertTransferHelper(Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;)Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;-><init>(Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;)V

    return-object v0
.end method
