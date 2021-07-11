.class public Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.super Ljava/lang/Object;
.source "UserSwitcherController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;,
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;,
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;,
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAddUserDialog:Landroid/app/Dialog;

.field private mAddUsersWhenLocked:Z

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

.field protected final mContext:Landroid/content/Context;

.field private mExitGuestDialog:Landroid/app/Dialog;

.field private mForcePictureLoadForUserId:Landroid/util/SparseBooleanArray;

.field private final mGuestResumeSessionReceiver:Lcom/android/systemui/GuestResumeSessionReceiver;

.field protected final mHandler:Landroid/os/Handler;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mLastNonGuestUser:I

.field private mPauseRefreshUsers:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeUserOnGuestLogout:Z

.field private mSecondaryUser:I

.field private mSecondaryUserServiceIntent:Landroid/content/Intent;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mSimpleUserSwitcher:Z

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mUnpauseRefreshUsers:Ljava/lang/Runnable;

.field protected final mUserManager:Landroid/os/UserManager;

.field private mUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final userDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 9

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Lcom/android/systemui/GuestResumeSessionReceiver;

    invoke-direct {v0}, Lcom/android/systemui/GuestResumeSessionReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mGuestResumeSessionReceiver:Lcom/android/systemui/GuestResumeSessionReceiver;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mResumeUserOnGuestLogout:Z

    const/16 v2, -0x2710

    .line 124
    iput v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSecondaryUser:I

    .line 126
    new-instance v3, Landroid/util/SparseBooleanArray;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mForcePictureLoadForUserId:Landroid/util/SparseBooleanArray;

    .line 523
    new-instance v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 535
    new-instance v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 604
    new-instance v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUnpauseRefreshUsers:Ljava/lang/Runnable;

    .line 613
    new-instance v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 854
    new-instance v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->userDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 910
    new-instance v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$8;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 133
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    .line 134
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 135
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 136
    invoke-static {}, Landroid/os/UserManager;->isGuestUserEphemeral()Z

    move-result p5

    if-nez p5, :cond_0

    .line 137
    iget-object p5, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mGuestResumeSessionReceiver:Lcom/android/systemui/GuestResumeSessionReceiver;

    iget-object p6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p5, p6}, Lcom/android/systemui/GuestResumeSessionReceiver;->register(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 139
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 140
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mHandler:Landroid/os/Handler;

    .line 141
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 142
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    .line 143
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string p4, "android.intent.action.USER_ADDED"

    .line 144
    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p4, "android.intent.action.USER_REMOVED"

    .line 145
    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p4, "android.intent.action.USER_INFO_CHANGED"

    .line 146
    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p4, "android.intent.action.USER_SWITCHED"

    .line 147
    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p4, "android.intent.action.USER_STOPPED"

    .line 148
    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p4, "android.intent.action.USER_UNLOCKED"

    .line 149
    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object p4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p5, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 p6, 0x0

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p4, p5, p3, p6, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->shouldUseSimpleUserSwitcher()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSimpleUserSwitcher:Z

    .line 155
    new-instance p3, Landroid/content/Intent;

    const-class p4, Lcom/android/systemui/SystemUISecondaryUserService;

    invoke-direct {p3, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSecondaryUserServiceIntent:Landroid/content/Intent;

    .line 157
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const-string v7, "com.android.systemui.permission.SELF"

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 161
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "lockscreenSimpleUserSwitcher"

    .line 162
    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object p4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 161
    invoke-virtual {p1, p3, v1, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "add_users_when_locked"

    .line 165
    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object p4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 164
    invoke-virtual {p1, p3, v1, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 167
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "allow_user_switching_when_system_user_locked"

    .line 168
    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object p4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 167
    invoke-virtual {p1, p3, v1, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 172
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 174
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->listenForCallState()V

    .line 177
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->checkIfAddUserDisallowedByAdminOnly(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSimpleUserSwitcher:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->shouldUseSimpleUserSwitcher()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUsersWhenLocked:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->notifyAdapters()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I
    .locals 0

    .line 93
    iput p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSecondaryUser:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I
    .locals 0

    .line 93
    iput p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSecondaryUser:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Intent;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSecondaryUserServiceIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/lang/Runnable;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUnpauseRefreshUsers:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mPauseRefreshUsers:Z

    return p1
.end method

.method private checkIfAddUserDisallowedByAdminOnly(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 3

    .line 764
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    .line 765
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "no_add_user"

    .line 764
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 766
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    .line 767
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 766
    invoke-static {p0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 768
    iput-boolean p0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isDisabledByAdmin:Z

    .line 769
    iput-object v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 771
    iput-boolean p0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isDisabledByAdmin:Z

    const/4 p0, 0x0

    .line 772
    iput-object p0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    :goto_0
    return-void
.end method

.method private synthetic lambda$useFullscreenUserSwitcher$0()Ljava/lang/Integer;
    .locals 2

    .line 344
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_fullscreen_user_switcher"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private listenForCallState()V
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 517
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 519
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private notifyAdapters()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 324
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private pauseRefreshUsers()V
    .locals 4

    .line 316
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mPauseRefreshUsers:Z

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUnpauseRefreshUsers:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mPauseRefreshUsers:Z

    :cond_0
    return-void
.end method

.method private refreshUsers(I)V
    .locals 8

    const/4 v0, 0x1

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mForcePictureLoadForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 194
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mPauseRefreshUsers:Z

    if-eqz p1, :cond_1

    return-void

    .line 198
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mForcePictureLoadForUserId:Landroid/util/SparseBooleanArray;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    .line 199
    new-instance v1, Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 200
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    .line 202
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    if-eqz v5, :cond_3

    .line 203
    iget-object v6, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-eqz v6, :cond_3

    if-nez p1, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mForcePictureLoadForUserId:Landroid/util/SparseBooleanArray;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 204
    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 207
    :cond_2
    iget-object v6, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 209
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mForcePictureLoadForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 211
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUsersWhenLocked:Z

    .line 212
    new-instance v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)V

    new-array p0, v0, [Landroid/util/SparseArray;

    aput-object v1, p0, v3

    .line 312
    invoke-virtual {v2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private shouldUseSimpleUserSwitcher()Z
    .locals 2

    .line 777
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 779
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "lockscreenSimpleUserSwitcher"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showExitGuestDialog(I)V
    .locals 2

    .line 485
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mResumeUserOnGuestLogout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I

    if-eqz v0, :cond_0

    .line 486
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 491
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->showExitGuestDialog(II)V

    return-void
.end method


# virtual methods
.method public addAdapter(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;",
            ">;)V"
        }
    .end annotation

    .line 648
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p1, "UserSwitcherController state:"

    .line 624
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mLastNonGuestUser="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mUsers.size="

    .line 626
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const/4 p1, 0x0

    .line 627
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_0

    .line 628
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const-string v0, "    "

    .line 629
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 631
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mSimpleUserSwitcher="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSimpleUserSwitcher:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected exitGuest(II)V
    .locals 0

    .line 511
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchToUserId(I)V

    .line 512
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->removeUser(I)Z

    return-void
.end method

.method public getCurrentUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 636
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    if-eqz p0, :cond_3

    .line 637
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v0, :cond_1

    goto :goto_0

    .line 638
    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz p0, :cond_2

    sget p0, Lcom/android/settingslib/R$string;->guest_nickname:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 639
    :cond_2
    iget-object p0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getUsers()Ljava/util/ArrayList;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;"
        }
    .end annotation

    .line 653
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isSimpleUserSwitcher()Z
    .locals 0

    .line 334
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSimpleUserSwitcher:Z

    return p0
.end method

.method public synthetic lambda$useFullscreenUserSwitcher$0$UserSwitcherController()Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->lambda$useFullscreenUserSwitcher$0()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    const/4 v0, -0x1

    .line 643
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V

    return-void
.end method

.method public showAddUserDialog()V
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUserDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUserDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 506
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUserDialog:Landroid/app/Dialog;

    .line 507
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected showExitGuestDialog(II)V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 498
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;

    .line 499
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 784
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method public switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 3

    .line 380
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v0, :cond_0

    .line 399
    new-instance p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 420
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 423
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->showAddUserDialog()V

    return-void

    .line 427
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 430
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 432
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz p1, :cond_2

    .line 433
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->showExitGuestDialog(I)V

    :cond_2
    return-void

    .line 438
    :cond_3
    invoke-static {}, Landroid/os/UserManager;->isGuestUserEphemeral()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 440
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 441
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 442
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->resolveId()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->showExitGuestDialog(II)V

    return-void

    .line 447
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchToUserId(I)V

    return-void
.end method

.method protected switchToUserId(I)V
    .locals 2

    const-string v0, "UserSwitcherController"

    const-string/jumbo v1, "switchToUserId START"

    .line 465
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :try_start_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->earlyNotifySwitchingUser()V

    .line 473
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->pauseRefreshUsers()V

    .line 474
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Couldn\'t switch user."

    .line 476
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string/jumbo p0, "switchToUserId END"

    .line 479
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public useFullscreenUserSwitcher()Z
    .locals 2

    .line 343
    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$UserSwitcherController$gJeQLk7uUPWe8l2LAzLToqB-eJo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$UserSwitcherController$gJeQLk7uUPWe8l2LAzLToqB-eJo;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 344
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 350
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$bool;->config_enableFullscreenUserSwitcher:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
