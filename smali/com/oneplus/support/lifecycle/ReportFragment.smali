.class public Lcom/oneplus/support/lifecycle/ReportFragment;
.super Landroid/app/Fragment;
.source "ReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;
    }
.end annotation


# instance fields
.field private mProcessListener:Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private dispatch(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 113
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    .line 114
    instance-of v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistryOwner;

    if-eqz v0, :cond_0

    .line 115
    check-cast p0, Lcom/oneplus/support/lifecycle/LifecycleRegistryOwner;

    invoke-interface {p0}, Lcom/oneplus/support/lifecycle/LifecycleRegistryOwner;->getLifecycle()Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    return-void

    .line 119
    :cond_0
    instance-of v0, p0, Lcom/oneplus/support/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_1

    .line 120
    check-cast p0, Lcom/oneplus/support/lifecycle/LifecycleOwner;

    invoke-interface {p0}, Lcom/oneplus/support/lifecycle/LifecycleOwner;->getLifecycle()Lcom/oneplus/support/lifecycle/Lifecycle;

    move-result-object p0

    .line 121
    instance-of v0, p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    if-eqz v0, :cond_1

    .line 122
    check-cast p0, Lcom/oneplus/support/lifecycle/LifecycleRegistry;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    :cond_1
    return-void
.end method

.method private dispatchCreate(Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 55
    invoke-interface {p1}, Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;->onCreate()V

    :cond_0
    return-void
.end method

.method private dispatchResume(Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1}, Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;->onResume()V

    :cond_0
    return-void
.end method

.method private dispatchStart(Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 61
    invoke-interface {p1}, Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;->onStart()V

    :cond_0
    return-void
.end method

.method public static injectIfNeededIn(Landroid/app/Activity;)V
    .locals 3

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "com.oneplus.support.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 39
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lcom/oneplus/support/lifecycle/ReportFragment;

    invoke-direct {v2}, Lcom/oneplus/support/lifecycle/ReportFragment;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 42
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    iget-object p1, p0, Lcom/oneplus/support/lifecycle/ReportFragment;->mProcessListener:Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, p1}, Lcom/oneplus/support/lifecycle/ReportFragment;->dispatchCreate(Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 75
    sget-object p1, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_CREATE:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1}, Lcom/oneplus/support/lifecycle/ReportFragment;->dispatch(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 107
    sget-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_DESTROY:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/ReportFragment;->dispatch(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/oneplus/support/lifecycle/ReportFragment;->mProcessListener:Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 94
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 95
    sget-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_PAUSE:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/ReportFragment;->dispatch(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/ReportFragment;->mProcessListener:Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/ReportFragment;->dispatchResume(Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 89
    sget-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_RESUME:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/ReportFragment;->dispatch(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 80
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 81
    iget-object v0, p0, Lcom/oneplus/support/lifecycle/ReportFragment;->mProcessListener:Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/ReportFragment;->dispatchStart(Lcom/oneplus/support/lifecycle/ReportFragment$ActivityInitializationListener;)V

    .line 82
    sget-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_START:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/ReportFragment;->dispatch(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 101
    sget-object v0, Lcom/oneplus/support/lifecycle/Lifecycle$Event;->ON_STOP:Lcom/oneplus/support/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Lcom/oneplus/support/lifecycle/ReportFragment;->dispatch(Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V

    return-void
.end method
