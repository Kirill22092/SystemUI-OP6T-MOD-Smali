.class Lcom/android/systemui/pip/phone/PipMotionHelper$2;
.super Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
.source "PipMotionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/phone/PipMotionHelper;->getMagnetizedPip()Lcom/android/systemui/util/magnetictarget/MagnetizedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/magnetictarget/MagnetizedObject<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMotionHelper;Landroid/content/Context;Landroid/graphics/Rect;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 0

    .line 594
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/util/magnetictarget/MagnetizedObject;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    return-void
.end method


# virtual methods
.method public getHeight(Landroid/graphics/Rect;)F
    .locals 0

    .line 602
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public bridge synthetic getHeight(Ljava/lang/Object;)F
    .locals 0

    .line 594
    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper$2;->getHeight(Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public getLocationOnScreen(Landroid/graphics/Rect;[I)V
    .locals 1

    .line 608
    iget p0, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    aput p0, p2, v0

    .line 609
    iget p0, p1, Landroid/graphics/Rect;->top:I

    const/4 p1, 0x1

    aput p0, p2, p1

    return-void
.end method

.method public bridge synthetic getLocationOnScreen(Ljava/lang/Object;[I)V
    .locals 0

    .line 594
    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMotionHelper$2;->getLocationOnScreen(Landroid/graphics/Rect;[I)V

    return-void
.end method

.method public getWidth(Landroid/graphics/Rect;)F
    .locals 0

    .line 597
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public bridge synthetic getWidth(Ljava/lang/Object;)F
    .locals 0

    .line 594
    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper$2;->getWidth(Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method
