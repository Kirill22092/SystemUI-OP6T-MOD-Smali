.class public Lcom/android/systemui/recents/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mImpl:Lcom/android/systemui/recents/RecentsImplementation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImplementation;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    .line 42
    iput-object p3, p0, Lcom/android/systemui/recents/Recents;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-void
.end method

.method private isUserSetup()Z
    .locals 2

    .line 142
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    .line 143
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "user_setup_complete"

    .line 144
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public appTransitionFinished(I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0}, Lcom/android/systemui/recents/RecentsImplementation;->onAppTransitionFinished()V

    :cond_0
    return-void
.end method

.method public cancelPreloadRecentApps()V
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0}, Lcom/android/systemui/recents/RecentsImplementation;->cancelPreloadRecentApps()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0, p2}, Lcom/android/systemui/recents/RecentsImplementation;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public growRecents()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0}, Lcom/android/systemui/recents/RecentsImplementation;->growRecents()V

    return-void
.end method

.method public hideRecentApps(ZZ)V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/recents/RecentsImplementation;->hideRecentApps(ZZ)V

    return-void
.end method

.method public onBootCompleted()V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0}, Lcom/android/systemui/recents/RecentsImplementation;->onBootCompleted()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0, p1}, Lcom/android/systemui/recents/RecentsImplementation;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public preloadRecentApps()V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0}, Lcom/android/systemui/recents/RecentsImplementation;->preloadRecentApps()V

    return-void
.end method

.method public showRecentApps(Z)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0, p1}, Lcom/android/systemui/recents/RecentsImplementation;->showRecentApps(Z)V

    return-void
.end method

.method public splitPrimaryTask(ILandroid/graphics/Rect;I)Z
    .locals 1

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/recents/RecentsImplementation;->splitPrimaryTask(ILandroid/graphics/Rect;I)Z

    move-result p0

    return p0
.end method

.method public start()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/RecentsImplementation;->onStart(Landroid/content/Context;)V

    return-void
.end method

.method public toggleRecentApps()V
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    invoke-interface {p0}, Lcom/android/systemui/recents/RecentsImplementation;->toggleRecentApps()V

    return-void
.end method
