.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$i9NRb-Fm-Jlv_VucqYs_q6_ejqw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/util/animation/PhysicsAnimator$UpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/pip/phone/PipMotionHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$i9NRb-Fm-Jlv_VucqYs_q6_ejqw;->f$0:Lcom/android/systemui/pip/phone/PipMotionHelper;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdateForProperty(Ljava/lang/Object;Landroid/util/ArrayMap;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$i9NRb-Fm-Jlv_VucqYs_q6_ejqw;->f$0:Lcom/android/systemui/pip/phone/PipMotionHelper;

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->lambda$new$1$PipMotionHelper(Landroid/graphics/Rect;Landroid/util/ArrayMap;)V

    return-void
.end method
