.class public Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;
.super Landroid/view/IPinnedStackListener$Stub;
.source "PinnedStackListenerForwarder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/view/IPinnedStackListener$Stub;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;->mListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;->onActionsChanged(Landroid/content/pm/ParceledListSlice;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityHidden(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;->onActivityHidden(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAspectRatioChanged(F)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;->onAspectRatioChanged(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;->onConfigurationChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDisplayInfoChanged(Landroid/view/DisplayInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;->onDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;->onImeVisibilityChanged(ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onListenerRegistered(Landroid/view/IPinnedStackController;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;->onListenerRegistered(Landroid/view/IPinnedStackController;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMovementBoundsChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;->onMovementBoundsChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
