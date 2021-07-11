.class final Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PhysicsAnimator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;->onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/util/animation/PhysicsAnimator<",
        "TT;>.Internal",
        "Listener;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $canceled:Z

.field final synthetic $value:F

.field final synthetic $velocity:F

.field final synthetic this$0:Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;ZFF)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;

    iput-boolean p2, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$canceled:Z

    iput p3, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$value:F

    iput p4, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$velocity:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p1, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->invoke(Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;)Z
    .locals 7
    .param p1    # Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/animation/PhysicsAnimator<",
            "TT;>.Internal",
            "Listener;",
            ")Z"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->this$0:Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;

    iget-object v2, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-boolean v3, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$canceled:Z

    iget v4, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$value:F

    iget v5, p0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$velocity:F

    iget-object p0, v0, Lcom/android/systemui/util/animation/PhysicsAnimator$configureDynamicAnimation$2;->$anim:Landroidx/dynamicanimation/animation/DynamicAnimation;

    instance-of v6, p0, Landroidx/dynamicanimation/animation/FlingAnimation;

    move-object v1, p1

    .line 644
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/util/animation/PhysicsAnimator$InternalListener;->onInternalAnimationEnd$packages__apps__OPSystemUI__android_common__OPSystemUI_core(Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZFFZ)Z

    move-result p0

    return p0
.end method
