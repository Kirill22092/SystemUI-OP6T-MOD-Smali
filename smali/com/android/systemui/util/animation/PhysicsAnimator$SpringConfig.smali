.class public final Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;
.super Ljava/lang/Object;
.source "PhysicsAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/animation/PhysicsAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpringConfig"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPhysicsAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhysicsAnimator.kt\ncom/android/systemui/util/animation/PhysicsAnimator$SpringConfig\n*L\n1#1,1036:1\n*E\n"
.end annotation


# instance fields
.field private dampingRatio:F

.field private finalPosition:F

.field private startVelocity:F

.field private stiffness:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->access$getGlobalDefaultSpring$p()Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    invoke-static {}, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->access$getGlobalDefaultSpring$p()Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    iput p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    iput p3, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    iput p4, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    invoke-static {}, Lcom/android/systemui/util/animation/PhysicsAnimatorKt;->access$getUNSET$p()F

    move-result p4

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FFFF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;FFFFILjava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->copy(FFFF)Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final applyToAnimation$packages__apps__OPSystemUI__android_common__OPSystemUI_core(Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 2
    .param p1    # Landroidx/dynamicanimation/animation/SpringAnimation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    :goto_0
    iget v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    iget p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :cond_1
    return-void
.end method

.method public final copy(FFFF)Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FFFF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    iget v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    iget v1, p1, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    iget v1, p1, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    iget v1, p1, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    iget p1, p1, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

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

.method public final getDampingRatio$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    return p0
.end method

.method public final getFinalPosition$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    return p0
.end method

.method public final getStiffness$packages__apps__OPSystemUI__android_common__OPSystemUI_core()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setFinalPosition$packages__apps__OPSystemUI__android_common__OPSystemUI_core(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    return-void
.end method

.method public final setStartVelocity$packages__apps__OPSystemUI__android_common__OPSystemUI_core(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpringConfig(stiffness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", dampingRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", startVelocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", finalPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
