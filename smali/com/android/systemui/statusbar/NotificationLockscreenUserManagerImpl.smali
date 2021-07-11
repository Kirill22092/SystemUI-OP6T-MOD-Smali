.class public Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;
.super Lcom/oneplus/systemui/statusbar/OpNotificationLockscreenUserManagerImpl;
.source "NotificationLockscreenUserManagerImpl.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field protected final mAllUsersReceiver:Landroid/content/BroadcastReceiver;

.field private mAllowLockscreenRemoteInput:Z

.field protected final mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

.field protected final mContext:Landroid/content/Context;

.field protected final mCurrentManagedProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentUserId:I

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field protected mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

.field protected mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field private final mMainHandler:Landroid/os/Handler;

.field protected mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field protected mSettingsObserver:Landroid/database/ContentObserver;

.field private mShowLockscreenNotifications:Z

.field private mState:I

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

.field private final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field private final mUsersWithSeperateWorkChallenge:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Lcom/android/systemui/statusbar/NotificationClickNotifier;Landroid/app/KeyguardManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 2

    .line 225
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/OpNotificationLockscreenUserManagerImpl;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    .line 98
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeperateWorkChallenge:Landroid/util/SparseBooleanArray;

    .line 99
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 100
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mState:I

    .line 112
    new-instance v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$1;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mAllUsersReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$2;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 201
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    .line 203
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 226
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    .line 227
    iput-object p8, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mMainHandler:Landroid/os/Handler;

    .line 228
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 229
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserManager:Landroid/os/UserManager;

    .line 230
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 231
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    .line 232
    invoke-interface {p7, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 233
    new-instance p3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 234
    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 235
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 236
    iput-object p9, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 237
    iput-object p10, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 241
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget p2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/systemui/statusbar/OpNotificationLockscreenUserManagerImpl;->setSecure(Lcom/android/internal/widget/LockPatternUtils;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/systemui/statusbar/OpNotificationLockscreenUserManagerImpl;->setSecure(Lcom/android/internal/widget/LockPatternUtils;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/systemui/statusbar/OpNotificationLockscreenUserManagerImpl;->setSecure(Lcom/android/internal/widget/LockPatternUtils;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Lcom/android/systemui/statusbar/NotificationClickNotifier;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object p0
.end method

.method private adminAllowsKeyguardFeature(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    .line 479
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    .line 480
    invoke-virtual {p0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/2addr p0, p2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-nez v0, :cond_0

    .line 210
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method private hideSilentNotificationsOnLockscreen()Z
    .locals 1

    .line 399
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLockscreenUserManagerImpl$ghZezzviwGt8pgH-T3DEzpSavw8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLockscreenUserManagerImpl$ghZezzviwGt8pgH-T3DEzpSavw8;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$hideSilentNotificationsOnLockscreen$0()Ljava/lang/Boolean;
    .locals 2

    .line 399
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_show_silent_notifications"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateCurrentProfilesCache$1()V
    .locals 3

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;

    .line 574
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;->onCurrentProfilesChanged(Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$updatePublicMode$2(I)Ljava/lang/Boolean;
    .locals 0

    .line 644
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private packageHasVisibilityOverride(Ljava/lang/String;)Z
    .locals 2

    .line 550
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 551
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "LockscreenUserManager"

    const-string v0, "mEntryManager was null!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 554
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getVisibilityOverride()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setLockscreenAllowRemoteInput(Z)V
    .locals 0

    .line 408
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mAllowLockscreenRemoteInput:Z

    return-void
.end method

.method private setShowLockscreenNotifications(Z)V
    .locals 0

    .line 404
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    return-void
.end method

.method private shouldTemporarilyHideNotifications(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 339
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 341
    :cond_0
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserInLockdown(I)Z

    move-result p0

    return p0
.end method

.method private updateCurrentProfilesCache()V
    .locals 5

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 562
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 563
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_1

    .line 564
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 565
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v3, "android.os.usertype.profile.MANAGED"

    .line 566
    iget-object v4, v2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 567
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 571
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLockscreenUserManagerImpl$PLQsiLSkjaG6xwZdvFK_TGqwDWU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLockscreenUserManagerImpl$PLQsiLSkjaG6xwZdvFK_TGqwDWU;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 571
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V
    .locals 0

    .line 659
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "NotificationLockscreenUserManager state:"

    .line 700
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mCurrentUserId="

    .line 701
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 702
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mShowLockscreenNotifications="

    .line 703
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 704
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mAllowLockscreenRemoteInput="

    .line 705
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 706
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mAllowLockscreenRemoteInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mCurrentProfiles="

    .line 707
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 710
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 711
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 713
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v0, "  mCurrentManagedProfiles="

    .line 714
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 715
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 716
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 717
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 719
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 720
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 724
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/systemui/statusbar/OpNotificationLockscreenUserManagerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 719
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 713
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public getCurrentProfiles()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 615
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getCurrentUserId()I
    .locals 0

    .line 611
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    return p0
.end method

.method public isAnyProfilePublicMode()Z
    .locals 4

    .line 583
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 585
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 586
    monitor-exit v0

    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 589
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isCurrentProfile(I)Z
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 329
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    .line 330
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isLockscreenPublicMode(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 493
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0

    .line 495
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$hideSilentNotificationsOnLockscreen$0$NotificationLockscreenUserManagerImpl()Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->lambda$hideSilentNotificationsOnLockscreen$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$updateCurrentProfilesCache$1$NotificationLockscreenUserManagerImpl()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->lambda$updateCurrentProfilesCache$1()V

    return-void
.end method

.method public synthetic lambda$updatePublicMode$2$NotificationLockscreenUserManagerImpl(I)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->lambda$updatePublicMode$2(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    .line 529
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 531
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 532
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 533
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentManagedProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    .line 534
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v0

    xor-int/2addr v0, v2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v4

    .line 543
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->visibility:I

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v4

    .line 544
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v4

    :cond_5
    :goto_2
    return v2
.end method

.method public needsSeparateWorkChallenge(I)Z
    .locals 1

    .line 500
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeperateWorkChallenge:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 620
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mState:I

    .line 621
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updatePublicMode()V

    return-void
.end method

.method public setLockscreenPublicMode(ZI)V
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenPublicMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V
    .locals 5

    .line 247
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 249
    new-instance p1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 263
    new-instance p1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$4;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 274
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lock_screen_show_notifications"

    .line 275
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 274
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 279
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lock_screen_allow_private_notifications"

    .line 280
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    .line 279
    invoke-virtual {p1, v0, v4, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 285
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "zen_mode"

    .line 286
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 285
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 297
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mAllUsersReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v1, v4, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 301
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 302
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_ADDED"

    .line 303
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 304
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 305
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 306
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p1, v4, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 310
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    .line 311
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mBaseBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.android.systemui.permission.SELF"

    invoke-virtual {v0, v1, p1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 314
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updateCurrentProfilesCache()V

    .line 316
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public shouldAllowLockscreenRemoteInput()Z
    .locals 0

    .line 324
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mAllowLockscreenRemoteInput:Z

    return p0
.end method

.method public shouldHideNotifications(I)Z
    .locals 1

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsNotificationsInPublic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    if-eq p1, v0, :cond_1

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->shouldHideNotifications(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 351
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->shouldTemporarilyHideNotifications(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldHideNotifications(Ljava/lang/String;)Z
    .locals 2

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 360
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "LockscreenUserManager"

    const-string v0, "mEntryManager was null!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    .line 364
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 365
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getVisibilityOverride()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public shouldShowLockscreenNotifications()Z
    .locals 0

    .line 320
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    return p0
.end method

.method public shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 4

    .line 369
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 370
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "LockscreenUserManager"

    const-string v0, "mEntryManager was null!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->useNewInterruptionModel(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->hideSilentNotificationsOnLockscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBucket()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 391
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/oneplus/systemui/statusbar/OpNotificationLockscreenUserManagerImpl;->shouldShowOnKeyguardInternal(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Landroid/service/notification/StatusBarNotification;ZZ)Z

    move-result p0

    return p0
.end method

.method protected updateLockscreenNotificationSetting()V
    .locals 6

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    const-string v2, "lock_screen_show_notifications"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 416
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v2, v4, v5}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    .line 421
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->setShowLockscreenNotifications(Z)V

    .line 433
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->setLockscreenAllowRemoteInput(Z)V

    return-void
.end method

.method public updatePublicMode()V
    .locals 9

    .line 629
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 630
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 631
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    .line 637
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getCurrentProfiles()Landroid/util/SparseArray;

    move-result-object v4

    .line 638
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeperateWorkChallenge:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 639
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_3
    if-ltz v5, :cond_6

    .line 640
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 643
    new-instance v7, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLockscreenUserManagerImpl$R0Mmt5x5H5RiJ7r74XavfJAbwsU;

    invoke-direct {v7, p0, v6}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationLockscreenUserManagerImpl$R0Mmt5x5H5RiJ7r74XavfJAbwsU;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;I)V

    invoke-static {v7}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v3, :cond_5

    .line 645
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getCurrentUserId()I

    move-result v8

    if-eq v6, v8, :cond_5

    if-eqz v7, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 646
    invoke-virtual {v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v0, :cond_4

    .line 649
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v8, v6}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_4

    :cond_3
    move v8, v1

    goto :goto_5

    :cond_4
    :goto_4
    move v8, v2

    goto :goto_5

    :cond_5
    move v8, v3

    .line 651
    :goto_5
    invoke-virtual {p0, v8, v6}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->setLockscreenPublicMode(ZI)V

    .line 652
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeperateWorkChallenge:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 654
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    const-string v0, "NotificationLockscreenUserManager.updatePublicMode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    return-void
.end method

.method public userAllowsNotificationsInPublic(I)Z
    .locals 5

    .line 508
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isCurrentProfile(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    if-eq p1, v0, :cond_0

    return v1

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_3

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    .line 514
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_show_notifications"

    const/4 v3, 0x0

    .line 513
    invoke-static {v0, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/4 v2, 0x4

    .line 516
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->adminAllowsKeyguardFeature(II)Z

    move-result v2

    .line 518
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->getPrivateNotificationsAllowed()Z

    move-result v4

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 520
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return v1

    .line 524
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_3

    .line 447
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mContext:Landroid/content/Context;

    .line 448
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    const/4 v3, 0x0

    .line 447
    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const/16 v2, 0x8

    .line 450
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->adminAllowsKeyguardFeature(II)Z

    move-result v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 453
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return v0

    .line 457
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method
