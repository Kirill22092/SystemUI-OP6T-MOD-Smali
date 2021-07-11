.class public Lcom/android/systemui/accessibility/SystemActions;
.super Lcom/android/systemui/SystemUI;
.source "SystemActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mA11yManager:Landroid/view/accessibility/AccessibilityManager;

.field private mLocale:Ljava/util/Locale;

.field private mReceiver:Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;

.field private mRecents:Lcom/android/systemui/recents/Recents;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 146
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 147
    const-class p1, Lcom/android/systemui/recents/Recents;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/Recents;

    iput-object p1, p0, Lcom/android/systemui/accessibility/SystemActions;->mRecents:Lcom/android/systemui/recents/Recents;

    .line 148
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/android/systemui/accessibility/SystemActions;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 149
    new-instance p1, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;-><init>(Lcom/android/systemui/accessibility/SystemActions;Lcom/android/systemui/accessibility/SystemActions$1;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/SystemActions;->mReceiver:Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;

    .line 150
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/SystemActions;->mLocale:Ljava/util/Locale;

    .line 151
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/accessibility/SystemActions;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/accessibility/SystemActions;->handleTakeScreenshot()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/accessibility/SystemActions;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/accessibility/SystemActions;->handleAccessibilityButton()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/accessibility/SystemActions;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/accessibility/SystemActions;->handleAccessibilityButtonChooser()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/accessibility/SystemActions;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/accessibility/SystemActions;->handleAccessibilityShortcut()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/accessibility/SystemActions;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/accessibility/SystemActions;->handleBack()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/accessibility/SystemActions;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/accessibility/SystemActions;->handleHome()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/accessibility/SystemActions;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/accessibility/SystemActions;->handleRecents()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/accessibility/SystemActions;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/accessibility/SystemActions;->handleNotifications()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/accessibility/SystemActions;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/accessibility/SystemActions;->handleQuickSettings()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/accessibility/SystemActions;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/accessibility/SystemActions;->handlePowerDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/accessibility/SystemActions;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/accessibility/SystemActions;->handleLockScreen()V

    return-void
.end method

.method private createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;
    .locals 4

    .line 285
    new-instance v0, Landroid/app/RemoteAction;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v2, 0x10800b4

    .line 286
    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 287
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 288
    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/android/systemui/accessibility/SystemActions;->mReceiver:Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 289
    invoke-static {v3, p0, p2}, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->access$200(Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method private handleAccessibilityButton()V
    .locals 1

    .line 372
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V

    return-void
.end method

.method private handleAccessibilityButtonChooser()V
    .locals 3

    .line 377
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    .line 378
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 379
    const-class v1, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    .line 380
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private handleAccessibilityShortcut()V
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityShortcut()V

    return-void
.end method

.method private handleBack()V
    .locals 1

    const/4 v0, 0x4

    .line 301
    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/SystemActions;->sendDownAndUpKeyEvents(I)V

    return-void
.end method

.method private handleHome()V
    .locals 1

    const/4 v0, 0x3

    .line 305
    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/SystemActions;->sendDownAndUpKeyEvents(I)V

    return-void
.end method

.method private handleLockScreen()V
    .locals 5

    .line 347
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 349
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    const/4 p0, 0x0

    .line 352
    :try_start_0
    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SystemActions"

    const-string v0, "failed to lock screen."

    .line 354
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleNotifications()V
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    return-void
.end method

.method private handlePowerDialog()V
    .locals 1

    .line 337
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    .line 340
    :try_start_0
    invoke-interface {p0}, Landroid/view/IWindowManager;->showGlobalActions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SystemActions"

    const-string v0, "failed to display power dialog."

    .line 342
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleQuickSettings()V
    .locals 1

    .line 333
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandSettingsPanel(Ljava/lang/String;)V

    return-void
.end method

.method private handleRecents()V
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mRecents:Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->toggleRecentApps()V

    return-void
.end method

.method private handleTakeScreenshot()V
    .locals 8

    .line 359
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    .line 361
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p0, "voiceLongshot"

    const/4 v1, 0x0

    .line 362
    invoke-virtual {v7, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "longshot"

    .line 363
    invoke-virtual {v7, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "focusWindow"

    const-string v1, ""

    .line 364
    invoke-virtual {v7, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Lcom/android/internal/util/ScreenshotHelper;->getScreenshotHelperInjector()Lcom/android/internal/util/ScreenshotHelperInjector;

    move-result-object v1

    .line 367
    new-instance v5, Landroid/os/Handler;

    .line 368
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 367
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/util/ScreenshotHelperInjector;->takeScreenshot(IZZLandroid/os/Handler;ZLandroid/os/Bundle;)V

    return-void
.end method

.method private registerActions()V
    .locals 11

    const v0, 0x10400d9

    const-string v1, "SYSTEM_ACTION_BACK"

    .line 176
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v0

    const v1, 0x10400db

    const-string v2, "SYSTEM_ACTION_HOME"

    .line 180
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v1

    const v2, 0x10400e2

    const-string v3, "SYSTEM_ACTION_RECENTS"

    .line 184
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v2

    const v3, 0x10400dd

    const-string v4, "SYSTEM_ACTION_NOTIFICATIONS"

    .line 188
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v3

    const v4, 0x10400e1

    const-string v5, "SYSTEM_ACTION_QUICK_SETTINGS"

    .line 192
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v4

    const v5, 0x10400e0

    const-string v6, "SYSTEM_ACTION_POWER_DIALOG"

    .line 196
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v5

    const v6, 0x10400dc

    const-string v7, "SYSTEM_ACTION_LOCK_SCREEN"

    .line 200
    invoke-direct {p0, v6, v7}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v6

    const v7, 0x10400e3

    const-string v8, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    .line 204
    invoke-direct {p0, v7, v8}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v7

    const v8, 0x10400da

    const-string v9, "SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT"

    .line 208
    invoke-direct {p0, v8, v9}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v8

    .line 212
    iget-object v9, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v0, v10}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v9, 0x2

    invoke-virtual {v0, v1, v9}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v4, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v5, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v6, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v7, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 220
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v0, 0xd

    invoke-virtual {p0, v8, v0}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    return-void
.end method

.method private sendDownAndUpKeyEvents(I)V
    .locals 9

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v3, v7

    move-wide v5, v7

    .line 310
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/accessibility/SystemActions;->sendKeyEventIdentityCleared(IIJJ)V

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v2, 0x1

    .line 311
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/accessibility/SystemActions;->sendKeyEventIdentityCleared(IIJJ)V

    return-void
.end method

.method private sendKeyEventIdentityCleared(IIJJ)V
    .locals 13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    move-wide/from16 v0, p3

    move-wide/from16 v2, p5

    move v4, p2

    move v5, p1

    .line 316
    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 319
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 320
    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 321
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 167
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 168
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iput-object p1, p0, Lcom/android/systemui/accessibility/SystemActions;->mLocale:Ljava/util/Locale;

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/accessibility/SystemActions;->registerActions()V

    :cond_0
    return-void
.end method

.method public register(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    const v0, 0x10400da

    const-string v1, "SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT"

    goto :goto_0

    :pswitch_2
    const v0, 0x10400de

    const-string v1, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON_MENU"

    goto :goto_0

    :pswitch_3
    const v0, 0x10400df

    const-string v1, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON"

    goto :goto_0

    :pswitch_4
    const v0, 0x10400e3

    const-string v1, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    goto :goto_0

    :pswitch_5
    const v0, 0x10400dc

    const-string v1, "SYSTEM_ACTION_LOCK_SCREEN"

    goto :goto_0

    :pswitch_6
    const v0, 0x10400e0

    const-string v1, "SYSTEM_ACTION_POWER_DIALOG"

    goto :goto_0

    :pswitch_7
    const v0, 0x10400e1

    const-string v1, "SYSTEM_ACTION_QUICK_SETTINGS"

    goto :goto_0

    :pswitch_8
    const v0, 0x10400dd

    const-string v1, "SYSTEM_ACTION_NOTIFICATIONS"

    goto :goto_0

    :pswitch_9
    const v0, 0x10400e2

    const-string v1, "SYSTEM_ACTION_RECENTS"

    goto :goto_0

    :pswitch_a
    const v0, 0x10400db

    const-string v1, "SYSTEM_ACTION_HOME"

    goto :goto_0

    :pswitch_b
    const v0, 0x10400d9

    const-string v1, "SYSTEM_ACTION_BACK"

    .line 280
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    move-result-object p0

    invoke-virtual {v2, p0, p1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public start()V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/accessibility/SystemActions;->mReceiver:Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;

    .line 159
    invoke-static {v1}, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->access$100(Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;)Landroid/content/IntentFilter;

    move-result-object v2

    const-string v3, "com.android.systemui.permission.SELF"

    const/4 v4, 0x0

    .line 157
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/accessibility/SystemActions;->registerActions()V

    return-void
.end method

.method public unregister(I)V
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->unregisterSystemAction(I)V

    return-void
.end method
