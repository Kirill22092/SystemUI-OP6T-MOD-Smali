.class public Lcom/android/systemui/util/LifecycleActivity;
.super Landroid/app/Activity;
.source "LifecycleActivity.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field private final lifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    new-instance v0, Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/android/systemui/util/LifecycleActivity;->lifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public bridge synthetic getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/util/LifecycleActivity;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    return-object p0
.end method

.method public getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    iget-object p0, p0, Lcom/android/systemui/util/LifecycleActivity;->lifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 32
    iget-object v0, p0, Lcom/android/systemui/util/LifecycleActivity;->lifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    .line 33
    iget-object v0, p0, Lcom/android/systemui/util/LifecycleActivity;->lifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onCreate(Landroid/os/Bundle;)V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/util/LifecycleActivity;->lifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/PersistableBundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 42
    iget-object v0, p0, Lcom/android/systemui/util/LifecycleActivity;->lifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    .line 43
    iget-object v0, p0, Lcom/android/systemui/util/LifecycleActivity;->lifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onCreate(Landroid/os/Bundle;)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/util/LifecycleActivity;->lifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 45
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/systemui/util/LifecycleActivity;->lifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/systemui/util/LifecycleActivity;->lifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/systemui/util/LifecycleActivity;->lifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/systemui/util/LifecycleActivity;->lifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/systemui/util/LifecycleActivity;->lifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
