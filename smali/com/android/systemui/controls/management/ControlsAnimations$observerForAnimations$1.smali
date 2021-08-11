.class public final Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;
.super Ljava/lang/Object;
.source "ControlsAnimations.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsAnimations;->observerForAnimations(Landroid/view/ViewGroup;Landroid/view/Window;Landroid/content/Intent;)Landroidx/lifecycle/LifecycleObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsAnimations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsAnimations.kt\ncom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1\n*L\n1#1,188:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/ViewGroup;

.field final synthetic $window:Landroid/view/Window;

.field private showAnimation:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlsAnimations;Landroid/view/Window;Landroid/view/ViewGroup;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Landroid/view/ViewGroup;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$window:Landroid/view/Window;

    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "extra_animate"

    const/4 p2, 0x0

    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->showAnimation:Z

    const/4 p0, 0x1

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->setTransitionAlpha(F)V

    sget-object p0, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsAnimations;->access$getTranslationY$p(Lcom/android/systemui/controls/management/ControlsAnimations;)F

    move-result p0

    const/high16 p1, -0x40800000    # -1.0f

    cmpg-float p0, p0, p1

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "view.context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->global_actions_controls_y_translation:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/android/systemui/controls/management/ControlsAnimations;->access$setTranslationY$p(Lcom/android/systemui/controls/management/ControlsAnimations;F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final enterAnimation()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->showAnimation:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->showAnimation:Z

    :cond_0
    return-void
.end method

.method public final resetAnimation()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method public final setup()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$window:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAllowEnterTransitionOverlap(Z)V

    sget-object v1, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterWindowTransition(I)Lcom/android/systemui/controls/management/WindowTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    sget-object v1, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/controls/management/ControlsAnimations;->exitWindowTransition(I)Lcom/android/systemui/controls/management/WindowTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setExitTransition(Landroid/transition/Transition;)V

    sget-object v1, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterWindowTransition(I)Lcom/android/systemui/controls/management/WindowTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setReenterTransition(Landroid/transition/Transition;)V

    sget-object v1, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;->$view:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/controls/management/ControlsAnimations;->exitWindowTransition(I)Lcom/android/systemui/controls/management/WindowTransition;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setReturnTransition(Landroid/transition/Transition;)V

    return-void
.end method
