.class Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;
.super Ljava/lang/Object;
.source "OpKeyguardUnlockCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnlockEvent"
.end annotation


# instance fields
.field mTriggerTime:J

.field mType:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput p1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mType:I

    .line 450
    iput-wide p2, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mTriggerTime:J

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;
    .locals 4

    .line 454
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\|"

    .line 455
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 458
    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 459
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 460
    new-instance v0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;-><init>(IJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 462
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpKeyguardUnlockCounter"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public logString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 474
    iget v1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mTriggerTime:J

    invoke-static {v1, v2}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->logFormatTime(J)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%d|%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 470
    iget v1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockEvent;->mTriggerTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%d|%d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
