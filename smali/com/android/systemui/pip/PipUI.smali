.class public Lcom/android/systemui/pip/PipUI;
.super Lcom/android/systemui/SystemUI;
.source "PipUI.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mPipManager:Lcom/android/systemui/pip/BasePipManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/pip/BasePipManager;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/android/systemui/pip/PipUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 51
    iput-object p3, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    if-nez p0, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-interface {p0, p2}, Lcom/android/systemui/pip/BasePipManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 87
    iget-object p0, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    if-nez p0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/pip/BasePipManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setPinnedStackAnimationListener(Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    if-eqz p0, :cond_0

    .line 110
    invoke-interface {p0, p1}, Lcom/android/systemui/pip/BasePipManager;->setPinnedStackAnimationListener(Lcom/android/systemui/shared/recents/IPinnedStackAnimationListener;)V

    :cond_0
    return-void
.end method

.method public setPinnedStackAnimationType(I)V
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    if-eqz p0, :cond_0

    .line 104
    invoke-interface {p0, p1}, Lcom/android/systemui/pip/BasePipManager;->setPinnedStackAnimationType(I)V

    :cond_0
    return-void
.end method

.method public setShelfHeight(ZI)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    if-nez p0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pip/BasePipManager;->setShelfHeight(ZI)V

    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/pip/PipUI;->mPipManager:Lcom/android/systemui/pip/BasePipManager;

    invoke-interface {p0}, Lcom/android/systemui/pip/BasePipManager;->showPictureInPictureMenu()V

    return-void
.end method

.method public start()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/systemui/pip/PipUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void

    .line 65
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Non-primary Pip component not currently supported."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
