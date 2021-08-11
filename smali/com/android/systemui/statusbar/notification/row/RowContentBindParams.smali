.class public final Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;
.super Ljava/lang/Object;
.source "RowContentBindParams.java"


# static fields
.field private static DEFAULT_INFLATION_FLAGS:I = 0x3


# instance fields
.field private mContentViews:I

.field private mDirtyContentViews:I

.field private mUseIncreasedHeadsUpHeight:Z

.field private mUseIncreasedHeight:Z

.field private mUseLowPriority:Z

.field private mViewsNeedReinflation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->DEFAULT_INFLATION_FLAGS:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    sget-boolean p0, Lcom/oneplus/util/OpUtils;->QUICK_REPLY_BUBBLE:Z

    if-nez p0, :cond_0

    sget p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->DEFAULT_INFLATION_FLAGS:I

    or-int/lit8 p0, p0, 0x20

    or-int/lit8 p0, p0, 0x40

    sput p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->DEFAULT_INFLATION_FLAGS:I

    :cond_0
    return-void
.end method


# virtual methods
.method clearDirtyContentViews()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    return-void
.end method

.method public getContentViews()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    return p0
.end method

.method public getDirtyContentViews()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    return p0
.end method

.method public markContentViewsFreeable(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    not-int p1, p1

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    return-void
.end method

.method public needsReinflation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mViewsNeedReinflation:Z

    return p0
.end method

.method public rebindAllContentViews()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    return-void
.end method

.method public requireContentViews(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    not-int v1, v0

    and-int/2addr p1, v1

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    return-void
.end method

.method public setNeedsReinflation(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mViewsNeedReinflation:Z

    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    return-void
.end method

.method public setUseIncreasedCollapsedHeight(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeight:Z

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeight:Z

    return-void
.end method

.method public setUseIncreasedHeadsUpHeight(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeadsUpHeight:Z

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeadsUpHeight:Z

    return-void
.end method

.method public setUseLowPriority(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseLowPriority:Z

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    or-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseLowPriority:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mContentViews:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseLowPriority:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeight:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeadsUpHeight:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mViewsNeedReinflation:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    const-string p0, "RowContentBindParams[mContentViews=%x mDirtyContentViews=%x mUseLowPriority=%b mUseIncreasedHeight=%b mUseIncreasedHeadsUpHeight=%b mViewsNeedReinflation=%b]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public useIncreasedHeadsUpHeight()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeadsUpHeight:Z

    return p0
.end method

.method public useIncreasedHeight()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseIncreasedHeight:Z

    return p0
.end method

.method public useLowPriority()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mUseLowPriority:Z

    return p0
.end method
