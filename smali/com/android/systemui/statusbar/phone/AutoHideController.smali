.class public Lcom/android/systemui/statusbar/phone/AutoHideController;
.super Ljava/lang/Object;
.source "AutoHideController.java"


# static fields
.field protected static final DEBUG_ONEPLUS:Z


# instance fields
.field private final mAutoHide:Ljava/lang/Runnable;

.field private mAutoHideSuspended:Z

.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private final mHandler:Landroid/os/Handler;

.field private mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

.field private mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

.field private mSwapNavKeys:Z

.field private mSwapNavKeysObserver:Landroid/database/ContentObserver;

.field private final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IWindowManager;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSwapNavKeys:Z

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$sJYAhc6qJ_sO_ZdtlpSd2BPK504;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$sJYAhc6qJ_sO_ZdtlpSd2BPK504;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    .line 75
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    .line 76
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mContext:Landroid/content/Context;

    .line 85
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getSwapNavObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSwapNavKeysObserver:Landroid/database/ContentObserver;

    const/4 p2, 0x1

    .line 86
    invoke-virtual {p1, p2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 87
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "oem_acc_key_define"

    .line 88
    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSwapNavKeysObserver:Landroid/database/ContentObserver;

    const/4 v0, -0x1

    .line 87
    invoke-virtual {p1, p3, p2, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/AutoHideController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/AutoHideController;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSwapNavKeys:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/AutoHideController;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSwapNavKeys:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/AutoHideController;)Lcom/android/systemui/statusbar/AutoHideUiElement;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    return-object p0
.end method

.method private cancelAutoHide()V
    .locals 1

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getCheckBarModesRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$Dw54NegELGCFcbvVgChoOa9gkLA;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$Dw54NegELGCFcbvVgChoOa9gkLA;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_1

    .line 169
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$FON87SM6b4--2jIBTAjBTcUbKIM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$FON87SM6b4--2jIBTAjBTcUbKIM;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSwapNavObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;
    .locals 1

    .line 224
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoHideController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/AutoHideController$1;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;Landroid/os/Handler;)V

    return-object v0
.end method

.method private hideTransientBars()V
    .locals 2

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mWindowManagerService:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->hideTransientBars(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AutoHideController"

    const-string v1, "Cannot get WindowManager"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->hide()V

    .line 121
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz p0, :cond_1

    .line 122
    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->hide()V

    :cond_1
    return-void
.end method

.method private isAnyTransientBarShown()Z
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 215
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$getCheckBarModesRunnable$1()V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->synchronizeState()V

    return-void
.end method

.method private synthetic lambda$getCheckBarModesRunnable$2()V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->synchronizeState()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hideTransientBars()V

    :cond_0
    return-void
.end method

.method private scheduleAutoHide()V
    .locals 3

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->cancelAutoHide()V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    const-wide/16 v1, 0x8ca

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private userAutoHide()V
    .locals 3

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->cancelAutoHide()V

    .line 205
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "AutoHideController"

    const-string v1, " userAutohide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method checkUserAutoHide(Landroid/view/MotionEvent;)V
    .locals 2

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_1

    .line 191
    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->shouldHideOnTouch()Z

    move-result v0

    and-int/2addr p1, v0

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_2

    .line 194
    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->shouldHideOnTouch()Z

    move-result v0

    and-int/2addr p1, v0

    :cond_2
    if-eqz p1, :cond_3

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->userAutoHide()V

    :cond_3
    return-void
.end method

.method public synthetic lambda$getCheckBarModesRunnable$1$AutoHideController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->lambda$getCheckBarModesRunnable$1()V

    return-void
.end method

.method public synthetic lambda$getCheckBarModesRunnable$2$AutoHideController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->lambda$getCheckBarModesRunnable$2()V

    return-void
.end method

.method public synthetic lambda$new$0$AutoHideController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->lambda$new$0()V

    return-void
.end method

.method resumeSuspendedAutoHide()V
    .locals 3

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->scheduleAutoHide()V

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setNavigationBar(Lcom/android/systemui/statusbar/AutoHideUiElement;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/AutoHideUiElement;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    return-void
.end method

.method suspendAutoHide()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->isHideNavBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    goto :goto_0

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    :goto_0
    return-void
.end method

.method public touchAutoHide()V
    .locals 1

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->scheduleAutoHide()V

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->cancelAutoHide()V

    :goto_0
    return-void
.end method
