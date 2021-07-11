.class public Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;
.super Ljava/lang/Object;
.source "OpHighlightHintControllerImpl.java"

# interfaces
.implements Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field private mBarState:I

.field private mBgColor:I

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCarModeHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

.field private mCarModeShow:Z

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mExpandedVisible:Z

.field private mHeadUpShow:Z

.field private mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

.field private mHighlightHintShow:Z

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mKeyguardShow:Z

.field private mShowCarModeHighlightNotification:Z

.field private mShowHighlightNotification:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mHighlightHintShow:Z

    .line 32
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mHeadUpShow:Z

    .line 33
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mExpandedVisible:Z

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 36
    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mBgColor:I

    .line 39
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mCarModeShow:Z

    .line 40
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mKeyguardShow:Z

    .line 41
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 56
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private dumpInfo()V
    .locals 3

    .line 225
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 226
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mBarState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 227
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHighlightHintShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mHighlightHintShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " showNotification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mShowHighlightNotification:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " HeadsUp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mHeadUpShow:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " expanededAfterUnlock:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HighlightHintCtrl"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private onCarModeHighlightHintInfoUpdate()V
    .locals 1

    .line 161
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;

    .line 162
    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;->onCarModeHighlightHintInfoChange()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onCarModeHighlightHintStateChange()V
    .locals 3

    .line 150
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->shouldShowCarModeHighlightHint()Z

    move-result v0

    .line 151
    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mCarModeShow:Z

    if-eq v0, v1, :cond_0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarModeHighlightHintStateChange show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HighlightHintCtrl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mCarModeShow:Z

    .line 154
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;

    .line 155
    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mCarModeShow:Z

    invoke-interface {v1, v2}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;->onCarModeHighlightHintStateChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onHighlightHintInfoUpdate()V
    .locals 1

    .line 142
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;

    .line 143
    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintInfoChange()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onHighlightHintStateChange()V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->shouldShowHighlightHint()Z

    move-result v0

    .line 131
    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mHighlightHintShow:Z

    if-eq v0, v1, :cond_0

    .line 132
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mHighlightHintShow:Z

    .line 133
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->dumpInfo()V

    .line 134
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;

    .line 135
    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintStateChange()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private shouldShowCarModeHighlightHint()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mShowCarModeHighlightNotification:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mKeyguardShow:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-interface {p1}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintStateChange()V

    .line 215
    invoke-interface {p1}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintInfoChange()V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->addCallback(Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;)V

    return-void
.end method

.method public getCarModeHighlightHintNotification()Landroid/service/notification/StatusBarNotification;
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mCarModeHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    return-object p0
.end method

.method public getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-nez v0, :cond_0

    .line 69
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method public getHighlighColor()I
    .locals 0

    .line 172
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mBgColor:I

    return p0
.end method

.method public getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    return-object p0
.end method

.method public getKeyguardChronometer()Landroid/widget/Chronometer;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    .line 265
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->keyguardChronometer:Landroid/widget/Chronometer;

    return-object p0
.end method

.method public getStatusBarChronometer()Landroid/widget/Chronometer;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    .line 257
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->statusBarChronometer:Landroid/widget/Chronometer;

    return-object p0
.end method

.method public isCarModeHighlightHintSHow()Z
    .locals 0

    .line 176
    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mCarModeShow:Z

    return p0
.end method

.method public isHighLightHintShow()Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mHighlightHintShow:Z

    return p0
.end method

.method public launchCarModeAp(Landroid/content/Context;)V
    .locals 2

    const-string v0, "HighlightHintCtrl"

    const-string v1, "launchCarModeAp"

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mCarModeHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz p0, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->getIntentOnStatusBar()Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onBarStatechange(I)V
    .locals 2

    .line 121
    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mBarState:I

    if-eq v0, p1, :cond_0

    .line 122
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mBarState:I

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBarStatechange barstate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HighlightHintCtrl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->onHighlightHintStateChange()V

    .line 125
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->onCarModeHighlightHintStateChange()V

    :cond_0
    return-void
.end method

.method public onExpandedVisibleChange(Z)V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mExpandedVisible:Z

    if-eq v0, p1, :cond_0

    .line 114
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mExpandedVisible:Z

    .line 115
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->onHighlightHintStateChange()V

    .line 116
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->onCarModeHighlightHintStateChange()V

    :cond_0
    return-void
.end method

.method public onHeadUpPinnedModeChange(Z)V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mHeadUpShow:Z

    if-eq v0, p1, :cond_0

    .line 106
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mHeadUpShow:Z

    .line 107
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->onHighlightHintStateChange()V

    .line 108
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->onCarModeHighlightHintStateChange()V

    :cond_0
    return-void
.end method

.method public onKeyguardShowingChanged()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mKeyguardShow:Z

    .line 62
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardShowingChanged mKeyguardShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mKeyguardShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HighlightHintCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->onCarModeHighlightHintStateChange()V

    return-void
.end method

.method public onNotificationUpdate(ZLandroid/service/notification/StatusBarNotification;ZLandroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mShowHighlightNotification:Z

    .line 78
    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    .line 80
    iput-boolean p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mShowCarModeHighlightNotification:Z

    .line 81
    iput-object p4, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mCarModeHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 83
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getBackgroundColorOnStatusBar()I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mBgColor:I

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->onHighlightHintStateChange()V

    .line 90
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->onHighlightHintInfoUpdate()V

    .line 94
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mCarModeHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 96
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mCarModeHighlightHintNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getBackgroundColorOnStatusBar()I

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->onCarModeHighlightHintInfoUpdate()V

    .line 100
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->onCarModeHighlightHintStateChange()V

    return-void
.end method

.method public removeCallback(Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;)V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->removeCallback(Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;)V

    return-void
.end method

.method public shouldShowHighlightHint()Z
    .locals 5

    .line 185
    const-class v0, Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-virtual {v0}, Lcom/oneplus/scene/OpSceneModeObserver;->isInBrickMode()Z

    move-result v0

    .line 186
    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mExpandedVisible:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mBarState:I

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 187
    :goto_0
    iget-boolean v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mShowHighlightNotification:Z

    if-eqz v4, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintControllerImpl;->mHeadUpShow:Z

    if-nez p0, :cond_1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method public showOvalLayout()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
