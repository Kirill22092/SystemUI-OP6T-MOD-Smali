.class public final Lcom/android/systemui/keyguard/KeyguardSliceProvider_MembersInjector;
.super Ljava/lang/Object;
.source "KeyguardSliceProvider_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/android/systemui/keyguard/KeyguardSliceProvider;",
        ">;"
    }
.end annotation


# direct methods
.method public static injectMAlarmManager(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Landroid/app/AlarmManager;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public static injectMContentResolver(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Landroid/content/ContentResolver;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static injectMDozeParameters(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-void
.end method

.method public static injectMKeyguardBypassController(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-void
.end method

.method public static injectMMediaManager(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/NotificationMediaManager;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    return-void
.end method

.method public static injectMNextAlarmController(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/policy/NextAlarmController;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    return-void
.end method

.method public static injectMStatusBarStateController(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-void
.end method

.method public static injectMZenModeController(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-void
.end method
