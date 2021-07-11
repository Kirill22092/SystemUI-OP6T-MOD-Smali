.class public final Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;
.super Ljava/lang/Object;
.source "PhysicsAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/animation/PhysicsAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlingConfig"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPhysicsAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhysicsAnimator.kt\ncom/android/systemui/util/animation/PhysicsAnimator$FlingConfig\n*L\n1#1,1036:1\n*E\n"
.end annotation


# instance fields
.field private friction:F

.field private max:F

.field private min:F

.field private startVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 856
    invoke-static {}, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->access$getGlobalDefaultFling$p()Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->friction:F

    invoke-direct {p0, v0}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .line 859
    invoke-static {}, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->access$getGlobalDefaultFling$p()Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->min:F

    invoke-static {}, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->access$getGlobalDefaultFling$p()Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->max:F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    const/4 v0, 0x0

    .line 862
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->friction:F

    iput p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->min:F

    iput p3, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->max:F

    iput p4, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;FFFFILjava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->friction:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->min:F

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->max:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->copy(FFFF)Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final applyToAnimation$packages__apps__OPSystemUI__android_common__OPSystemUI_core(Landroidx/dynamicanimation/animation/FlingAnimation;)V
    .locals 1
    .param p1    # Landroidx/dynamicanimation/animation/FlingAnimation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 867
    iget v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->friction:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setFriction(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    .line 868
    iget v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->min:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    .line 869
    iget v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->max:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    .line 870
    iget p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    return-void
.end method

.method public final copy(FFFF)Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;-><init>(FFFF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;

    iget v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->friction:F

    iget v1, p1, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->friction:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->min:F

    iget v1, p1, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->min:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->max:F

    iget v1, p1, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->max:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    iget p1, p1, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getFriction$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F
    .locals 0

    .line 850
    iget p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->friction:F

    return p0
.end method

.method public final getMax$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F
    .locals 0

    .line 852
    iget p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->max:F

    return p0
.end method

.method public final getMin$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F
    .locals 0

    .line 851
    iget p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->min:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->friction:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->min:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->max:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setMax$packages__apps__OPSystemUI__android_common__OPSystemUI_core(F)V
    .locals 0

    .line 852
    iput p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->max:F

    return-void
.end method

.method public final setMin$packages__apps__OPSystemUI__android_common__OPSystemUI_core(F)V
    .locals 0

    .line 851
    iput p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->min:F

    return-void
.end method

.method public final setStartVelocity$packages__apps__OPSystemUI__android_common__OPSystemUI_core(F)V
    .locals 0

    .line 853
    iput p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlingConfig(friction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->friction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->min:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->max:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", startVelocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
