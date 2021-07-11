.class public final Lcom/android/systemui/controls/management/ControlsAnimations;
.super Ljava/lang/Object;
.source "ControlsAnimations.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsAnimations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsAnimations.kt\ncom/android/systemui/controls/management/ControlsAnimations\n*L\n1#1,188:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

.field private static translationY:F = -1.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/android/systemui/controls/management/ControlsAnimations;

    invoke-direct {v0}, Lcom/android/systemui/controls/management/ControlsAnimations;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTranslationY$p(Lcom/android/systemui/controls/management/ControlsAnimations;)F
    .locals 0

    .line 42
    sget p0, Lcom/android/systemui/controls/management/ControlsAnimations;->translationY:F

    return p0
.end method

.method public static final synthetic access$setTranslationY$p(Lcom/android/systemui/controls/management/ControlsAnimations;F)V
    .locals 0

    .line 42
    sput p1, Lcom/android/systemui/controls/management/ControlsAnimations;->translationY:F

    return-void
.end method

.method public static final exitAnimation(Landroid/view/View;Ljava/lang/Runnable;)Landroid/animation/Animator;
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exit animation for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControlsUiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const-string/jumbo v4, "transitionAlpha"

    .line 133
    invoke-static {p0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 134
    sget-object v4, Lcom/android/systemui/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xa7

    .line 135
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 138
    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationY(F)V

    new-array v3, v0, [F

    .line 139
    sget v4, Lcom/android/systemui/controls/management/ControlsAnimations;->translationY:F

    neg-float v4, v4

    aput v4, v3, v2

    const-string/jumbo v4, "translationY"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 140
    sget-object v3, Lcom/android/systemui/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xb7

    .line 141
    invoke-virtual {p0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 144
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, v2

    aput-object p0, v4, v0

    .line 145
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p1, :cond_0

    .line 147
    new-instance p0, Lcom/android/systemui/controls/management/ControlsAnimations$exitAnimation$1$1$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/ControlsAnimations$exitAnimation$1$1$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-object v3
.end method

.method public static synthetic exitAnimation$default(Landroid/view/View;Ljava/lang/Runnable;ILjava/lang/Object;)Landroid/animation/Animator;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 130
    :cond_0
    invoke-static {p0, p1}, Lcom/android/systemui/controls/management/ControlsAnimations;->exitAnimation(Landroid/view/View;Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final enterAnimation(Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Enter animation for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ControlsUiController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 102
    invoke-virtual {p1, p0}, Landroid/view/View;->setTransitionAlpha(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 105
    sget v0, Lcom/android/systemui/controls/management/ControlsAnimations;->translationY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 107
    fill-array-data v1, :array_0

    const-string/jumbo v2, "transitionAlpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 108
    sget-object v2, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xa7

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v2, 0xb7

    .line 110
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p0, v3, v4

    const-string/jumbo p0, "translationY"

    .line 113
    invoke-static {p1, p0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 114
    sget-object p1, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0xd9

    .line 115
    invoke-virtual {p0, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 116
    invoke-virtual {p0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 119
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v4

    aput-object p0, v0, v2

    .line 120
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final enterWindowTransition(I)Lcom/android/systemui/controls/management/WindowTransition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 157
    new-instance p0, Lcom/android/systemui/controls/management/WindowTransition;

    sget-object v0, Lcom/android/systemui/controls/management/ControlsAnimations$enterWindowTransition$1;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations$enterWindowTransition$1;

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/management/WindowTransition;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 158
    invoke-virtual {p0, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    return-object p0
.end method

.method public final exitWindowTransition(I)Lcom/android/systemui/controls/management/WindowTransition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 162
    new-instance p0, Lcom/android/systemui/controls/management/WindowTransition;

    sget-object v0, Lcom/android/systemui/controls/management/ControlsAnimations$exitWindowTransition$1;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations$exitWindowTransition$1;

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/management/WindowTransition;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 163
    invoke-virtual {p0, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    return-object p0
.end method

.method public final observerForAnimations(Landroid/view/ViewGroup;Landroid/view/Window;Landroid/content/Intent;)Landroidx/lifecycle/LifecycleObserver;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Window;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "window"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;-><init>(Lcom/android/systemui/controls/management/ControlsAnimations;Landroid/view/Window;Landroid/view/ViewGroup;Landroid/content/Intent;)V

    return-object v0
.end method
