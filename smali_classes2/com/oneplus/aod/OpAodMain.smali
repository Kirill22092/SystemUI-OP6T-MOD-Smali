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

    .line 45
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

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/OpAodMain;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OpAodMain;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/OpAodMain;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method private updateClockStyle()V
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    const-string v0, "OpAodMain"

    const-string v2, "controller is null. set all to gone!"

    .line 203
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 210
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

    .line 213
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

    .line 217
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 220
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getAodNotificationIconCtrl()Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 222
    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->hasNotifications()Z

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v3

    .line 225
    :goto_2
    iget-object v2, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v2}, Lcom/oneplus/aod/controller/IOpClockController;->shouldShowNotification()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    :goto_3
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v0}, Lcom/oneplus/aod/controller/IOpClockController;->shouldShowOwnerInfo()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    .line 232
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 233
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 235
    :cond_5
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    :goto_4
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {p0}, Lcom/oneplus/aod/controller/IOpClockController;->shouldShowSliceInfo()Z

    move-result p0

    if-eqz p0, :cond_6

    move v1, v3

    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method private updateRTL()V
    .locals 1

    .line 125
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

    .line 280
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

    .line 83
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 86
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->setAlphaDependOnEnvironmentLight()V

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    return-void
.end method

.method public onClockChanged(Lcom/oneplus/aod/controller/IOpClockController;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    .line 247
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateClockStyle()V

    .line 248
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 95
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 97
    sget v0, Lcom/android/systemui/R$id;->battery_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpAodBatteryStatusView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    .line 98
    sget v0, Lcom/android/systemui/R$id;->notification_icon_area_inner:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    .line 99
    sget v0, Lcom/android/systemui/R$id;->slice_info_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    .line 100
    sget v0, Lcom/android/systemui/R$id;->date_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/views/OpTextDate;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    .line 101
    sget v0, Lcom/android/systemui/R$id;->owner_info:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    .line 102
    sget v0, Lcom/android/systemui/R$id;->op_aod_system_info_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mSystemInfoContainer:Landroid/widget/LinearLayout;

    .line 103
    sget v0, Lcom/android/systemui/R$id;->op_aod_clock_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mClockContainer:Landroid/widget/FrameLayout;

    .line 105
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateRTL()V

    .line 106
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    .line 107
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateDisplayTextDB()V

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->setAlphaDependOnEnvironmentLight()V

    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    invoke-virtual {p0}, Lcom/oneplus/aod/views/OpTextDate;->onTimeChanged()V

    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0

    .line 252
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateDisplayTextDB()V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 120
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateDisplayTextDB()V

    .line 121
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodMain;->updateRTL()V

    return-void
.end method

.method public setAlphaDependOnEnvironmentLight()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isLowLightEnv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
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

    .line 260
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 262
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aod_display_text"

    .line 261
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 263
    iget-object v2, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v2, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/oneplus/aod/controller/IOpClockController;->shouldShowOwnerInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
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

    .line 267
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

    .line 153
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mSystemInfoContainer:Landroid/widget/LinearLayout;

    .line 156
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 157
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applySystemInfoViewMargin(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 158
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mSystemInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    invoke-interface {v0, v1}, Lcom/oneplus/aod/controller/IOpClockController;->applyDateInfoTextSettings(Lcom/oneplus/aod/views/OpTextDate;)V

    .line 163
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    .line 164
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 165
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applyDateInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 166
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mDateTimeView:Lcom/oneplus/aod/views/OpTextDate;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 169
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applySliceInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 170
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-interface {v0, v1}, Lcom/oneplus/aod/controller/IOpClockController;->applyBatteryInfoTextSettings(Lcom/oneplus/aod/OpAodBatteryStatusView;)V

    .line 175
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 176
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applyBatteryInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 177
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->getAodNotificationIconCtrl()Lcom/oneplus/aod/OpAodNotificationIconAreaController;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applyNotificationInfoTextSettings(Lcom/oneplus/aod/OpAodNotificationIconAreaController;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 188
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applyNotificationInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 189
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcom/oneplus/aod/controller/IOpClockController;->applyOwnerInfoTextSettings(Landroid/widget/TextView;)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/aod/OpAodMain;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 195
    iget-object v1, p0, Lcom/oneplus/aod/OpAodMain;->mController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v0}, Lcom/oneplus/aod/controller/IOpClockController;->applyOwnerInfoViewMargin(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 196
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

    .line 132
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 133
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 134
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 135
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mSystemInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 136
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mClockContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    goto :goto_1

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 139
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mBatteryContainer:Lcom/oneplus/aod/OpAodBatteryStatusView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 140
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mSliceInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 141
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mSystemInfoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 142
    iget-object p1, p0, Lcom/oneplus/aod/OpAodMain;->mClockContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 144
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodMain;->updateLayout()V

    .line 145
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method
