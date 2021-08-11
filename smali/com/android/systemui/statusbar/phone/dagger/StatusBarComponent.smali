.class public interface abstract Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent;
.super Ljava/lang/Object;
.source "StatusBarComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/dagger/StatusBarComponent$Builder;
    }
.end annotation


# virtual methods
.method public abstract getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end method

.method public abstract getNotificationShadeWindowViewController()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;
.end method

.method public abstract getStatusBarWindowController()Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
.end method
