.class public final Lcom/android/systemui/util/animation/PhysicsAnimator;
.super Ljava/lang/Object;
.source "PhysicsAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/animation/PhysicsAnimator$AnimationUpdate;,
        Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;,
        Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;,
        Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;,
        Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;,
        Lcom/android/systemui/util/animation/PhysicsAnimator$EndListener;,
        Lcom/android/systemui/util/animation/PhysicsAnimator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPhysicsAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhysicsAnimator.kt\ncom/android/systemui/util/animation/PhysicsAnimator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,1036:1\n1313#2:1037\n1382#2,3:1038\n1591#2,2:1041\n1499#2,3:1057\n307#3,7:1043\n307#3,7:1050\n*E\n*S KotlinDebug\n*F\n+ 1 PhysicsAnimator.kt\ncom/android/systemui/util/animation/PhysicsAnimator\n*L\n438#1:1037\n438#1,3:1038\n595#1,2:1041\n783#1,3:1057\n615#1,7:1043\n623#1,7:1050\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/util/animation/PhysicsAnimator$Companion;

.field private static instanceConstructor:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "+",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private cancelAction:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Set<",
            "+",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private defaultSpring:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

.field private final endActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final endListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$EndListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final flingAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;",
            "Landroidx/dynamicanimation/animation/FlingAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final flingConfigs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;",
            ">;"
        }
    .end annotation
.end field

.field private internalListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "TT;>.Internal",
            "Listener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final springAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final springConfigs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;",
            ">;"
        }
    .end annotation
.end field

