.class Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;
.super Ljava/lang/Object;
.source "OpUnlockDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnlockDrawingHelper"
.end annotation


# instance fields
.field private mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

.field private mClockTime:J

.field private mContext:Landroid/content/Context;

.field private mDeltaTime:J

.field private mHeightOfOneSecond:F

.field private mMinGap:I

.field private mRange:Landroid/graphics/Rect;

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUnlockCount:I

.field private mUnlockCounter:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/views/parsons/OpParsonsBar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mRange:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mRecords:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    return-void
.end method

.method private getBeginTime()J
    .locals 4

    iget-wide v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mClockTime:J

    iget-wide v2, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mDeltaTime:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private getRelativeY(JZ)F
    .locals 5

    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mRange:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    const/4 v4, 0x0

    if-nez v3, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v4, v0

    :goto_0
    return v4

    :cond_1
    iget p3, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mHeightOfOneSecond:F

    cmpl-float p3, p3, v4

    if-nez p3, :cond_2

    return v4

    :cond_2
    iget-wide v3, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mClockTime:J

    cmp-long p3, v3, p1

    if-lez p3, :cond_3

    sub-long v1, v3, p1

    :cond_3
    int-to-float p1, v0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p2

    long-to-float p2, p2

    iget p0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mHeightOfOneSecond:F

    mul-float/2addr p2, p0

    sub-float/2addr p1, p2

    return p1
.end method

.method private getRelativeYEnd(J)F
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->getRelativeY(JZ)F

    move-result p0

    return p0
.end method

.method private getRelativeYStart(J)F
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->getRelativeY(JZ)F

    move-result p0

    return p0
.end method

.method private synthetic lambda$requestData$0()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;

    invoke-virtual {v4}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->clone()Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    iput v3, v0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mUnlockCount:I

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->getBeginTime()J

    move-result-wide v4

    :goto_1
    if-ge v3, v2, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;

    invoke-virtual {v6}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->getBeginTime()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->getEndTime()J

    move-result-wide v9

    cmp-long v11, v9, v4

    if-gtz v11, :cond_1

    sget-boolean v7, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "draw: filter out too old record. minTime= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", record= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UnlockDrawingHelper"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-direct {v0, v7, v8}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->getRelativeYStart(J)F

    move-result v7

    invoke-direct {v0, v9, v10}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->getRelativeYEnd(J)F

    move-result v8

    cmpg-float v9, v8, v7

    if-gez v9, :cond_2

    goto :goto_2

    :cond_2
    iget v9, v0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mMinGap:I

    if-eqz v9, :cond_3

    sub-float v10, v8, v7

    int-to-float v11, v9

    cmpg-float v11, v10, v11

    if-gez v11, :cond_3

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    int-to-float v7, v9

    sub-float v7, v8, v7

    :cond_3
    iget-object v9, v0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mRange:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->left:I

    int-to-float v12, v10

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v14, v9

    move-object/from16 v11, p1

    move v13, v7

    move v15, v8

    move-object/from16 v16, p2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v9, v0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mUnlockCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mUnlockCount:I

    sget-boolean v9, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "draw: i= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", record= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", top= "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", bottom= "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UnlockDrawingHelper"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getUnlockCount()I
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mUnlockCount:I

    return p0
.end method

.method public synthetic lambda$requestData$0$OpUnlockDataHelper$UnlockDrawingHelper()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->lambda$requestData$0()V

    return-void
.end method

.method public onTimeChanged(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mUnlockCounter:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->getRelativeTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mClockTime:J

    iput-wide p3, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mDeltaTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimeChanged: clockTime= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", relativeTime= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mClockTime:J

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", deltaTime= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UnlockDrawingHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public requestData()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mUnlockCounter:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->getRelativeTime(J)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mDeltaTime:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->retrieveRecords(JJ)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;

    iget-object v3, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    const-string v0, "UnlockDrawingHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestData: size= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    new-instance v1, Lcom/oneplus/aod/views/parsons/-$$Lambda$OpUnlockDataHelper$UnlockDrawingHelper$RfyRvgW1lWsiyW5UPUJhFwlOGgg;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/views/parsons/-$$Lambda$OpUnlockDataHelper$UnlockDrawingHelper$RfyRvgW1lWsiyW5UPUJhFwlOGgg;-><init>(Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setKeyguardUnlockCounter(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mUnlockCounter:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    return-void
.end method

.method public setRange(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mRange:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mBar:Lcom/oneplus/aod/views/parsons/OpParsonsBar;

    invoke-virtual {v1}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->getOverlayView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x47a8c000    # 86400.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mHeightOfOneSecond:F

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRange: left= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", top= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", right= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bottom= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", heightOfOneSecond= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mHeightOfOneSecond:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UnlockDrawingHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public updateResources()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$dimen;->op_parsons_timeline_min_gap:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->mMinGap:I

    return-void
.end method
