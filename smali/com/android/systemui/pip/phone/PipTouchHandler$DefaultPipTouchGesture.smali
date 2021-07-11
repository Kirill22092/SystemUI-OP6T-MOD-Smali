.class Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;
.super Lcom/android/systemui/pip/phone/PipTouchGesture;
.source "PipTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultPipTouchGesture"
.end annotation


# instance fields
.field private final mDelta:Landroid/graphics/PointF;

.field private mShouldHideMenuAfterFling:Z

.field private final mStartPosition:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;


# direct methods
.method private constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchGesture;-><init>()V

    .line 893
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mStartPosition:Landroid/graphics/Point;

    .line 894
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mDelta:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;Lcom/android/systemui/pip/phone/PipTouchHandler$1;)V
    .locals 0

    .line 892
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    return-void
.end method

.method private flingEndAction()V
    .locals 1

    .line 1009
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mShouldHideMenuAfterFling:Z

    if-eqz v0, :cond_0

    .line 1012
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenu()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$c8YgJLEypMoVYe3YjylatK650zk(Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->flingEndAction()V

    return-void
.end method

.method static synthetic lambda$onUp$0(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0

    .line 984
    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2100(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    return-void
.end method


# virtual methods
.method public onDown(Lcom/android/systemui/pip/phone/PipTouchState;)V
    .locals 3

    .line 899
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getPossiblyAnimatingBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 904
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mDelta:Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 905
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mStartPosition:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 906
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getDownTouchPosition()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-static {v0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1302(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    .line 907
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->setSpringingToTouch(Z)V

    .line 911
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1500(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 912
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->pokeMenu()V

    :cond_2
    return-void
.end method

.method public onMove(Lcom/android/systemui/pip/phone/PipTouchState;)Z
    .locals 8

    .line 918
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 922
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->startedDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1602(Lcom/android/systemui/pip/phone/PipTouchHandler;F)F

    .line 925
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 926
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 927
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 928
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1000(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    .line 933
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 935
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getLastTouchDelta()Landroid/graphics/PointF;

    move-result-object v0

    .line 936
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mStartPosition:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mDelta:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    .line 937
    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v6, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v6

    .line 938
    iget v7, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v3

    .line 939
    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v2

    sub-float v3, v7, v3

    add-float/2addr v5, v3

    .line 942
    iput v5, v4, Landroid/graphics/PointF;->x:F

    sub-float v2, v0, v2

    add-float/2addr v6, v2

    .line 943
    iput v6, v4, Landroid/graphics/PointF;->y:F

    .line 945
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2000(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getPossiblyAnimatingBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 946
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2000(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v2

    float-to-int v3, v7

    float-to-int v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 947
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$2000(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;Z)V

    .line 949
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getLastTouchPosition()Landroid/graphics/PointF;

    move-result-object p1

    .line 950
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 952
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    move v1, v3

    :cond_2
    invoke-static {p0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1302(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    :cond_3
    return v3

    :cond_4
    return v1
.end method

.method public onUp(Lcom/android/systemui/pip/phone/PipTouchState;)Z
    .locals 9

    .line 961
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1100(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    .line 965
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 969
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getVelocity()Landroid/graphics/PointF;

    move-result-object v0

    .line 971
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isDragging()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 972
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1500(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 975
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v3

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1500(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result v4

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x1

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 976
    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v7

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 977
    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v8

    .line 975
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;ZZZ)V

    .line 979
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1500(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result p1

    if-nez p1, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->mShouldHideMenuAfterFling:Z

    .line 982
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->reset()V

    .line 983
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    new-instance v4, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$DefaultPipTouchGesture$K8tFYcJKtB3Bkuu5piDq-0-1YhA;

    invoke-direct {v4, v3}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$DefaultPipTouchGesture$K8tFYcJKtB3Bkuu5piDq-0-1YhA;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    new-instance v3, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$DefaultPipTouchGesture$c8YgJLEypMoVYe3YjylatK650zk;

    invoke-direct {v3, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$DefaultPipTouchGesture$c8YgJLEypMoVYe3YjylatK650zk;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;)V

    invoke-virtual {p1, v1, v0, v4, v3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->flingToSnapTarget(FFLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 986
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isDoubleTap()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 989
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {p1, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setTouchEnabled(Z)V

    .line 990
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPipToFullscreen()V

    goto :goto_0

    .line 991
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1500(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    .line 992
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isWaitingForDoubleTap()Z

    move-result p1

    if-nez p1, :cond_6

    .line 995
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v3

    const/4 v4, 0x2

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x1

    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 996
    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v7

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 997
    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v8

    .line 995
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;ZZZ)V

    goto :goto_0

    .line 1002
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$DefaultPipTouchGesture;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipTouchState;->scheduleDoubleTapTimeoutCallback()V

    :cond_7
    :goto_0
    return v2
.end method
