.class public final Lcom/android/systemui/util/animation/PhysicsAnimatorKt;
.super Ljava/lang/Object;
.source "PhysicsAnimator.kt"


# static fields
.field private static final UNSET:F

.field private static final animators:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final globalDefaultFling:Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

.field private static final globalDefaultSpring:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

.field private static verboseLogging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-virtual {v0}, Lkotlin/jvm/internal/FloatCompanionObject;->getMAX_VALUE()F

    move-result v0

    neg-float v0, v0

    sput v0, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->UNSET:F

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->animators:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const v1, 0x44bb8000    # 1500.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    sput-object v0, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->globalDefaultSpring:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    new-instance v0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    sget-object v1, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-virtual {v1}, Lkotlin/jvm/internal/FloatCompanionObject;->getMAX_VALUE()F

    move-result v1

    neg-float v1, v1

    sget-object v2, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-virtual {v2}, Lkotlin/jvm/internal/FloatCompanionObject;->getMAX_VALUE()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    sput-object v0, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->globalDefaultFling:Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    return-void
.end method

.method public static final synthetic access$getGlobalDefaultFling$p()Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->globalDefaultFling:Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    return-object v0
.end method

.method public static final synthetic access$getGlobalDefaultSpring$p()Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->globalDefaultSpring:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    return-object v0
.end method

.method public static final synthetic access$getUNSET$p()F
    .locals 1

    sget v0, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->UNSET:F

    return v0
.end method

.method public static final synthetic access$getVerboseLogging$p()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->verboseLogging:Z

    return v0
.end method

.method public static final getAnimators()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->animators:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public static final getPhysicsAnimator(Landroid/view/View;)Lcom/android/systemui/util/animation/PhysicsAnimator;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;)",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$physicsAnimator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/util/animation/PhysicsAnimator;->Companion:Lcom/android/systemui/util/animation/PhysicsAnimator$Companion;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object p0

    return-object p0
.end method
