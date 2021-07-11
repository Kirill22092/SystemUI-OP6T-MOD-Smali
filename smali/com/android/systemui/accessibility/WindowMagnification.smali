.class public Lcom/android/systemui/accessibility/WindowMagnification;
.super Lcom/android/systemui/SystemUI;
.source "WindowMagnification.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mWindowMagnificationController:Lcom/android/systemui/accessibility/WindowMagnificationController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance p2, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mLastConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/accessibility/WindowMagnification;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnification;->updateWindowMagnification()V

    return-void
.end method

.method private disableMagnification()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mWindowMagnificationController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->deleteWindowMagnification()V

    :cond_0
    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mWindowMagnificationController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    return-void
.end method

.method private enableMagnification()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mWindowMagnificationController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/android/systemui/accessibility/WindowMagnificationController;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/accessibility/WindowMagnificationController;-><init>(Landroid/content/Context;Lcom/android/systemui/accessibility/MirrorWindowControl;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mWindowMagnificationController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mWindowMagnificationController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->createWindowMagnification()V

    return-void
.end method

.method private updateWindowMagnification()V
    .locals 2

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "window_magnification"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnification;->enableMagnification()V

    goto :goto_1

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnification;->disableMagnification()V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 83
    :catch_0
    invoke-direct {p0}, Lcom/android/systemui/accessibility/WindowMagnification;->disableMagnification()V

    :goto_1
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v1, v0, 0x1000

    if-nez v1, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 56
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mWindowMagnificationController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    if-eqz p0, :cond_1

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->onConfigurationChanged(I)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "window_magnification"

    .line 64
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/accessibility/WindowMagnification$1;

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/accessibility/WindowMagnification$1;-><init>(Lcom/android/systemui/accessibility/WindowMagnification;Landroid/os/Handler;)V

    const/4 p0, 0x1

    .line 63
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
