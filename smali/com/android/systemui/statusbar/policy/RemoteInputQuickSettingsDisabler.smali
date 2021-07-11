.class public Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;
.super Ljava/lang/Object;
.source "RemoteInputQuickSettingsDisabler.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContext:Landroid/content/Context;

.field private mLastOrientation:I

.field mRemoteInputActive:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field misLandscape:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mContext:Landroid/content/Context;

    .line 48
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mLastOrientation:I

    .line 50
    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private recomputeDisableFlags()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    return-void
.end method


# virtual methods
.method public adjustDisableFlags(I)I
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mRemoteInputActive:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->misLandscape:Z

    if-eqz p0, :cond_0

    or-int/lit8 p1, p1, 0x1

    :cond_0
    return p1
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 70
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mLastOrientation:I

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->misLandscape:Z

    .line 72
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mLastOrientation:I

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->recomputeDisableFlags()V

    :cond_1
    return-void
.end method

.method public setRemoteInputActive(Z)V
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mRemoteInputActive:Z

    if-eq v0, p1, :cond_0

    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mRemoteInputActive:Z

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->recomputeDisableFlags()V

    :cond_0
    return-void
.end method
