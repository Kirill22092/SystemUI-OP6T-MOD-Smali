.class public Lcom/oneplus/aod/OpAodMain;
.super Landroid/widget/RelativeLayout;
.source "OpAodMain.java"

# interfaces
.implements Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;


# static fields
.field private static final AOD_ALPHA_VALUE:F


# instance fields
.field private mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

.field private mClockContainer:Landroid/widget/FrameLayout;

.field private mController:Lcom/oneplus/aod/controller/IOpClockController;

.field private mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

.field private mNotificationIconContainer:Landroid/widget/LinearLayout;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mSliceInfoContainer:Landroid/widget/LinearLayout;

.field private mSystemInfoContainer:Landroid/widget/LinearLayout;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.aod_alpha_value"

    const/16 v1, 0x2bc

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    sput v0, Lcom/oneplus/aod/OpAodMain;->AOD_ALPHA_VALUE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/OpAodMain;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OpAodMain;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/OpAodMain;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method private updateClockStyle()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    const-string v0, "OpAodMain"

    const-string v2, "controller is null. set all to gone!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    invoke-interface {v0}, Lcom/oneplus/aod/controller/IOpClockController;->shouldShowDate()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v2}, Lcom/oneplus/aod/controller/IOpClockController;->shouldShowBattery()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getAodNotificationIconCtrl()Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->hasNotifications()Z

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    iget-object v2, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v2}, Lcom/oneplus/aod/controller/IOpClockController;->shouldShowNotification()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v0}, Lcom/oneplus/aod/controller/IOpClockController;->shouldShowOwnerInfo()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method private updateRTL()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodMain;->updateRTL(I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aod main alpha= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->setAlphaDependOnEnvironmentLight()V

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    return-void
.end method

.method public onClockChanged(Lcom/oneplus/aod/controller/IOpClockController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateClockStyle()V

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    sget v0, Lcom/android/systemui/R$id;->battery_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpAodBatteryStatusView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    sget v0, Lcom/android/systemui/R$id;->notification_icon_area_inner:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/systemui/R$id;->slice_info_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/systemui/R$id;->date_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/views/OpTextDate;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    sget v0, Lcom/android/systemui/R$id;->owner_info:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->op_aod_system_info_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mSystemInfoContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/systemui/R$id;->op_aod_clock_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mClockContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateRTL()V

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateDisplayTextDB()V

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->setAlphaDependOnEnvironmentLight()V

    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    invoke-virtual {p0}, Lcom/oneplus/aod/views/OpTextDate;->onTimeChanged()V

    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateDisplayTextDB()V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateDisplayTextDB()V

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateRTL()V

    return-void
.end method

.method public setAlphaDependOnEnvironmentLight()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isLowLightEnv()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/oneplus/aod/OpAodMain;->AOD_ALPHA_VALUE:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method

.method public updateDisplayTextDB()V
    .locals 3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aod_display_text"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/oneplus/aod/controller/IOpClockController;->shouldShowOwnerInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateClock: updateDisplayTextDB = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpAodMain"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method updateLayout()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mSystemInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applySystemInfoViewMargin(Landroid/widget/RelativeLayout$LayoutParams;)V

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mSystemInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    invoke-interface {v0, v1}, Lcom/oneplus/aod/controller/IOpClockController;->applyDateInfoTextSettings(Lcom/oneplus/aod/views/OpTextDate;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applyDateInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applySliceInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-interface {v0, v1}, Lcom/oneplus/aod/controller/IOpClockController;->applyBatteryInfoTextSettings(Lcom/oneplus/aod/OpAodBatteryStatusView;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applyBatteryInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getAodNotificationIconCtrl()Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applyNotificationInfoTextSettings(Lcom/oneplus/aod/OpAodNotificationIconAreaController;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applyNotificationInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcom/oneplus/aod/controller/IOpClockController;->applyOwnerInfoTextSettings(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applyOwnerInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method protected updateRTL(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mSystemInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mClockContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mSystemInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mClockContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method
