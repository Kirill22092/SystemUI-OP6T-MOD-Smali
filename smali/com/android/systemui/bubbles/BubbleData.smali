.class public Lcom/android/systemui/bubbles/BubbleData;
.super Ljava/lang/Object;
.source "BubbleData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleData$TimeSource;,
        Lcom/android/systemui/bubbles/BubbleData$Listener;,
        Lcom/android/systemui/bubbles/BubbleData$Update;
    }
.end annotation


# static fields
.field private static final BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelledListener:Lcom/android/systemui/bubbles/BubbleController$PendingIntentCanceledListener;

.field private final mContext:Landroid/content/Context;

.field private mExpanded:Z

.field private mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

.field private mLogger:Lcom/android/systemui/bubbles/BubbleLogger;

.field private final mMaxBubbles:I

.field private mMaxOverflowBubbles:I

.field private final mOverflowBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingBubbles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

.field private mShowingOverflow:Z

.field private mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

.field private mSuppressedGroupKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSuppressionListener:Lcom/android/systemui/bubbles/BubbleController$NotificationSuppressionChangedListener;

.field private mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    sget-object v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$vPZCImnk7rTPTX1c7nr0PX7FO2o;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$vPZCImnk7rTPTX1c7nr0PX7FO2o;

    .line 67
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/bubbles/BubbleData;->BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/android/systemui/bubbles/BubbleLoggerImpl;

    invoke-direct {v0}, Lcom/android/systemui/bubbles/BubbleLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mLogger:Lcom/android/systemui/bubbles/BubbleLogger;

    .line 133
    sget-object v0, Lcom/android/systemui/bubbles/-$$Lambda$0E0fwzH9SS6-aB9lL5npMzupI4Q;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$0E0fwzH9SS6-aB9lL5npMzupI4Q;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    .line 157
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mContext:Landroid/content/Context;

    .line 158
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    .line 159
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    .line 160
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    .line 161
    new-instance p1, Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/android/systemui/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/systemui/bubbles/BubbleData$1;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    .line 162
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$integer;->bubbles_max_rendered:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mMaxBubbles:I

    .line 163
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$integer;->bubbles_max_overflow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mMaxOverflowBubbles:I

    return-void
.end method

.method private dispatchPendingChanges()V
    .locals 4

    .line 580
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleData$Update;->anythingChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-interface {v0, v1}, Lcom/android/systemui/bubbles/BubbleData$Listener;->applyUpdate(Lcom/android/systemui/bubbles/BubbleData$Update;)V

    .line 583
    :cond_0
    new-instance v0, Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/systemui/bubbles/BubbleData$1;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    return-void
.end method

