.class public interface abstract Lcom/oneplus/aod/controller/IOpClockController;
.super Ljava/lang/Object;
.source "IOpClockController.java"


# virtual methods
.method public applyBatteryInfoTextSettings(Lcom/oneplus/aod/OpAodBatteryStatusView;)V
    .locals 0

    return-void
.end method

.method public abstract applyBatteryInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V
.end method

.method public applyDateInfoTextSettings(Lcom/oneplus/aod/views/OpTextDate;)V
    .locals 0

    return-void
.end method

.method public abstract applyDateInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V
.end method

.method public applyNotificationInfoTextSettings(Lcom/oneplus/aod/OpAodNotificationIconAreaController;)V
    .locals 0

    return-void
.end method

.method public abstract applyNotificationInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V
.end method

.method public applyOwnerInfoTextSettings(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public abstract applyOwnerInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V
.end method

.method public abstract applySliceInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V
.end method

.method public abstract applySystemInfoViewMargin(Landroid/widget/RelativeLayout$LayoutParams;)V
.end method

.method public getBound()Landroid/graphics/Rect;
    .locals 0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public getBurnInHandleClassName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getClockView()Landroid/view/View;
.end method

.method public abstract getCurrentView()Landroid/view/View;
.end method

.method public getMovingDistance()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onDestroyView()V
.end method

.method public abstract onFodIndicationVisibilityChanged(Z)V
.end method

.method public abstract onFodShowOrHideOnAod(Z)V
.end method

.method public onScreenTurnedOff()V
    .locals 0

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    return-void
.end method

.method public onTimeTick()V
    .locals 0

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    return-void
.end method

.method public abstract onUserTrigger(I)V
.end method

.method public abstract recoverFromBurnInScreen()V
.end method

.method public shouldShowBattery()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldShowDate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldShowNotification()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldShowOwnerInfo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldShowSliceInfo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateSettings(I)V
    .locals 0

    return-void
.end method
