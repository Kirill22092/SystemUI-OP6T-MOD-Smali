.class public Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;
.super Ljava/lang/Object;
.source "OpKeyguardUnlockCounter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnlockRecord"
.end annotation


# instance fields
.field mBeginTime:J

.field mEndTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;
    .locals 2

    .line 490
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "UnlockRecord"

    const-string v1, "clone failed!"

    .line 492
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->clone()Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;

    move-result-object p0

    return-object p0
.end method

.method public getBeginTime()J
    .locals 2

    .line 498
    iget-wide v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->mBeginTime:J

    return-wide v0
.end method

.method public getBeginTimeInFormat()Ljava/lang/String;
    .locals 2

    .line 510
    iget-wide v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->mBeginTime:J

    invoke-static {v0, v1}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->logFormatTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEndTime()J
    .locals 2

    .line 502
    iget-wide v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->mEndTime:J

    return-wide v0
.end method

.method public getEndTimeInFormat()Ljava/lang/String;
    .locals 2

    .line 514
    iget-wide v0, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->mEndTime:J

    invoke-static {v0, v1}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->logFormatTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnlockRecord: mBeginTime= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->mBeginTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEndTime= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->mEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", begin= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->getBeginTimeInFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", end= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$UnlockRecord;->getEndTimeInFormat()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 518
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
