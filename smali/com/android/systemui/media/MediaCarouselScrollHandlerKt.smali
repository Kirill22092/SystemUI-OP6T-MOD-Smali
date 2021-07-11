.class public final Lcom/android/systemui/media/MediaCarouselScrollHandlerKt;
.super Ljava/lang/Object;
.source "MediaCarouselScrollHandler.kt"


# static fields
.field private static final translationConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    const v1, 0x44bb8000    # 1500.0f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    sput-object v0, Lcom/android/systemui/media/MediaCarouselScrollHandlerKt;->translationConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    return-void
.end method

.method public static final synthetic access$getTranslationConfig$p()Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/media/MediaCarouselScrollHandlerKt;->translationConfig:Lcom/android/systemui/util/animation/PhysicsAnimator$SpringConfig;

    return-object v0
.end method
