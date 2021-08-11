.class public Lcom/google/android/material/edgeeffect/RotateRelativeLayout;
.super Lcom/google/android/material/edgeeffect/SpringRelativeLayout;
.source "RotateRelativeLayout.java"

# interfaces
.implements Lcom/google/android/material/edgeeffect/RotatableLayout;


# instance fields
.field private m_InvMatrix:Landroid/graphics/Matrix;

.field private m_NewRectF:Landroid/graphics/RectF;

.field private m_RotDiff:I

.field private m_RotMatrix:Landroid/graphics/Matrix;

.field private m_Rotation:Lcom/google/android/material/edgeeffect/Rotation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_RotMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_InvMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_NewRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private createRotatedMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    new-array v9, v2, [Landroid/view/MotionEvent$PointerProperties;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    new-array v10, v2, [Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x0

    move v15, v3

    move v3, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v3, v5, :cond_5

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v9, v3

    aget-object v5, v9, v3

    invoke-virtual {v1, v3, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v10, v3

    aget-object v5, v10, v3

    invoke-virtual {v1, v3, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    const/4 v5, 0x2

    new-array v6, v5, [F

    aget-object v7, v10, v3

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    aput v7, v6, v4

    aget-object v7, v10, v3

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v8, 0x1

    aput v7, v6, v8

    new-array v5, v5, [F

    iget-object v7, v0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_RotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    iget v6, v0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_RotDiff:I

    const/16 v7, 0x5a

    const/high16 v11, 0x3f800000    # 1.0f

    if-eq v6, v7, :cond_1

    const/16 v7, 0x10e

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    aget v6, v5, v8

    sub-float/2addr v6, v11

    aput v6, v5, v8

    goto :goto_1

    :cond_1
    aget v6, v5, v4

    sub-float/2addr v6, v11

    aput v6, v5, v4

    :goto_1
    aget v6, v5, v4

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    aput v7, v5, v4

    :cond_2
    aget v6, v5, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    aput v7, v5, v8

    :cond_3
    if-nez v3, :cond_4

    aget-object v2, v10, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v2, v10, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    aget v2, v5, v4

    aget v5, v5, v8

    move v15, v5

    goto :goto_2

    :cond_4
    aget-object v6, v10, v3

    aget v7, v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    sub-float/2addr v11, v2

    add-float/2addr v7, v11

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v6, v10, v3

    aget v5, v5, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    sub-float/2addr v7, v15

    add-float/2addr v5, v7

    iput v5, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v18

    move v1, v15

    move v15, v0

    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-object v0
.end method

.method private getActivityRotation()Lcom/google/android/material/edgeeffect/Rotation;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/material/edgeeffect/Rotation;->fromScreenOrientation(I)Lcom/google/android/material/edgeeffect/Rotation;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_Rotation:Lcom/google/android/material/edgeeffect/Rotation;

    return-object p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_InvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->createRotatedMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return p0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_NewRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_InvMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_NewRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_NewRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->invalidate(Landroid/graphics/Rect;)V

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p0

    return-object p0
.end method

.method protected onAnimationEnd()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAnimationEnd()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->getActivityRotation()Lcom/google/android/material/edgeeffect/Rotation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_Rotation:Lcom/google/android/material/edgeeffect/Rotation;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/edgeeffect/Rotation;->isLandscape()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_Rotation:Lcom/google/android/material/edgeeffect/Rotation;

    invoke-virtual {v1}, Lcom/google/android/material/edgeeffect/Rotation;->isLandscape()Z

    move-result v1

    if-eq v0, v1, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p5

    move v5, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->getActivityRotation()Lcom/google/android/material/edgeeffect/Rotation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_Rotation:Lcom/google/android/material/edgeeffect/Rotation;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/edgeeffect/Rotation;->isLandscape()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_Rotation:Lcom/google/android/material/edgeeffect/Rotation;

    invoke-virtual {v1}, Lcom/google/android/material/edgeeffect/Rotation;->isLandscape()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p2, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->rotateMeasurement()V

    return-void
.end method

.method protected rotateMeasurement()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->getActivityRotation()Lcom/google/android/material/edgeeffect/Rotation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_Rotation:Lcom/google/android/material/edgeeffect/Rotation;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/edgeeffect/Rotation;->isLandscape()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_Rotation:Lcom/google/android/material/edgeeffect/Rotation;

    invoke-virtual {v2}, Lcom/google/android/material/edgeeffect/Rotation;->isLandscape()Z

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_Rotation:Lcom/google/android/material/edgeeffect/Rotation;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/edgeeffect/Rotation;->getDeviceOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_Rotation:Lcom/google/android/material/edgeeffect/Rotation;

    invoke-virtual {v1}, Lcom/google/android/material/edgeeffect/Rotation;->getDeviceOrientation()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_RotDiff:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_RotDiff:I

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_RotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_RotDiff:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_4

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_3

    const/16 v2, 0x10e

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_RotMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_RotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_RotMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_RotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_RotMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_RotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_RotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_RotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_1
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_RotMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_InvMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/RotateRelativeLayout;->m_RotMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-void
.end method
