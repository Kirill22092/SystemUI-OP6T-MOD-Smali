.class public Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;
.super Ljava/lang/Object;
.source "LockscreenGestureLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;
    }
.end annotation


# instance fields
.field private mLegacyMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/EventLogConstants;->METRICS_GESTURE_TYPE_MAP:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mLegacyMap:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 96
    :goto_0
    sget-object v1, Lcom/android/systemui/EventLogConstants;->METRICS_GESTURE_TYPE_MAP:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mLegacyMap:Landroid/util/ArrayMap;

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private safeLookup(I)I
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mLegacyMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 137
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V
    .locals 0

    .line 114
    new-instance p0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {p0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public write(III)V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    invoke-direct {v1, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    .line 103
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 104
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x33a

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 105
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x33b

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->safeLookup(I)I

    move-result p0

    invoke-static {p0, p2, p3}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    return-void
.end method

.method public writeAtFractionalPosition(IIII)V
    .locals 1

    .line 125
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p1, 0x4

    .line 126
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 127
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0x52e

    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 128
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x52f

    invoke-virtual {p1, p3, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 129
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x531

    invoke-virtual {p1, p3, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method