.field private startAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final updateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final weakTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/util/animation/PhysicsAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/util/animation/PhysicsAnimator;->Companion:Lcom/android/systemui/util/animation/PhysicsAnimator$Companion;

    .line 979
    sget-object v0, Lcom/android/systemui/util/animation/PhysicsAnimator$Companion$instanceConstructor$1;->INSTANCE:Lcom/android/systemui/util/animation/PhysicsAnimator$Companion$instanceConstructor$1;

    sput-object v0, Lcom/android/systemui/util/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->weakTarget:Ljava/lang/ref/WeakReference;

    .line 99
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    .line 100
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    .line 107
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    .line 108
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->flingConfigs:Landroid/util/ArrayMap;

    .line 114
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->endListeners:Ljava/util/ArrayList;

    .line 118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    .line 121
    invoke-static {}, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->access$getGlobalDefaultSpring$p()Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->defaultSpring:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 124
    invoke-static {}, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->access$getGlobalDefaultFling$p()Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    .line 131
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->internalListeners:Ljava/util/ArrayList;

    .line 138
    new-instance p1, Lcom/android/systemui/util/animation/PhysicsAnimator$startAction$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/util/animation/PhysicsAnimator$startAction$1;-><init>(Lcom/android/systemui/util/animation/PhysicsAnimator;)V

    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->startAction:Lkotlin/jvm/functions/Function0;

    .line 145
    new-instance p1, Lcom/android/systemui/util/animation/PhysicsAnimator$cancelAction$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/util/animation/PhysicsAnimator$cancelAction$1;-><init>(Lcom/android/systemui/util/animation/PhysicsAnimator;)V

    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->cancelAction:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getFlingAnimation(Lcom/android/systemui/util/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)Landroidx/dynamicanimation/animation/FlingAnimation;
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getFlingAnimation(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFlingAnimations$p(Lcom/android/systemui/util/animation/PhysicsAnimator;)Landroid/util/ArrayMap;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static final synthetic access$getInstanceConstructor$cp()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 91
    sget-object v0, Lcom/android/systemui/util/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getSpringAnimation(Lcom/android/systemui/util/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getSpringAnimation(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSpringAnimations$p(Lcom/android/systemui/util/animation/PhysicsAnimator;)Landroid/util/ArrayMap;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private final clearAnimator()V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 603
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->flingConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 605
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 606
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->endListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 607
    iget-object p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private final configureDynamicAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "*>;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;)",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "*>;"
        }
    .end annotation

    .line 637
    new-instance v0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$1;-><init>(Lcom/android/systemui/util/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 642
    new-instance v0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;-><init>(Lcom/android/systemui/util/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/DynamicAnimation;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p1
.end method

.method public static final estimateFlingEndValue(FFLcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;)F
    .locals 1
    .param p2    # Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lcom/android/systemui/util/animation/PhysicsAnimator;->Companion:Lcom/android/systemui/util/animation/PhysicsAnimator$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/util/animation/PhysicsAnimator$Companion;->estimateFlingEndValue(FFLcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;)F

    move-result p0

    return p0
.end method

.method public static synthetic flingThenSpring$default(Lcom/android/systemui/util/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;ZILjava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 311
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/util/animation/PhysicsAnimator;->flingThenSpring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;Z)Lcom/android/systemui/util/animation/PhysicsAnimator;

    return-object p0
.end method

.method private final getFlingAnimation(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)Landroidx/dynamicanimation/animation/FlingAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;TT;)",
            "Landroidx/dynamicanimation/animation/FlingAnimation;"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    .line 307
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 625
    new-instance v1, Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-direct {v1, p2, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->configureDynamicAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    check-cast v1, Landroidx/dynamicanimation/animation/FlingAnimation;

    .line 310
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p0, "flingAnimations.getOrPut\u2026     as FlingAnimation })"

    .line 308
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/dynamicanimation/animation/FlingAnimation;

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/android/systemui/util/animation/PhysicsAnimator;->Companion:Lcom/android/systemui/util/animation/PhysicsAnimator$Companion;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object p0

    return-object p0
.end method

.method private final getSpringAnimation(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;TT;)",
            "Landroidx/dynamicanimation/animation/SpringAnimation;"
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    .line 307
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 617
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v1, p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->configureDynamicAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 310
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo p0, "springAnimations.getOrPu\u2026    as SpringAnimation })"

    .line 308
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object v1
.end method

.method private final isValidValue(F)Z
    .locals 0

    .line 371
    sget-object p0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-virtual {p0}, Lkotlin/jvm/internal/FloatCompanionObject;->getMAX_VALUE()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    sget-object p0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-virtual {p0}, Lkotlin/jvm/internal/FloatCompanionObject;->getMAX_VALUE()F

    move-result p0

    neg-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic spring$default(Lcom/android/systemui/util/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;ILjava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 198
    iget-object p4, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->defaultSpring:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    return-object p0
.end method


# virtual methods
.method public final addEndListener(Lcom/android/systemui/util/animation/PhysicsAnimator$EndListener;)Lcom/android/systemui/util/animation/PhysicsAnimator;
    .locals 1
    .param p1    # Lcom/android/systemui/util/animation/PhysicsAnimator$EndListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$EndListener<",
            "TT;>;)",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->endListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addUpdateListener(Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;)Lcom/android/systemui/util/animation/PhysicsAnimator;
    .locals 1
    .param p1    # Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener<",
            "TT;>;)",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final arePropertiesAnimating(Ljava/util/Set;)Z
    .locals 2
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;>;)Z"
        }
    .end annotation

    const-string v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1499
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1500
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 783
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->isPropertyAnimating(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final cancel()V
    .locals 3

    .line 804
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->cancelAction:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "flingAnimations.keys"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->cancelAction:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string/jumbo v1, "springAnimations.keys"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final varargs cancel([Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 1
    .param p1    # [Landroidx/dynamicanimation/animation/FloatPropertyCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 810
    iget-object p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->cancelAction:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final cancelInternal$packages__apps__OPSystemUI__android_common__OPSystemUI_core(Ljava/util/Set;)V
    .locals 2
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;>;)V"
        }
    .end annotation

    const-string v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 797
    iget-object v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/FlingAnimation;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 798
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final flingThenSpring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;
    .locals 8
    .param p1    # Landroidx/dynamicanimation/animation/FloatPropertyCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;F",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;",
            ")",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/util/animation/PhysicsAnimator;->flingThenSpring$default(Lcom/android/systemui/util/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;ZILjava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    return-object p0
.end method

.method public final flingThenSpring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;Z)Lcom/android/systemui/util/animation/PhysicsAnimator;
    .locals 9
    .param p1    # Landroidx/dynamicanimation/animation/FloatPropertyCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;F",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;",
            "Z)",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flingConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "springConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "PhysicsAnimator"

    const-string p2, "Trying to animate a GC-ed target."

    .line 315
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, p3

    .line 318
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->copy$default(Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;FFFFILjava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    move-result-object v1

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v2, p4

    .line 319
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->copy$default(Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;FFFFILjava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    move-result-object v2

    const/4 v3, 0x0

    int-to-float v3, v3

    cmpg-float v4, p2, v3

    if-gez v4, :cond_1

    .line 320
    invoke-virtual {p3}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->getMin$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F

    move-result v5

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->getMax$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F

    move-result v5

    :goto_0
    if-eqz p5, :cond_8

    .line 322
    invoke-direct {p0, v5}, Lcom/android/systemui/util/animation/PhysicsAnimator;->isValidValue(F)Z

    move-result p5

    if-eqz p5, :cond_8

    .line 323
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result p5

    .line 325
    invoke-virtual {p3}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->getFriction$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F

    move-result v6

    const v7, 0x40866666    # 4.2f

    mul-float/2addr v6, v7

    div-float v6, p2, v6

    add-float/2addr p5, v6

    .line 327
    invoke-virtual {p3}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->getMin$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F

    move-result v6

    invoke-virtual {p3}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->getMax$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F

    move-result v8

    add-float/2addr v6, v8

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v6, v8

    if-gez v4, :cond_2

    cmpl-float v4, p5, v6

    if-gtz v4, :cond_3

    :cond_2
    cmpl-float v3, p2, v3

    if-lez v3, :cond_5

    cmpg-float v3, p5, v6

    if-gez v3, :cond_5

    :cond_3
    cmpg-float p5, p5, v6

    if-gez p5, :cond_4

    .line 334
    invoke-virtual {p3}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->getMin$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F

    move-result p5

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->getMax$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F

    move-result p5

    .line 335
    :goto_1
    invoke-direct {p0, p5}, Lcom/android/systemui/util/animation/PhysicsAnimator;->isValidValue(F)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 336
    invoke-virtual {p0, p1, p5, p2, p4}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    return-object p0

    .line 341
    :cond_5
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result p4

    sub-float p4, v5, p4

    .line 346
    invoke-virtual {p3}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->getFriction$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F

    move-result p3

    mul-float/2addr p3, v7

    mul-float/2addr p3, p4

    const/4 p5, 0x0

    cmpl-float v0, p4, p5

    if-lez v0, :cond_6

    cmpl-float v0, p2, p5

    if-ltz v0, :cond_6

    .line 355
    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_2

    :cond_6
    cmpg-float p4, p4, p5

    if-gez p4, :cond_7

    cmpg-float p4, p2, p5

    if-gtz p4, :cond_7

    .line 357
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 353
    :cond_7
    :goto_2
    invoke-virtual {v1, p2}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->setStartVelocity$packages__apps__OPSystemUI__android_common__OPSystemUI_core(F)V

    .line 361
    invoke-virtual {v2, v5}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->setFinalPosition$packages__apps__OPSystemUI__android_common__OPSystemUI_core(F)V

    goto :goto_3

    .line 363
    :cond_8
    invoke-virtual {v1, p2}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->setStartVelocity$packages__apps__OPSystemUI__android_common__OPSystemUI_core(F)V

    .line 366
    :goto_3
    iget-object p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->flingConfigs:Landroid/util/ArrayMap;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final getAnimatedProperties$packages__apps__OPSystemUI__android_common__OPSystemUI_core()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 788
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "springConfigs.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->flingConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string v1, "flingConfigs.keys"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->union(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getInternalListeners$packages__apps__OPSystemUI__android_common__OPSystemUI_core()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "TT;>.Internal",
            "Listener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 131
    iget-object p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->internalListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final isPropertyAnimating(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Z
    .locals 2
    .param p1    # Landroidx/dynamicanimation/animation/FloatPropertyCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;)Z"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 778
    iget-object p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/FlingAnimation;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final isRunning()Z
    .locals 3

    .line 772
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "springAnimations.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "flingAnimations.keys"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->union(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->arePropertiesAnimating(Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public final setDefaultSpringConfig(Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)V
    .locals 1
    .param p1    # Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "defaultSpring"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->defaultSpring:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    return-void
.end method

.method public final spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/systemui/util/animation/PhysicsAnimator;
    .locals 8
    .param p1    # Landroidx/dynamicanimation/animation/FloatPropertyCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;F)",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 228
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring$default(Lcom/android/systemui/util/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;ILjava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    return-object p0
.end method

.method public final spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFFF)Lcom/android/systemui/util/animation/PhysicsAnimator;
    .locals 2
    .param p1    # Landroidx/dynamicanimation/animation/FloatPropertyCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;FFFF)",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->access$getVerboseLogging$p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Springing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/systemui/util/animation/PhysicsAnimator;->Companion:Lcom/android/systemui/util/animation/PhysicsAnimator$Companion;

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/animation/PhysicsAnimator$Companion;->getReadablePropertyName(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhysicsAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 184
    invoke-direct {v1, p4, p5, p3, p2}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FFFF)V

    .line 183
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;
    .locals 7
    .param p1    # Landroidx/dynamicanimation/animation/FloatPropertyCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;FF",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;",
            ")",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p4}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->getStiffness$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F

    move-result v5

    invoke-virtual {p4}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->getDampingRatio$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 200
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFFF)Lcom/android/systemui/util/animation/PhysicsAnimator;

    return-object p0
.end method

.method public final spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;
    .locals 1
    .param p1    # Landroidx/dynamicanimation/animation/FloatPropertyCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;F",
            "Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;",
            ")",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    return-object p0
.end method

.method public final start()V
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->startAction:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final startInternal$packages__apps__OPSystemUI__android_common__OPSystemUI_core()V
    .locals 15

    .line 460
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Looper.getMainLooper()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    const-string v1, "PhysicsAnimator"

    if-nez v0, :cond_0

    const-string v0, "Animations can only be started on the main thread. If you are seeing this message in a test, call PhysicsAnimatorTestUtils#prepareForTest in your test setup."

    .line 461
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Trying to animate a GC-ed object."

    .line 467
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 474
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 476
    invoke-virtual {p0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getAnimatedProperties$packages__apps__OPSystemUI__android_common__OPSystemUI_core()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 477
    iget-object v2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->flingConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    .line 478
    iget-object v2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 481
    invoke-virtual {v11, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v5

    if-eqz v9, :cond_3

    .line 486
    new-instance v10, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$1;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v9

    move-object v6, v11

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$1;-><init>(Lcom/android/systemui/util/animation/PhysicsAnimator;Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;FLandroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v14, :cond_2

    if-nez v9, :cond_4

    .line 518
    invoke-direct {p0, v11, v0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getSpringAnimation(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    .line 519
    invoke-virtual {v14, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->applyToAnimation$packages__apps__OPSystemUI__android_common__OPSystemUI_core(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    .line 520
    new-instance v3, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$2;

    invoke-direct {v3, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$2;-><init>(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 524
    :cond_4
    invoke-virtual {v9}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->getMin$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F

    move-result v12

    .line 525
    invoke-virtual {v9}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->getMax$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F

    move-result v13

    .line 528
    iget-object v2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->endListeners:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;

    move-object v9, v4

    move-object v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/util/animation/PhysicsAnimator$startInternal$3;-><init>(Lcom/android/systemui/util/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 585
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->internalListeners:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;

    .line 587
    invoke-virtual {p0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->getAnimatedProperties$packages__apps__OPSystemUI__android_common__OPSystemUI_core()Ljava/util/Set;

    move-result-object v5

    .line 588
    new-instance v6, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 589
    new-instance v7, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->endListeners:Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 590
    new-instance v8, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v10

    move-object v3, p0

    move-object v4, v0

    .line 585
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;-><init>(Lcom/android/systemui/util/animation/PhysicsAnimator;Ljava/lang/Object;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1591
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 595
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    .line 597
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->clearAnimator()V

    return-void
.end method

.method public final varargs withEndActions([Ljava/lang/Runnable;)Lcom/android/systemui/util/animation/PhysicsAnimator;
    .locals 4
    .param p1    # [Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "endActions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1313
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1382
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1383
    check-cast v2, Ljava/lang/Runnable;

    .line 438
    new-instance v3, Lcom/android/systemui/util/animation/PhysicsAnimator$withEndActions$1$1;

    invoke-direct {v3, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator$withEndActions$1$1;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final varargs withEndActions([Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/util/animation/PhysicsAnimator;
    .locals 1
    .param p1    # [Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "endActions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
