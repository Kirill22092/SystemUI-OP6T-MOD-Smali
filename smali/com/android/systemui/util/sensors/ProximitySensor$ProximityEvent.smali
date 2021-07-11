.class public Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;
.super Ljava/lang/Object;
.source "ProximitySensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/sensors/ProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProximityEvent"
.end annotation


# instance fields
.field private final mNear:Z

.field private final mTimestampNs:J


# direct methods
.method public constructor <init>(ZJ)V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-boolean p1, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;->mNear:Z

    .line 340
    iput-wide p2, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;->mTimestampNs:J

    return-void
.end method


# virtual methods
.method public getNear()Z
    .locals 0

    .line 344
    iget-boolean p0, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;->mNear:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 357
    iget-boolean v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;->mNear:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityEvent;->mTimestampNs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x0

    const-string/jumbo v1, "{near=%s, timestamp_ns=%d}"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
