.class public abstract Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
.super Ljava/lang/Object;
.source "MagnetizedObject.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;,
        Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;,
        Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion;
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
    value = "SMAP\nMagnetizedObject.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagnetizedObject.kt\ncom/android/systemui/util/magnetictarget/MagnetizedObject\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,699:1\n240#2,2:700\n240#2,2:702\n1591#2,2:704\n*E\n*S KotlinDebug\n*F\n+ 1 MagnetizedObject.kt\ncom/android/systemui/util/magnetictarget/MagnetizedObject\n*L\n351#1,2:700\n435#1,2:702\n579#1,2:704\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion;

.field private static hapticSettingObserverInitialized:Z

.field private static systemHapticsEnabled:Z


# instance fields
.field private animateStuckToTarget:Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final animator:Lcom/android/systemui/util/animation/PhysicsAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final associatedTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private flingToTargetEnabled:Z

.field private flingToTargetMinVelocity:F

.field private flingToTargetWidthPercent:F

.field private flingUnstuckFromTargetMinVelocity:F

.field private flungIntoTargetSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hapticsEnabled:Z

.field public magnetListener:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private movedBeyondSlop:Z

.field private final objectLocationOnScreen:[I

.field private physicsAnimatorEndListener:Lcom/android/systemui/util/animation/PhysicsAnimator$EndListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/animation/PhysicsAnimator$EndListener<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private physicsAnimatorUpdateListener:Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private springConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private stickToTargetMaxXVelocity:F

.field private targetObjectIsStuckTo:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

.field private touchDown:Landroid/graphics/PointF;

.field private touchSlop:I

.field private final underlyingObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final velocityTracker:Landroid/view/VelocityTracker;

.field private final vibrator:Landroid/os/Vibrator;

.field private final xProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final yProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->Companion:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/dynamicanimation/animation/FloatPropertyCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/dynamicanimation/animation/FloatPropertyCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "underlyingObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "xProperty"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "yProperty"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->underlyingObject:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->xProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iput-object p4, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->yProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 139
    sget-object p1, Lcom/android/systemui/util/animation/PhysicsAnimator;->Companion:Lcom/android/systemui/util/animation/PhysicsAnimator$Companion;

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->animator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 140
    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->objectLocationOnScreen:[I

    .line 146
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    .line 148
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    const-string p2, "VelocityTracker.obtain()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    .line 149
    iget-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->context:Landroid/content/Context;

    const-string/jumbo p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->vibrator:Landroid/os/Vibrator;

    .line 151
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->touchDown:Landroid/graphics/PointF;

    .line 190
    new-instance p1, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$animateStuckToTarget$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$animateStuckToTarget$1;-><init>(Lcom/android/systemui/util/magnetictarget/MagnetizedObject;)V

    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->animateStuckToTarget:Lkotlin/jvm/functions/Function5;

    const/4 p1, 0x1

    .line 197
    iput-boolean p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->flingToTargetEnabled:Z

    const/high16 p2, 0x40400000    # 3.0f

    .line 231
    iput p2, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->flingToTargetWidthPercent:F

    const/high16 p2, 0x457a0000    # 4000.0f

    .line 237
    iput p2, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->flingToTargetMinVelocity:F

    .line 244
    iput p2, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->flingUnstuckFromTargetMinVelocity:F

    const/high16 p2, 0x44fa0000    # 2000.0f

    .line 251
    iput p2, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->stickToTargetMaxXVelocity:F

    .line 259
    iput-boolean p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->hapticsEnabled:Z

    .line 262
    new-instance p1, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const p2, 0x44bb8000    # 1500.0f

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->springConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 269
    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->flungIntoTargetSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 272
    sget-object p1, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->Companion:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion;

    iget-object p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->context:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion;->access$initHapticSettingObserver(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$Companion;Landroid/content/Context;)V

    return-void

    .line 149
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic access$animateStuckToTargetInternal(Lcom/android/systemui/util/magnetictarget/MagnetizedObject;Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;FFZLkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->animateStuckToTargetInternal(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;FFZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getHapticSettingObserverInitialized$cp()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->hapticSettingObserverInitialized:Z

    return v0
.end method

.method public static final synthetic access$setHapticSettingObserverInitialized$cp(Z)V
    .locals 0

    .line 59
    sput-boolean p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->hapticSettingObserverInitialized:Z

    return-void
.end method

.method public static final synthetic access$setSystemHapticsEnabled$cp(Z)V
    .locals 0

    .line 59
    sput-boolean p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->systemHapticsEnabled:Z

    return-void
.end method

.method public static final synthetic access$setTargetObjectIsStuckTo$p(Lcom/android/systemui/util/magnetictarget/MagnetizedObject;Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    return-void
.end method

.method public static final synthetic access$vibrateIfEnabled(Lcom/android/systemui/util/magnetictarget/MagnetizedObject;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->vibrateIfEnabled(I)V

    return-void
.end method

.method private final addMovement(Landroid/view/MotionEvent;)V
    .locals 3

    .line 473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 475
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 476
    iget-object p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float p0, v0

    neg-float v0, v1

    .line 477
    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method private final animateStuckToTargetInternal(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;FFZLkotlin/jvm/functions/Function0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;",
            "FFZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 488
    invoke-virtual {p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->updateLocationOnScreen()V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->underlyingObject:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->objectLocationOnScreen:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getLocationOnScreen(Ljava/lang/Object;[I)V

    .line 494
    invoke-virtual {p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->getCenterOnScreen()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 495
    iget-object v1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->underlyingObject:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getWidth(Ljava/lang/Object;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->objectLocationOnScreen:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 496
    invoke-virtual {p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->getCenterOnScreen()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 497
    iget-object v1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->underlyingObject:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getHeight(Ljava/lang/Object;)F

    move-result v1

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->objectLocationOnScreen:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    if-eqz p4, :cond_0

    .line 499
    iget-object p4, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->flungIntoTargetSpringConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->springConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    .line 501
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->cancelAnimations$packages__apps__OPSystemUI__android_common__OPSystemUI_core()V

    .line 504
    iget-object v1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->animator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    .line 505
    iget-object v4, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->xProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v5, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->underlyingObject:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v5

    add-float/2addr v5, v0

    invoke-virtual {v1, v4, v5, p2, p4}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    .line 507
    iget-object p2, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->yProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->underlyingObject:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {v1, p2, v0, p3, p4}, Lcom/android/systemui/util/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    .line 510
    iget-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->physicsAnimatorUpdateListener:Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 511
    iget-object p3, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->animator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p3, p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->addUpdateListener(Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p2

    .line 514
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->physicsAnimatorEndListener:Lcom/android/systemui/util/animation/PhysicsAnimator$EndListener;

    if-eqz p1, :cond_4

    .line 515
    iget-object p3, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->animator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p3, p1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->addEndListener(Lcom/android/systemui/util/animation/PhysicsAnimator$EndListener;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    goto :goto_2

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p2

    :cond_4
    :goto_2
    if-eqz p5, :cond_5

    .line 519
    iget-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->animator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    new-array p2, v2, [Lkotlin/jvm/functions/Function0;

    aput-object p5, p2, v3

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/PhysicsAnimator;->withEndActions([Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/util/animation/PhysicsAnimator;

    .line 522
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->animator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/util/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method private final isForcefulFlingTowardsTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;FFFF)Z
    .locals 3

    .line 536
    iget-boolean v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->flingToTargetEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 543
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->getCenterOnScreen()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v0, p3, v0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->flingToTargetMinVelocity:F

    cmpl-float v0, p5, v0

    if-lez v0, :cond_2

    goto :goto_0

    .line 544
    :cond_1
    iget v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->flingToTargetMinVelocity:F

    cmpg-float v0, p5, v0

    if-gez v0, :cond_2

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-eqz v0, :cond_4

    div-float/2addr p5, p4

    mul-float/2addr p2, p5

    sub-float/2addr p3, p2

    .line 561
    invoke-virtual {p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->getCenterOnScreen()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    div-float/2addr p2, p5

    .line 565
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->getTargetView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->flingToTargetWidthPercent:F

    mul-float/2addr p3, p0

    .line 568
    invoke-virtual {p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->getCenterOnScreen()Landroid/graphics/PointF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/PointF;->x:F

    const/4 p4, 0x2

    int-to-float p4, p4

    div-float/2addr p3, p4

    sub-float/2addr p0, p3

    cmpl-float p0, p2, p0

    if-lez p0, :cond_5

    .line 569
    invoke-virtual {p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->getCenterOnScreen()Landroid/graphics/PointF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/PointF;->x:F

    add-float/2addr p0, p3

    cmpg-float p0, p2, p0

    if-gez p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method private final vibrateIfEnabled(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 464
    iget-boolean v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->hapticsEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->systemHapticsEnabled:Z

    if-eqz v0, :cond_0

    .line 465
    iget-object p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->vibrator:Landroid/os/Vibrator;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addTarget(Landroid/view/View;I)Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    new-instance v0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;-><init>(Landroid/view/View;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->addTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V

    return-object v0
.end method

.method public final addTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V
    .locals 1
    .param p1    # Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    iget-object p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->updateLocationOnScreen()V

    return-void
.end method

.method public final cancelAnimations$packages__apps__OPSystemUI__android_common__OPSystemUI_core()V
    .locals 4

    .line 574
    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->animator:Lcom/android/systemui/util/animation/PhysicsAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v2, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->xProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->yProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/PhysicsAnimator;->cancel([Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    return-void
.end method

.method public final getFlingToTargetMinVelocity()F
    .locals 0

    .line 237
    iget p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->flingToTargetMinVelocity:F

    return p0
.end method

.method public final getFlingToTargetWidthPercent()F
    .locals 0

    .line 231
    iget p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->flingToTargetWidthPercent:F

    return p0
.end method

.method public abstract getHeight(Ljava/lang/Object;)F
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation
.end method

.method public abstract getLocationOnScreen(Ljava/lang/Object;[I)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[I)V"
        }
    .end annotation
.end method

.method public final getMagnetListener()Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 166
    iget-object p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->magnetListener:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "magnetListener"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getObjectStuckToTarget()Z
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getStickToTargetMaxXVelocity()F
    .locals 0

    .line 251
    iget p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->stickToTargetMaxXVelocity:F

    return p0
.end method

.method public final getUnderlyingObject()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->underlyingObject:Ljava/lang/Object;

    return-object p0
.end method

.method public abstract getWidth(Ljava/lang/Object;)F
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation
.end method

.method public final maybeConsumeMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 324
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->updateTargetViews$packages__apps__OPSystemUI__android_common__OPSystemUI_core()V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 329
    iput-object v2, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 332
    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->touchDown:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 333
    iput-boolean v1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->movedBeyondSlop:Z

    .line 337
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->addMovement(Landroid/view/MotionEvent;)V

    .line 340
    iget-boolean v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->movedBeyondSlop:Z

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->touchDown:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->touchDown:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    float-to-double v5, v0

    float-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v0, v4

    .line 342
    iget v4, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->touchSlop:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 344
    iput-boolean v3, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->movedBeyondSlop:Z

    goto :goto_0

    :cond_2
    return v1

    .line 351
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    .line 240
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {v5}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->getCenterOnScreen()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-virtual {v5}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->getCenterOnScreen()Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    float-to-double v8, v6

    float-to-double v6, v7

    .line 352
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 355
    invoke-virtual {v5}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->getMagneticFieldRadiusPx()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v6, v5

    if-gez v5, :cond_5

    move v5, v3

    goto :goto_1

    :cond_5
    move v5, v1

    :goto_1
    if-eqz v5, :cond_4

    goto :goto_2

    :cond_6
    move-object v4, v2

    .line 351
    :goto_2
    move-object v6, v4

    check-cast v6, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 361
    invoke-virtual {p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v6, :cond_7

    move v0, v3

    goto :goto_3

    :cond_7
    move v0, v1

    .line 369
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v6, :cond_8

    iget-object v4, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_8

    move v4, v3

    goto :goto_4

    :cond_8
    move v4, v1

    :goto_4
    const/4 v11, 0x5

    const/16 v12, 0x3e8

    const-string v13, "magnetListener"

    if-nez v0, :cond_c

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    if-nez v6, :cond_e

    .line 391
    invoke-virtual {p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 392
    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->cancelAnimations$packages__apps__OPSystemUI__android_common__OPSystemUI_core()V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->magnetListener:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;

    if-eqz v0, :cond_b

    .line 398
    iget-object v4, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    if-eqz v4, :cond_a

    iget-object v5, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    .line 397
    invoke-interface {v0, v4, v5, v6, v1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;->onUnstuckFromTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;FFZ)V

    .line 400
    iput-object v2, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    const/4 v0, 0x2

    .line 402
    invoke-direct {p0, v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->vibrateIfEnabled(I)V

    goto :goto_6

    .line 398
    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 397
    :cond_b
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 372
    :cond_c
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 373
    iget-object v4, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    .line 374
    iget-object v5, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    if-eqz v0, :cond_d

    .line 379
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v7, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->stickToTargetMaxXVelocity:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_d

    return v1

    .line 385
    :cond_d
    iput-object v6, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 386
    invoke-virtual {p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->cancelAnimations$packages__apps__OPSystemUI__android_common__OPSystemUI_core()V

    .line 387
    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->magnetListener:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;

    if-eqz v0, :cond_1b

    if-eqz v6, :cond_1a

    invoke-interface {v0, v6}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;->onStuckToTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->animateStuckToTarget:Lkotlin/jvm/functions/Function5;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v10, 0x0

    move-object v5, v0

    invoke-interface/range {v5 .. v10}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-direct {p0, v11}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->vibrateIfEnabled(I)V

    .line 406
    :cond_e
    :goto_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_19

    .line 408
    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 409
    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 410
    iget-object v4, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    .line 414
    invoke-virtual {p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->cancelAnimations$packages__apps__OPSystemUI__android_common__OPSystemUI_core()V

    .line 416
    invoke-virtual {p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

    move-result v4

    if-eqz v4, :cond_14

    neg-float p1, v10

    .line 417
    iget v1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->flingUnstuckFromTargetMinVelocity:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_11

    .line 421
    iget-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->magnetListener:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;

    if-eqz p1, :cond_10

    .line 422
    iget-object v1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    if-eqz v1, :cond_f

    .line 421
    invoke-interface {p1, v1, v0, v10, v3}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;->onUnstuckFromTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;FFZ)V

    goto :goto_7

    .line 422
    :cond_f
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 421
    :cond_10
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 425
    :cond_11
    iget-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->magnetListener:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    if-eqz v0, :cond_12

    invoke-interface {p1, v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;->onReleasedInTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V

    .line 426
    invoke-direct {p0, v11}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->vibrateIfEnabled(I)V

    .line 430
    :goto_7
    iput-object v2, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    return v3

    .line 425
    :cond_12
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_13
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 435
    :cond_14
    iget-object v4, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    .line 240
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_15
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v5, v12

    check-cast v5, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    move-object v4, p0

    move v8, v0

    move v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->isForcefulFlingTowardsTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;FFFF)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_8

    :cond_16
    move-object v12, v2

    .line 435
    :goto_8
    move-object v5, v12

    check-cast v5, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    if-eqz v5, :cond_18

    .line 442
    iget-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->magnetListener:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;

    if-eqz p1, :cond_17

    invoke-interface {p1, v5}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;->onStuckToTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V

    .line 443
    iput-object v5, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->targetObjectIsStuckTo:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 445
    iget-object v4, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->animateStuckToTarget:Lkotlin/jvm/functions/Function5;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v9, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;

    invoke-direct {v9, p0, v5}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$maybeConsumeMotionEvent$1;-><init>(Lcom/android/systemui/util/magnetictarget/MagnetizedObject;Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V

    invoke-interface/range {v4 .. v9}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    .line 442
    :cond_17
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_18
    return v1

    .line 458
    :cond_19
    invoke-virtual {p0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

    move-result p0

    return p0

    .line 387
    :cond_1a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_1b
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final setAnimateStuckToTarget(Lkotlin/jvm/functions/Function5;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function5;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->animateStuckToTarget:Lkotlin/jvm/functions/Function5;

    return-void
.end method

.method public final setFlingToTargetMinVelocity(F)V
    .locals 0

    .line 237
    iput p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->flingToTargetMinVelocity:F

    return-void
.end method

.method public final setFlingToTargetWidthPercent(F)V
    .locals 0

    .line 231
    iput p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->flingToTargetWidthPercent:F

    return-void
.end method

.method public final setHapticsEnabled(Z)V
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->hapticsEnabled:Z

    return-void
.end method

.method public final setMagnetListener(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;)V
    .locals 1
    .param p1    # Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iput-object p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->magnetListener:Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;

    return-void
.end method

.method public final setStickToTargetMaxXVelocity(F)V
    .locals 0

    .line 251
    iput p1, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->stickToTargetMaxXVelocity:F

    return-void
.end method

.method public final updateTargetViews$packages__apps__OPSystemUI__android_common__OPSystemUI_core()V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    .line 1591
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 579
    invoke-virtual {v1}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->updateLocationOnScreen()V

    goto :goto_0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;

    invoke-virtual {v0}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;->getTargetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const-string v1, "ViewConfiguration.get(as\u2026ts[0].targetView.context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;->touchSlop:I

    :cond_1
    return-void
.end method
