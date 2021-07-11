.class Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "AnimatableScaleMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;)F
    .locals 0

    .line 51
    invoke-static {p1}, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->access$000(Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;)F

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->getAnimatableValueForScaleFactor(F)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 48
    check-cast p1, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix$1;->getValue(Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;F)V
    .locals 0

    const p0, 0x3b03126f    # 0.002f

    mul-float/2addr p2, p0

    .line 56
    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;->setScaleX(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 48
    check-cast p1, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix$1;->setValue(Lcom/android/systemui/bubbles/animation/AnimatableScaleMatrix;F)V

    return-void
.end method
