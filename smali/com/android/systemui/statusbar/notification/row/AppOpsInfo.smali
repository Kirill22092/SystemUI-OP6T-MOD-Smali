.class public Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;
.super Landroid/widget/LinearLayout;
.source "AppOpsInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/AppOpsInfo$OnSettingsClickListener;
    }
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppOps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppUid:I

.field private mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mOnOk:Landroid/view/View$OnClickListener;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/AppOpsInfo$OnSettingsClickListener;

.field private mPkg:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$AppOpsInfo$zS48CwL7b6UcUOuxgx7Zkw4dC1A;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$AppOpsInfo$zS48CwL7b6UcUOuxgx7Zkw4dC1A;-><init>(Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mOnOk:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private bindButtons()V
    .locals 2

    .line 119
    sget v0, Lcom/android/systemui/R$id;->settings:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$AppOpsInfo$MC_PUe5w52BX3b0kt9URHDzbSUA;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$AppOpsInfo$MC_PUe5w52BX3b0kt9URHDzbSUA;-><init>(Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget v0, Lcom/android/systemui/R$id;->ok:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mOnOk:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private bindHeader()V
    .locals 3

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mPkg:Ljava/lang/String;

    const v2, 0xc2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppUid:I

    .line 102
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppName:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 109
    :goto_0
    sget v1, Lcom/android/systemui/R$id;->pkgicon:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    sget v0, Lcom/android/systemui/R$id;->pkgname:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private bindPrompt()V
    .locals 1

    .line 114
    sget v0, Lcom/android/systemui/R$id;->prompt:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->getPrompt()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getPrompt()Ljava/lang/String;
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x1b

    const/16 v3, 0x1a

    if-ne v0, v1, :cond_3

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->appops_camera:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->appops_microphone:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 137
    :cond_2
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->appops_overlay:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->appops_camera_mic:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 144
    :cond_4
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->appops_camera_overlay:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 147
    :cond_5
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->appops_mic_overlay:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 150
    :cond_6
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->appops_camera_mic_overlay:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private synthetic lambda$bindButtons$1(Landroid/view/View;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/AppOpsInfo$OnSettingsClickListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppUid:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-interface {v0, p1, v1, v2, p0}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo$OnSettingsClickListener;->onClick(Landroid/view/View;Ljava/lang/String;ILandroid/util/ArraySet;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    return-void
.end method

.method private logUiEvent(Lcom/android/systemui/statusbar/notification/row/NotificationAppOpsEvent;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 211
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    .line 210
    invoke-interface {v1, p1, v0, v2, p0}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindGuts(Landroid/content/pm/PackageManager;Lcom/android/systemui/statusbar/notification/row/AppOpsInfo$OnSettingsClickListener;Landroid/service/notification/StatusBarNotification;Lcom/android/internal/logging/UiEventLogger;Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/systemui/statusbar/notification/row/AppOpsInfo$OnSettingsClickListener;",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mPkg:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 76
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppName:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/AppOpsInfo$OnSettingsClickListener;

    .line 78
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    .line 79
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->bindHeader()V

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->bindPrompt()V

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->bindButtons()V

    .line 85
    sget-object p1, Lcom/android/systemui/statusbar/notification/row/NotificationAppOpsEvent;->NOTIFICATION_APP_OPS_OPEN:Lcom/android/systemui/statusbar/notification/row/NotificationAppOpsEvent;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->logUiEvent(Lcom/android/systemui/statusbar/notification/row/NotificationAppOpsEvent;)V

    .line 86
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 p0, 0x541

    const/4 p2, 0x1

    .line 87
    invoke-virtual {p1, p0, p2}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    return-void
.end method

.method public getActualHeight()I
    .locals 0

    .line 205
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 0

    .line 196
    sget-object p1, Lcom/android/systemui/statusbar/notification/row/NotificationAppOpsEvent;->NOTIFICATION_APP_OPS_CLOSE:Lcom/android/systemui/statusbar/notification/row/NotificationAppOpsEvent;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->logUiEvent(Lcom/android/systemui/statusbar/notification/row/NotificationAppOpsEvent;)V

    .line 197
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/16 p2, 0x541

    .line 198
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    :cond_0
    return p1
.end method

.method public synthetic lambda$bindButtons$1$AppOpsInfo(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->lambda$bindButtons$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$0$AppOpsInfo(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public needsFalsingProtection()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 156
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_controls_opened_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_controls_closed_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mAppName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method public shouldBeSaved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public willBeRemoved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
