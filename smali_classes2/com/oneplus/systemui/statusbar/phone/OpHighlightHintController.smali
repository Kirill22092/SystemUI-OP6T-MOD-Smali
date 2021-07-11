.class public interface abstract Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;
.super Ljava/lang/Object;
.source "OpHighlightHintController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCarModeHighlightHintNotification()Landroid/service/notification/StatusBarNotification;
.end method

.method public abstract getHighlighColor()I
.end method

.method public abstract getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;
.end method

.method public abstract getKeyguardChronometer()Landroid/widget/Chronometer;
.end method

.method public abstract getStatusBarChronometer()Landroid/widget/Chronometer;
.end method

.method public abstract isCarModeHighlightHintSHow()Z
.end method

.method public abstract isHighLightHintShow()Z
.end method

.method public abstract launchCarModeAp(Landroid/content/Context;)V
.end method

.method public abstract onBarStatechange(I)V
.end method

.method public abstract onExpandedVisibleChange(Z)V
.end method

.method public abstract onHeadUpPinnedModeChange(Z)V
.end method

.method public abstract onNotificationUpdate(ZLandroid/service/notification/StatusBarNotification;ZLandroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract showOvalLayout()Z
.end method
