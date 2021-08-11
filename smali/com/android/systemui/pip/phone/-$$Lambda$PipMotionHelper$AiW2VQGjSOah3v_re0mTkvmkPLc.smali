.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$AiW2VQGjSOah3v_re0mTkvmkPLc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$AiW2VQGjSOah3v_re0mTkvmkPLc;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdateForProperty(Ljava/lang/Object;Landroid/util/ArrayMap;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$AiW2VQGjSOah3v_re0mTkvmkPLc;->f$0:Ljava/lang/Runnable;

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->lambda$flingToSnapTarget$3(Ljava/lang/Runnable;Landroid/graphics/Rect;Landroid/util/ArrayMap;)V

    return-void
.end method
