.class public Lcom/google/android/material/edgeeffect/FilmstripView;
.super Landroid/view/ViewGroup;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;,
        Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;,
        Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;,
        Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;,
        Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

.field private m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

.field private m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

.field private m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

.field private m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

.field private m_DisplayRotationHint:Lcom/google/android/material/edgeeffect/Rotation;

.field private m_FastLayoutCounter:I

.field private m_FreeItemInfos:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

.field private final m_GestureDetector:Landroid/view/GestureDetector;

.field private final m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private m_Handler:Landroid/os/Handler;

.field private m_HasMultiPointers:Z

.field private m_Height:I

.field private m_IsFlying:Z

.field private m_IsOverScrolled:Z

.field private m_IsScrollLeftRight:Ljava/lang/Boolean;

.field private m_IsScrolling:Z

.field private m_ItemMargin:I

.field private m_LastPosition:I

.field private m_OnTouchListener:Landroid/view/View$OnTouchListener;

.field private m_ReportedCurrentPosition:I

.field private m_ScreenOrientation:I

.field private m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

.field private m_ScrollMode:I

.field private m_ScrollToItemStartTime:J

.field private m_TotalScrollDistanceX:F

.field private m_Width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/material/edgeeffect/FilmstripView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/edgeeffect/FilmstripView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/google/android/material/edgeeffect/FilmstripView$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/edgeeffect/FilmstripView$1;-><init>(Lcom/google/android/material/edgeeffect/FilmstripView;)V

    iput-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    const/16 p2, 0x32

    iput p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ReportedCurrentPosition:I

    iput p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScreenOrientation:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollMode:I

    sget-object p2, Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;->LEFT:Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->setupHandler()V

    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_GestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/edgeeffect/FilmstripView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/edgeeffect/FilmstripView;->onGestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/edgeeffect/FilmstripView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/edgeeffect/FilmstripView;->onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/edgeeffect/FilmstripView;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/edgeeffect/FilmstripView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->onGestureDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private calculateItemDefaultLeft(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    div-int/lit8 p0, p0, 0x2

    if-eqz p2, :cond_0

    iget p1, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->targetWidth:I

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    :goto_0
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    return p0
.end method

.method private clearItems()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-direct {p0, v0}, Lcom/google/android/material/edgeeffect/FilmstripView;->releaseItem(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    return-void
.end method

.method private fastLayout()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :goto_0
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    iget v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Height:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->layout(IIZZ)V

    iget-object v0, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findItemInfo(FF)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Height:I

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    iget p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :goto_0
    if-eqz p0, :cond_1

    iget v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    sub-float v1, v0, p2

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float/2addr v0, p2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private findItemInfo(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/edgeeffect/FilmstripView;->findItemInfo(IZ)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method private findItemInfo(IZ)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :goto_0
    if-eqz p0, :cond_2

    iget v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private fly(FJ)V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsFlying:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long p2, v0, p2

    long-to-float p2, p2

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    mul-float p3, p1, p2

    const/high16 v2, -0x3a060000    # -8000.0f

    mul-float/2addr v2, p2

    mul-float/2addr p2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr p2, v3

    add-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollBy(F)F

    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    if-lez p3, :cond_1

    add-float/2addr p1, v2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    :cond_1
    sub-float/2addr p1, v2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItem()I

    move-result p3

    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->getCount()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v4, v4, v5

    const/4 v5, 0x1

    if-lez v4, :cond_5

    cmpl-float v4, p1, p2

    if-lez v4, :cond_3

    if-lez p3, :cond_5

    :cond_3
    cmpg-float p2, p1, p2

    if-gez p2, :cond_4

    sub-int/2addr v2, v5

    if-lt p3, v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 p2, 0x2711

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p3, v5

    invoke-static {p0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0xa

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    :cond_5
    :goto_2
    iput-boolean v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsFlying:Z

    if-ltz p3, :cond_6

    invoke-direct {p0, p3, v5}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollToItem(IZ)V

    :cond_6
    :goto_3
    return-void
.end method

.method private getCurrentItemInfo()Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;
    .locals 6

    iget v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    const/4 v3, 0x0

    :goto_0
    if-eqz p0, :cond_2

    iget v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    if-eqz v3, :cond_0

    cmpl-float v5, v0, v4

    if-lez v5, :cond_1

    :cond_0
    move-object v3, p0

    move v0, v4

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x271a

    if-eq v0, v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollToItem(IZ)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/edgeeffect/FilmstripView;->fly(FJ)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-direct {p0, p1, v2}, Lcom/google/android/material/edgeeffect/FilmstripView;->updateItemsLayout(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/google/android/material/edgeeffect/FilmstripView;->updateItemsLayout(IZ)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/material/edgeeffect/FilmstripView;->updateItemsLayout(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->fastLayout()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private obtainItemInfo(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FreeItemInfos:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iput-object v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FreeItemInfos:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-virtual {v0}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->remove()V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->isRemoving:Z

    iget-object p0, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->container:Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;-><init>(Lcom/google/android/material/edgeeffect/FilmstripView$1;)V

    new-instance v1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;-><init>(Landroid/content/Context;Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    iput-object v1, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->container:Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    :goto_0
    iput p1, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    return-object v0
.end method

.method private onGestureDown(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->stopAutoScroll()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_TotalScrollDistanceX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->findItemInfo(FF)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_LastPosition:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    return-void
.end method

.method private onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 5

    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_HasMultiPointers:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, p2, :cond_9

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_DisplayRotationHint:Lcom/google/android/material/edgeeffect/Rotation;

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScreenOrientation:I

    const/16 p2, 0x10e

    const/16 v2, 0xb4

    const/16 v3, 0x5a

    if-gez p1, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    if-eq p1, v1, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    iput v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScreenOrientation:I

    goto :goto_1

    :cond_2
    iput v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScreenOrientation:I

    goto :goto_1

    :cond_3
    iput v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScreenOrientation:I

    goto :goto_1

    :cond_4
    iput p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScreenOrientation:I

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_DisplayRotationHint:Lcom/google/android/material/edgeeffect/Rotation;

    invoke-virtual {p1}, Lcom/google/android/material/edgeeffect/Rotation;->getDeviceOrientation()I

    move-result p1

    iget v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScreenOrientation:I

    sub-int/2addr p1, v4

    const/16 v4, -0x10e

    if-eq p1, v4, :cond_8

    const/16 v4, -0xb4

    if-eq p1, v4, :cond_7

    const/16 v4, -0x5a

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_7

    if-eq p1, p2, :cond_6

    goto :goto_2

    :cond_6
    move p3, p4

    goto :goto_2

    :cond_7
    neg-float p3, p3

    goto :goto_2

    :cond_8
    neg-float p3, p4

    :cond_9
    :goto_2
    iget p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollMode:I

    const/4 p2, 0x0

    if-eqz p1, :cond_e

    if-eq p1, v1, :cond_a

    goto/16 :goto_6

    :cond_a
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    if-nez p1, :cond_b

    goto/16 :goto_6

    :cond_b
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-eqz p1, :cond_c

    iget p1, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    if-nez p1, :cond_c

    cmpl-float p1, p3, p2

    if-lez p1, :cond_c

    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItemInfo()Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p1

    iget-object p4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-ne p1, p4, :cond_c

    goto :goto_6

    :cond_c
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-eqz p1, :cond_d

    iget p1, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    iget-object p4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    invoke-virtual {p4}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->getCount()I

    move-result p4

    if-lt p1, p4, :cond_d

    cmpg-float p1, p3, p2

    if-gez p1, :cond_d

    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItemInfo()Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-ne p1, p2, :cond_d

    goto :goto_6

    :cond_d
    invoke-direct {p0, p3}, Lcom/google/android/material/edgeeffect/FilmstripView;->startFly(F)V

    goto :goto_6

    :cond_e
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->getCount()I

    move-result v0

    :cond_f
    if-gtz v0, :cond_10

    goto :goto_6

    :cond_10
    iget p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_LastPosition:I

    if-ltz p1, :cond_11

    goto :goto_3

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItem()I

    move-result p1

    :goto_3
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const/high16 v2, 0x43fa0000    # 500.0f

    cmpl-float p4, p4, v2

    if-ltz p4, :cond_14

    cmpl-float p2, p3, p2

    if-lez p2, :cond_12

    sget-object p3, Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;->RIGHT:Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

    goto :goto_4

    :cond_12
    sget-object p3, Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;->LEFT:Lcom/google/android/material/edgeeffect/FilmstripView$SWIPE_DIRECTION;

    :goto_4
    if-lez p2, :cond_13

    const/4 p2, -0x1

    goto :goto_5

    :cond_13
    move p2, v1

    :goto_5
    add-int/2addr p1, p2

    if-ltz p1, :cond_14

    if-ge p1, v0, :cond_14

    invoke-direct {p0, p1, v1}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollToItem(IZ)V

    :cond_14
    :goto_6
    return-void
.end method

.method private onGestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_HasMultiPointers:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollMode:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    if-nez p1, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_TotalScrollDistanceX:F

    add-float/2addr p1, p3

    iput p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_TotalScrollDistanceX:F

    iget-boolean p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrolling:Z

    if-nez p2, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42480000    # 50.0f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrolling:Z

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

    if-eqz p2, :cond_5

    iget-boolean p4, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-nez p4, :cond_5

    iput-boolean p1, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    invoke-virtual {p2}, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->onScrollStarted()V

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onGestureScroll "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FilmStrip"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    neg-float p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollBy(F)F

    return-void
.end method

.method private onGestureUp(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrolling:Z

    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsFlying:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v0, 0x2712

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItem()I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollToItem(IZ)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->resetTouch()V

    return-void
.end method

.method private prepareItem(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->obtainItemInfo(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    iget v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    invoke-virtual {v1, p1, v2}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->targetWidth:I

    iput v1, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    iget v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FastLayoutCounter:I

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    iget-object v2, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->container:Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->prepareItemView(ILandroid/view/ViewGroup;)V

    iget p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FastLayoutCounter:I

    iget-object p1, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->container:Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->container:Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->container:Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-object v0
.end method

.method private pullGlows(F)V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    const/4 v3, 0x1

    const/16 v4, 0x15

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->ensureLeftGlow()V

    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    if-lt v0, v4, :cond_2

    neg-float v4, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v1, v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_0

    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->ensureRightGlow()V

    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    if-lt v0, v4, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    if-nez v3, :cond_3

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_4

    :cond_3
    const/16 p1, 0x10

    if-lt v0, p1, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_4
    return-void
.end method

.method private refreshItems(I)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-gez p1, :cond_1

    move p1, v1

    :cond_1
    if-lt p1, v0, :cond_2

    add-int/lit8 p1, v0, -0x1

    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->clearItems()V

    if-lez v0, :cond_7

    if-gez p1, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->prepareItem(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/google/android/material/edgeeffect/FilmstripView;->calculateItemDefaultLeft(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->moveTo(F)V

    iput-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iput-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    add-int/lit8 v3, p1, -0x1

    iget v4, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    :goto_1
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    if-ltz v3, :cond_4

    invoke-direct {p0, v3}, Lcom/google/android/material/edgeeffect/FilmstripView;->prepareItem(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object v5

    iget v6, v5, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iget v6, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-virtual {v5, v4}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->moveTo(F)V

    iget-object v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-virtual {v5, v4}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->addBefore(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    iput-object v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v4, v5, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, p1, 0x1

    iget v4, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v2, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->targetWidth:I

    int-to-float v2, v2

    add-float/2addr v4, v2

    :goto_2
    iget v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gez v2, :cond_5

    if-ge v3, v0, :cond_5

    invoke-direct {p0, v3}, Lcom/google/android/material/edgeeffect/FilmstripView;->prepareItem(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object v2

    iget v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->moveTo(F)V

    iget-object v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-virtual {v2, v4}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->addAfter(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    iput-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v4, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v2, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->targetWidth:I

    int-to-float v2, v2

    add-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->reportCurrentPosition(I)V

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->onItemSelected(I)V

    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrolling:Z

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz p1, :cond_6

    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->onScrollStopped()V

    :cond_6
    return-void

    :cond_7
    :goto_3
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->reportCurrentPosition(I)V

    return-void
.end method

.method private releaseGlows()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v1, v0

    :cond_1
    if-eqz v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private releaseItem(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FastLayoutCounter:I

    iget-object v0, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->container:Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    iget-object v2, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->container:Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->releaseItemView(ILandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/material/edgeeffect/FilmstripView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseItem() - No adapter to release item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FastLayoutCounter:I

    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->releaseItemInfo(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    return-void
.end method

.method private releaseItemInfo(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->container:Lcom/google/android/material/edgeeffect/FilmstripView$ItemContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p1}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->remove()V

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FreeItemInfos:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-virtual {p1, v0}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->addBefore(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FreeItemInfos:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    return-void
.end method

.method private reportCurrentPosition(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ReportedCurrentPosition:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ReportedCurrentPosition:I

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->onCurrentItemChanged(II)V

    :cond_0
    return-void
.end method

.method private resetTouch()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->releaseGlows()V

    return-void
.end method

.method private scrollBy(F)F
    .locals 11

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-gtz v0, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-nez v3, :cond_2

    return v2

    :cond_2
    cmpl-float v4, p1, v2

    const-string v5, " diff "

    const-string v6, " offset "

    const-string v7, "FilmStrip"

    const/4 v8, 0x1

    if-lez v4, :cond_8

    iget v4, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    if-nez v4, :cond_6

    iget-boolean v4, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v4, :cond_6

    invoke-direct {p0, v3, v1}, Lcom/google/android/material/edgeeffect/FilmstripView;->calculateItemDefaultLeft(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v3, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    add-float/2addr v3, p1

    sub-float/2addr v0, v3

    cmpg-float v3, v0, v2

    if-gez v3, :cond_5

    iget-boolean v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    if-nez v3, :cond_3

    iput-boolean v8, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    move v1, v8

    :cond_3
    move v3, v1

    iget-boolean v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scrollBy m_IsOverScrolled "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/google/android/material/edgeeffect/FilmstripView;->pullGlows(F)V

    :cond_4
    add-float/2addr p1, v0

    goto/16 :goto_4

    :cond_5
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    goto/16 :goto_3

    :cond_6
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v3, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    sub-int/2addr v0, v8

    if-ne v3, v0, :cond_e

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/edgeeffect/FilmstripView;->calculateItemDefaultLeft(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v3, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    add-float/2addr v3, p1

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-nez v3, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    instance-of v4, v3, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-eqz v4, :cond_7

    check-cast v3, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    iput-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    :cond_7
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-eqz v3, :cond_e

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_e

    invoke-virtual {v3}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->onRecyclerViewScrolled()V

    goto/16 :goto_3

    :cond_8
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v4, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    sub-int/2addr v0, v8

    if-ne v4, v0, :cond_c

    iget-boolean v0, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v0, :cond_c

    invoke-direct {p0, v3, v1}, Lcom/google/android/material/edgeeffect/FilmstripView;->calculateItemDefaultLeft(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v4, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget v3, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v3, p1

    sub-float/2addr v0, v3

    cmpl-float v3, v0, v2

    if-lez v3, :cond_b

    iget-boolean v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    if-nez v3, :cond_9

    iput-boolean v8, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    move v3, v8

    goto :goto_1

    :cond_9
    move v3, v1

    :goto_1
    iget-boolean v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scrollBy end m_IsOverScrolled "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/google/android/material/edgeeffect/FilmstripView;->pullGlows(F)V

    :cond_a
    add-float/2addr p1, v0

    goto :goto_2

    :cond_b
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsOverScrolled:Z

    move v3, v1

    :goto_2
    move v10, v3

    move v3, v1

    move v1, v10

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v3, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    if-nez v3, :cond_e

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/edgeeffect/FilmstripView;->calculateItemDefaultLeft(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v4, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget v3, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v3, p1

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-nez v3, :cond_d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    instance-of v4, v3, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-eqz v4, :cond_d

    check-cast v3, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    iput-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    :cond_d
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-eqz v3, :cond_e

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_e

    invoke-virtual {v3}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->onRecyclerViewScrolled()V

    :cond_e
    :goto_3
    move v3, v1

    :goto_4
    cmpl-float v0, p1, v2

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :goto_5
    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->moveBy(F)V

    iget-object v0, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_5

    :cond_f
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-direct {p0, v0, v8}, Lcom/google/android/material/edgeeffect/FilmstripView;->updateItemsLayout(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)V

    :cond_10
    if-eqz v1, :cond_11

    sget-object v0, Lcom/google/android/material/edgeeffect/FilmstripView;->TAG:Ljava/lang/String;

    const-string v1, "scrollBy() - Over-scroll"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

    if-eqz p0, :cond_11

    invoke-virtual {p0, v3}, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->onOverScroll(Z)V

    :cond_11
    return p1
.end method

.method private scrollToItem(IZ)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scrollToItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilmStrip"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->stopFly()V

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->findItemInfo(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-direct {p0, v0, v3}, Lcom/google/android/material/edgeeffect/FilmstripView;->calculateItemDefaultLeft(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    sub-float/2addr v4, v5

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    const-wide/16 v5, 0x0

    if-eqz p2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollToItemStartTime:J

    move-wide v7, v5

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollToItemStartTime:J

    sub-long/2addr v7, v9

    :goto_1
    const-wide/16 v9, 0x258

    if-eqz v0, :cond_8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_7

    cmp-long p2, v7, v9

    if-gez p2, :cond_7

    float-to-double v7, v0

    const-wide/high16 v9, 0x400c000000000000L    # 3.5

    cmpl-double p2, v7, v9

    const/high16 v0, 0x40a00000    # 5.0f

    if-lez p2, :cond_3

    const/high16 p2, 0x40800000    # 4.0f

    goto :goto_2

    :cond_3
    const-wide/high16 v9, 0x4004000000000000L    # 2.5

    cmpl-double p2, v7, v9

    if-lez p2, :cond_4

    move p2, v0

    goto :goto_2

    :cond_4
    const/high16 p2, 0x40d00000    # 6.5f

    :goto_2
    div-float p2, v4, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v0

    if-gtz v7, :cond_6

    cmpl-float p2, p2, v2

    if-lez p2, :cond_5

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_3

    :cond_5
    const/high16 p2, -0x3f600000    # -5.0f

    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    :cond_6
    :goto_3
    invoke-direct {p0, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollBy(F)F

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {p0, v1, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    :cond_7
    invoke-direct {p0, v4}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollBy(F)F

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

    if-eqz p2, :cond_e

    invoke-virtual {p2, p1}, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->onItemSelected(I)V

    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrolling:Z

    if-nez p1, :cond_e

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ScrollListener:Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;

    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz p1, :cond_e

    iput-boolean v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView$ScrollListener;->onScrollStopped()V

    goto :goto_5

    :cond_8
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItemInfo()Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p2

    if-eqz p2, :cond_d

    cmp-long v0, v7, v9

    if-gez v0, :cond_d

    iget v0, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    sub-int v2, p1, v0

    iget-boolean v4, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->isRemoving:Z

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-eqz v4, :cond_a

    if-gt v0, p1, :cond_9

    move v0, v7

    goto :goto_4

    :cond_9
    move v0, v8

    :goto_4
    add-int/2addr v2, v0

    :cond_a
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v4, 0x2

    if-le v0, v4, :cond_b

    iget p2, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    div-int/2addr v2, v4

    add-int/2addr p2, v2

    invoke-direct {p0, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->refreshItems(I)V

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {p0, v1, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    :cond_b
    iget p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    div-int/2addr p2, v4

    if-ltz v2, :cond_c

    move v7, v8

    :cond_c
    mul-int/2addr p2, v7

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollBy(F)F

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {p0, v1, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    :cond_d
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->refreshItems(I)V

    :cond_e
    :goto_5
    return-void
.end method

.method private setupHandler()V
    .locals 1

    new-instance v0, Lcom/google/android/material/edgeeffect/FilmstripView$3;

    invoke-direct {v0, p0}, Lcom/google/android/material/edgeeffect/FilmstripView$3;-><init>(Lcom/google/android/material/edgeeffect/FilmstripView;)V

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    return-void
.end method

.method private startFly(F)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->stopFly()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsFlying:Z

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v0

    const/16 p1, 0x2711

    invoke-static {p0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private stopAutoScroll()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->stopFly()V

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private stopFly()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsFlying:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsFlying:Z

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private updateItemsLayout(IZ)V
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->findItemInfo(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItemInfo()Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItemInfo()Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->updateItemsLayout(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)V

    return-void
.end method

.method private updateItemsLayout(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;Z)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-gtz v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :goto_1
    const/4 v3, 0x1

    if-eqz v2, :cond_9

    iget-object v4, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v5, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    iget v6, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->targetWidth:I

    if-eq v5, v6, :cond_8

    sub-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v7, 0x5

    if-le v5, v7, :cond_4

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    div-int/lit8 v6, v6, 0x3

    iget v1, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    add-int/2addr v1, v6

    iput v1, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    move v1, v3

    goto :goto_3

    :cond_4
    :goto_2
    iget v5, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->targetWidth:I

    iput v5, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    iget v7, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    neg-int v7, v7

    if-gt v5, v7, :cond_7

    iget-boolean v5, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-ne v5, v2, :cond_5

    iget-object v5, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iput-object v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :cond_5
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-ne v5, v2, :cond_6

    iget-object v5, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->previous:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iput-object v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :cond_6
    invoke-direct {p0, v2}, Lcom/google/android/material/edgeeffect/FilmstripView;->releaseItem(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    :cond_7
    :goto_3
    iget v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    iget v7, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Height:I

    invoke-virtual {v2, v5, v7, v3, v3}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->layout(IIZZ)V

    if-ne v2, p1, :cond_8

    div-int/lit8 v6, v6, 0x2

    neg-int v3, v6

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->moveBy(F)V

    :cond_8
    move-object v2, v4

    goto :goto_1

    :cond_9
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-eqz p2, :cond_16

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-nez p2, :cond_a

    goto/16 :goto_c

    :cond_a
    if-eqz p1, :cond_c

    iget-object p2, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->previous:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v2, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    :goto_4
    if-eqz p2, :cond_b

    iget v4, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    iget v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {p2, v2}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->moveTo(F)V

    iget-object p2, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->previous:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_4

    :cond_b
    iget-object p2, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v2, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v4, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    :goto_5
    if-eqz p2, :cond_c

    invoke-virtual {p2, v2}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->moveTo(F)V

    iget v4, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    iget v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget-object p2, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_5

    :cond_c
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget p2, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    sub-int/2addr p2, v3

    :goto_6
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v2, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_d

    if-ltz p2, :cond_d

    invoke-direct {p0, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->prepareItem(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v4, v4, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v5, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->moveTo(F)V

    iget-object v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-virtual {v2, v4}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->addBefore(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    iput-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    :cond_d
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget-boolean v2, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->isRemoving:Z

    iget p2, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    add-int/2addr p2, v3

    :goto_7
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v3, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v2, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    int-to-float v2, v2

    add-float/2addr v3, v2

    :goto_8
    iget v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    iget v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_f

    if-ge p2, v0, :cond_f

    invoke-direct {p0, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->prepareItem(I)Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v4, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v3, v3, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    iget v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ItemMargin:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    invoke-virtual {v2, v4}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->moveTo(F)V

    iget-object v3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-virtual {v2, v3}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->addAfter(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    iput-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v3, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v2, v2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    int-to-float v2, v2

    add-float/2addr v3, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v0, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-eq p2, v0, :cond_11

    iget-object v0, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->previous:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-direct {p0, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->releaseItem(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-ne p2, v2, :cond_10

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :cond_10
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_9

    :cond_11
    :goto_a
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget v0, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->left:F

    iget v2, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->width:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoTail:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-eq v0, p2, :cond_13

    iget-object v0, p2, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    invoke-direct {p0, p2}, Lcom/google/android/material/edgeeffect/FilmstripView;->releaseItem(Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;)V

    iget-object p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    if-ne p2, v2, :cond_12

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_AnchorItemInfo:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :cond_12
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_a

    :cond_13
    if-eqz v1, :cond_15

    const-wide/16 v0, 0x0

    const/16 p2, 0x2710

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    :cond_14
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {v2, p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_15
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->reportCurrentPosition(I)V

    return-void

    :cond_16
    :goto_c
    sget-object p0, Lcom/google/android/material/edgeeffect/FilmstripView;->TAG:Ljava/lang/String;

    const-string p1, "updateItemsLayout() - No active items"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateItemsLayout(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->updateItemsLayout(IZ)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_HasMultiPointers:Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_HasMultiPointers:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/edgeeffect/FilmstripView;->scrollToItem(IZ)V

    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_HasMultiPointers:Z

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrolling:Z

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_GestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v1, :cond_2

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->onGestureUp(Landroid/view/MotionEvent;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouchEvent "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " m_IsScrolling "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrolling:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isFirstScrolling "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "FilmStrip"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_IsScrolling:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/material/edgeeffect/FilmstripView;->TAG:Ljava/lang/String;

    const-string v2, "dispatchTouchEvent() - Dispatch ACTION_CANCEL to child"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_5

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_5
    return v1
.end method

.method ensureLeftGlow()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "FilmstripView"

    const-string v0, "setEdgeEffectFactory first, please!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mLeftGlow:Landroid/widget/EdgeEffect;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method ensureRightGlow()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "FilmstripView"

    const-string v0, "setEdgeEffectFactory first, please!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mRightGlow:Landroid/widget/EdgeEffect;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCurrentItem()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Adapter:Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/edgeeffect/FilmstripView$Adapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-gtz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItemInfo()Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    iget p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInterceptTouchEvent  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "filmstripView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_ActiveItemInfoHead:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    :goto_0
    if-eqz p1, :cond_0

    iget p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    iget p3, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Height:I

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p3, p4, p4}, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->layout(IIZZ)V

    iget-object p1, p1, Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;->next:Lcom/google/android/material/edgeeffect/FilmstripView$ItemInfo;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/16 v1, 0x7fff

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/FilmstripView;->getCurrentItem()I

    move-result p3

    iput p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Width:I

    iput p2, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Height:I

    invoke-direct {p0, p3}, Lcom/google/android/material/edgeeffect/FilmstripView;->refreshItems(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "filmstripView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/google/android/material/edgeeffect/FilmstripView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public requestLayout()V
    .locals 2

    iget v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_FastLayoutCounter:I

    const/16 v1, 0x271a

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_Handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method