.method private doAdd(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 414
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-object p1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->addedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 416
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 417
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 418
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    :cond_1
    return-void
.end method

.method private doRemove(Ljava/lang/String;I)V
    .locals 5

    .line 468
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->indexForKey(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 473
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/16 v0, 0x9

    if-eq p2, v0, :cond_1

    const/4 v0, 0x7

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0xc

    if-eq p2, v0, :cond_1

    const/16 v0, 0xd

    if-ne p2, v0, :cond_3

    .line 481
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 486
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->stopInflation()V

    .line 488
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mLogger:Lcom/android/systemui/bubbles/BubbleLogger;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/bubbles/BubbleLogger;->logOverflowRemove(Lcom/android/systemui/bubbles/Bubble;I)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/bubbles/BubbleData$Update;->bubbleRemoved(Lcom/android/systemui/bubbles/Bubble;I)V

    .line 490
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-void

    .line 494
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    .line 495
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->stopInflation()V

    .line 496
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    .line 498
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    const/4 v1, 0x0

    .line 500
    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 502
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_6

    .line 504
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-boolean v2, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 506
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 507
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/bubbles/BubbleData$Update;->bubbleRemoved(Lcom/android/systemui/bubbles/Bubble;I)V

    .line 508
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_7

    .line 509
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v3, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->repackAll()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 512
    :cond_7
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/bubbles/BubbleData;->overflowBubble(ILcom/android/systemui/bubbles/Bubble;)V

    .line 515
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 517
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 518
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    .line 519
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 521
    :cond_8
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/bubbles/BubbleData;->maybeSendDeleteIntent(ILcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method

.method private doUpdate(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-object p1, v0, Lcom/android/systemui/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 439
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 441
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 442
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 443
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 444
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    :cond_1
    return-void
.end method

.method private indexForKey(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 703
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 704
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 705
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic lambda$removeBubblesWithInvalidShortcuts$0(Ljava/lang/String;Ljava/util/Set;Lcom/android/systemui/bubbles/Bubble;)Z
    .locals 3

    .line 376
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 377
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->hasMetadataShortcutId()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    .line 382
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->hasMetadataShortcutId()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method private synthetic lambda$removeBubblesWithInvalidShortcuts$1(ILcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    .line 390
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/bubbles/BubbleData;->dismissBubbleWithKey(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$removeBubblesWithPackageName$2(Ljava/lang/String;Lcom/android/systemui/bubbles/Bubble;)Z
    .locals 0

    .line 400
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$removeBubblesWithPackageName$3(ILcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    .line 403
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/bubbles/BubbleData;->dismissBubbleWithKey(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$trim$4(Lcom/android/systemui/bubbles/Bubble;)Z
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/Bubble;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$trim$5(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 1

    .line 430
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$vPZCImnk7rTPTX1c7nr0PX7FO2o(Lcom/android/systemui/bubbles/Bubble;)J
    .locals 2

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleData;->sortKey(Lcom/android/systemui/bubbles/Bubble;)J

    move-result-wide v0

    return-wide v0
.end method

.method private maybeSendDeleteIntent(ILcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    return-void

    .line 693
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 696
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 698
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to send delete intent for bubble with key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;)V"
        }
    .end annotation

    .line 451
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 452
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    .line 453
    invoke-interface {p2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 458
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    .line 459
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private repackAll()Z
    .locals 4

    .line 675
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 678
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 680
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/bubbles/BubbleData;->BUBBLES_BY_SORT_KEY_DESCENDING:Ljava/util/Comparator;

    .line 681
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 682
    new-instance v3, Lcom/android/systemui/bubbles/-$$Lambda$0tU2wih_2wwdAnw6hE7FT9YuCis;

    invoke-direct {v3, v0}, Lcom/android/systemui/bubbles/-$$Lambda$0tU2wih_2wwdAnw6hE7FT9YuCis;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 683
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 686
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 687
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private setExpandedInternal(Z)V
    .locals 4

    .line 622
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 626
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "Bubbles"

    if-eqz v1, :cond_1

    const-string p0, "Attempt to expand stack when empty!"

    .line 627
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 630
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-nez v1, :cond_2

    const-string p0, "Attempt to expand stack without selected bubble!"

    .line 631
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 634
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    invoke-interface {v2}, Lcom/android/systemui/bubbles/BubbleData$TimeSource;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/bubbles/Bubble;->markAsAccessedAt(J)V

    .line 635
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v2, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->repackAll()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    goto :goto_0

    .line 636
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 639
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iget-boolean v2, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->repackAll()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 642
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mShowingOverflow:Z

    if-eqz v1, :cond_4

    .line 644
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 646
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_5

    .line 648
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 650
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 651
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 652
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-boolean v0, v1, Lcom/android/systemui/bubbles/BubbleData$Update;->orderChanged:Z

    .line 656
    :cond_5
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    .line 657
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->expanded:Z

    .line 658
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->expandedChanged:Z

    return-void
.end method

.method private setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 2

    .line 595
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mShowingOverflow:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 600
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot select bubble which doesn\'t exist! ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") bubbles="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 605
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 606
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    invoke-interface {v0}, Lcom/android/systemui/bubbles/BubbleData$TimeSource;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/bubbles/Bubble;->markAsAccessedAt(J)V

    .line 608
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    .line 609
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/systemui/bubbles/Bubble;

    const/4 p1, 0x1

    .line 610
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData$Update;->selectionChanged:Z

    return-void
.end method

.method private static sortKey(Lcom/android/systemui/bubbles/Bubble;)J
    .locals 2

    .line 662
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getLastActivity()J

    move-result-wide v0

    return-wide v0
.end method

.method private trim()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mMaxBubbles:I

    if-le v0, v1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/bubbles/-$$Lambda$x9O8XLDgnXklCbpbq_xgakOvcgY;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$x9O8XLDgnXklCbpbq_xgakOvcgY;

    .line 426
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$fdQdGUozu7-xCn6j8BuMSn_4JPo;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$fdQdGUozu7-xCn6j8BuMSn_4JPo;-><init>(Lcom/android/systemui/bubbles/BubbleData;)V

    .line 428
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 429
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$8l9nPNZ1SFL5Nh0WWQItDAiTp7Y;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$8l9nPNZ1SFL5Nh0WWQItDAiTp7Y;-><init>(Lcom/android/systemui/bubbles/BubbleData;)V

    .line 430
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method addSummaryToSuppress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dismissAll(I)V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 555
    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    const/4 v1, 0x0

    .line 556
    invoke-direct {p0, v1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 557
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 558
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    goto :goto_0

    .line 560
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public dismissBubbleWithKey(Ljava/lang/String;I)V
    .locals 0

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "selected: "

    .line 794
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 795
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "expanded: "

    .line 798
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 799
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "count:    "

    .line 800
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 802
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 803
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/bubbles/Bubble;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "summaryKeys: "

    .line 805
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 806
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 807
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 808
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "   suppressing: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method getAnyBubbleWithkey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 731
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    if-nez v0, :cond_0

    .line 733
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/4 v0, 0x0

    .line 741
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 742
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 743
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getBubbleWithView(Landroid/view/View;)Lcom/android/systemui/bubbles/Bubble;
    .locals 3

    const/4 v0, 0x0

    .line 752
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 753
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 754
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BadgedImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getIconView()Lcom/android/systemui/bubbles/BadgedImageView;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBubbles()Ljava/util/List;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation

    .line 717
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getBubblesInGroup(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 354
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 355
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getPendingOrActiveNotif(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 356
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getOrCreateBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/bubbles/Bubble;)Lcom/android/systemui/bubbles/Bubble;
    .locals 3

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v1

    if-nez v1, :cond_3

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 239
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bubbles/Bubble;

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_4

    .line 245
    new-instance p2, Lcom/android/systemui/bubbles/Bubble;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressionListener:Lcom/android/systemui/bubbles/BubbleController$NotificationSuppressionChangedListener;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleData;->mCancelledListener:Lcom/android/systemui/bubbles/BubbleController$PendingIntentCanceledListener;

    invoke-direct {p2, p1, v1, v2}, Lcom/android/systemui/bubbles/Bubble;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/bubbles/BubbleController$NotificationSuppressionChangedListener;Lcom/android/systemui/bubbles/BubbleController$PendingIntentCanceledListener;)V

    goto :goto_2

    :cond_3
    :goto_1
    move-object p2, v1

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 253
    invoke-virtual {p2, p1}, Lcom/android/systemui/bubbles/Bubble;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 255
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/4 v0, 0x0

    .line 763
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 764
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bubbles/Bubble;

    .line 765
    invoke-virtual {v1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getOverflowBubbles()Ljava/util/List;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/bubbles/Bubble;",
            ">;"
        }
    .end annotation

    .line 725
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedBubble()Lcom/android/systemui/bubbles/Bubble;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    return-object p0
.end method

.method getSummaryKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hasAnyBubbleWithKey(Ljava/lang/String;)Z
    .locals 1

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hasBubbleInStackWithKey(Ljava/lang/String;)Z
    .locals 0

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasBubbles()Z
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasOverflowBubbleWithKey(Ljava/lang/String;)Z
    .locals 0

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 181
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    return p0
.end method

.method isSummarySuppressed(Ljava/lang/String;)Z
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$removeBubblesWithInvalidShortcuts$1$BubbleData(ILcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleData;->lambda$removeBubblesWithInvalidShortcuts$1(ILcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method

.method public synthetic lambda$removeBubblesWithPackageName$3$BubbleData(ILcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleData;->lambda$removeBubblesWithPackageName$3(ILcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method

.method public synthetic lambda$trim$4$BubbleData(Lcom/android/systemui/bubbles/Bubble;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->lambda$trim$4(Lcom/android/systemui/bubbles/Bubble;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$trim$5$BubbleData(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->lambda$trim$5(Lcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method

.method notificationEntryUpdated(Lcom/android/systemui/bubbles/Bubble;ZZ)V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    .line 270
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->isVisuallyInterruptive()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    or-int/2addr p2, v1

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/Bubble;->setSuppressFlyout(Z)V

    .line 275
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->doAdd(Lcom/android/systemui/bubbles/Bubble;)V

    .line 276
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->trim()V

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/Bubble;->setSuppressFlyout(Z)V

    .line 280
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->doUpdate(Lcom/android/systemui/bubbles/Bubble;)V

    .line 283
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->shouldAutoExpand()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 284
    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/Bubble;->setShouldAutoExpand(Z)V

    .line 285
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 286
    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    if-nez p2, :cond_1

    .line 287
    invoke-direct {p0, v2}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    .line 291
    :cond_1
    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleData;->mExpanded:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleData;->mSelectedBubble:Lcom/android/systemui/bubbles/Bubble;

    if-ne p2, p1, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_3

    .line 292
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->showInShade()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    move v0, v2

    .line 293
    :cond_4
    invoke-virtual {p1, v0}, Lcom/android/systemui/bubbles/Bubble;->setSuppressNotification(Z)V

    xor-int/2addr p2, v2

    .line 294
    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/Bubble;->setShowDot(Z)V

    .line 296
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method notifyDisplayEmpty(I)V
    .locals 2

    .line 569
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/Bubble;

    .line 570
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getDisplayId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 571
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 572
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->notifyDisplayEmpty()V

    :cond_1
    return-void
.end method

.method overflowBubble(ILcom/android/systemui/bubbles/Bubble;)V
    .locals 2

    .line 525
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->getPendingIntentCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mLogger:Lcom/android/systemui/bubbles/BubbleLogger;

    invoke-interface {v0, p2, p1}, Lcom/android/systemui/bubbles/BubbleLogger;->logOverflowAdd(Lcom/android/systemui/bubbles/Bubble;I)V

    .line 534
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 535
    invoke-virtual {p2}, Lcom/android/systemui/bubbles/Bubble;->stopInflation()V

    .line 536
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mMaxOverflowBubbles:I

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    .line 538
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    .line 542
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mStateChange:Lcom/android/systemui/bubbles/BubbleData$Update;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/bubbles/BubbleData$Update;->bubbleRemoved(Lcom/android/systemui/bubbles/Bubble;I)V

    .line 543
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleData;->mLogger:Lcom/android/systemui/bubbles/BubbleLogger;

    sget-object v1, Lcom/android/systemui/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_MAX_REACHED:Lcom/android/systemui/bubbles/BubbleLogger$Event;

    invoke-interface {v0, p2, v1}, Lcom/android/systemui/bubbles/BubbleLogger;->log(Lcom/android/systemui/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 544
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public removeBubblesWithInvalidShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    .line 370
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 371
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 372
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :cond_0
    new-instance p2, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$OJROTAbwBF0fCA-1oF1e2LMcjfg;

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$OJROTAbwBF0fCA-1oF1e2LMcjfg;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 389
    new-instance p1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$3x9c7VXMa5ZgtScfM_PLfdJBhCY;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$3x9c7VXMa5ZgtScfM_PLfdJBhCY;-><init>(Lcom/android/systemui/bubbles/BubbleData;I)V

    .line 392
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p3, p2, p1}, Lcom/android/systemui/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    move-result-object p3

    .line 393
    invoke-direct {p0, p3, p2, p1}, Lcom/android/systemui/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeBubblesWithPackageName(Ljava/lang/String;I)V
    .locals 1

    .line 399
    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$yNv2b3CKuwvR21gLk1U8HP86Gac;

    invoke-direct {v0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$yNv2b3CKuwvR21gLk1U8HP86Gac;-><init>(Ljava/lang/String;)V

    .line 402
    new-instance p1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$xKiHMLOJXi3HkPeIm_knLGFnA8A;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleData$xKiHMLOJXi3HkPeIm_knLGFnA8A;-><init>(Lcom/android/systemui/bubbles/BubbleData;I)V

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->performActionOnBubblesMatching(Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method removeSuppressedSummary(Ljava/lang/String;)V
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setExpandedInternal(Z)V

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public setListener(Lcom/android/systemui/bubbles/BubbleData$Listener;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    return-void
.end method

.method setMaxOverflowBubbles(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 787
    iput p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mMaxOverflowBubbles:I

    return-void
.end method

.method public setPendingIntentCancelledListener(Lcom/android/systemui/bubbles/BubbleController$PendingIntentCanceledListener;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mCancelledListener:Lcom/android/systemui/bubbles/BubbleController$PendingIntentCanceledListener;

    return-void
.end method

.method public setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/systemui/bubbles/Bubble;)V

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method setShowingOverflow(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mShowingOverflow:Z

    return-void
.end method

.method public setSuppressionChangedListener(Lcom/android/systemui/bubbles/BubbleController$NotificationSuppressionChangedListener;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mSuppressionListener:Lcom/android/systemui/bubbles/BubbleController$NotificationSuppressionChangedListener;

    return-void
.end method

.method setTimeSource(Lcom/android/systemui/bubbles/BubbleData$TimeSource;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 774
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleData;->mTimeSource:Lcom/android/systemui/bubbles/BubbleData$TimeSource;

    return-void
.end method
