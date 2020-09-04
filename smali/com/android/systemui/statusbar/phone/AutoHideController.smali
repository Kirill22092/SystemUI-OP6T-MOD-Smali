.class public Lcom/android/systemui/statusbar/phone/AutoHideController;
.super Ljava/lang/Object;
.source "AutoHideController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field protected static final DEBUG_ONEPLUS:Z


# instance fields
.field private final mAutoHide:Ljava/lang/Runnable;

.field private mAutoHideSuspended:Z

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContext:Landroid/content/Context;

.field mDisplayId:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLastDispatchedSystemUiVisibility:I

.field private mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mSwapNavKeys:Z

.field private mSwapNavKeysObserver:Landroid/database/ContentObserver;

.field mSystemUiVisibility:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mLastDispatchedSystemUiVisibility:I

    const/4 v1, 0x0

    .line 78
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSwapNavKeys:Z

    .line 81
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$sJYAhc6qJ_sO_ZdtlpSd2BPK504;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$sJYAhc6qJ_sO_ZdtlpSd2BPK504;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    .line 90
    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 92
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    .line 93
    const-class p2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 94
    const-class p2, Landroid/view/IWindowManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/IWindowManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    .line 99
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mContext:Landroid/content/Context;

    .line 103
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getSwapNavObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSwapNavKeysObserver:Landroid/database/ContentObserver;

    .line 104
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSwapNavKeysObserver:Landroid/database/ContentObserver;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 105
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "oem_acc_key_define"

    .line 106
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSwapNavKeysObserver:Landroid/database/ContentObserver;

    .line 105
    invoke-virtual {p1, v1, p2, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/AutoHideController;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/AutoHideController;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSwapNavKeys:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/AutoHideController;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSwapNavKeys:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/AutoHideController;)Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    return-object p0
.end method

.method private cancelAutoHide()V
    .locals 1

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getCheckBarModesRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$Dw54NegELGCFcbvVgChoOa9gkLA;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$Dw54NegELGCFcbvVgChoOa9gkLA;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    return-object v0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$FON87SM6b4--2jIBTAjBTcUbKIM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$FON87SM6b4--2jIBTAjBTcUbKIM;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSwapNavObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;
    .locals 1

    .line 276
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoHideController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/AutoHideController$1;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;Landroid/os/Handler;)V

    return-object v0
.end method

.method private getTransientMask()I
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x4000000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 259
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasNavigationBar()Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p0, 0x8000000

    or-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method private scheduleAutoHide()V
    .locals 3

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->cancelAutoHide()V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    const-wide/16 v1, 0x8ca

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private userAutoHide()V
    .locals 3

    .line 247
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->cancelAutoHide()V

    .line 249
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "AutoHideController"

    const-string v1, " userAutohide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method checkUserAutoHide(Landroid/view/MotionEvent;)V
    .locals 3

    .line 233
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    .line 234
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getTransientMask()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    cmpl-float p1, p1, v2

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 237
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasStatusBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive()Z

    move-result v0

    xor-int/2addr v0, v1

    and-int/2addr p1, v0

    :cond_1
    if-eqz p1, :cond_2

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->userAutoHide()V

    :cond_2
    return-void
.end method

.method hasNavigationBar()Z
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method hasStatusBar()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 271
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$getCheckBarModesRunnable$1$AutoHideController()V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    return-void
.end method

.method public synthetic lambda$getCheckBarModesRunnable$2$AutoHideController()V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    return-void
.end method

.method public synthetic lambda$new$0$AutoHideController()V
    .locals 2

    .line 82
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getTransientMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 83
    iget v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    if-eq v1, v0, :cond_0

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->notifySystemUiVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method notifySystemUiVisibilityChanged(I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 164
    :try_start_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mLastDispatchedSystemUiVisibility:I

    if-eq v0, p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mWindowManagerService:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(II)V

    .line 166
    iput p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mLastDispatchedSystemUiVisibility:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AutoHideController"

    const-string p1, "Cannot get WindowManager"

    .line 169
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    .line 114
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    if-ne p1, v0, :cond_0

    .line 115
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    :cond_0
    return-void
.end method

.method resumeSuspendedAutoHide()V
    .locals 3

    .line 174
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->scheduleAutoHide()V

    .line 176
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method setNavigationBar(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    return-void
.end method

.method setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 10

    move-object v0, p0

    move v6, p5

    .line 131
    iget v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    move v2, p1

    if-eq v2, v1, :cond_0

    return-void

    .line 134
    :cond_0
    iget v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    not-int v2, v6

    and-int/2addr v2, v1

    and-int v3, p2, v6

    or-int/2addr v2, v3

    xor-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 139
    iput v2, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasStatusBar()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x10000000

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    .line 143
    iget v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    const v3, -0x10000001

    and-int/2addr v1, v3

    iput v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x20000000

    and-int/2addr v1, p2

    if-eqz v1, :cond_2

    .line 147
    iget v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    const v3, -0x20000001

    and-int/2addr v1, v3

    iput v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    .line 151
    :cond_2
    iget v3, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    if-eq v3, v2, :cond_3

    .line 152
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/CommandQueue;->setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 157
    :cond_3
    iget v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->notifySystemUiVisibilityChanged(I)V

    :cond_4
    return-void
.end method

.method suspendAutoHide()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasStatusBar()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isHideNavBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    goto :goto_0

    .line 197
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getTransientMask()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    :goto_0
    return-void
.end method

.method touchAutoHide()V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isSemiTransparent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->scheduleAutoHide()V

    goto :goto_0

    .line 208
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->cancelAutoHide()V

    :goto_0
    return-void
.end method
