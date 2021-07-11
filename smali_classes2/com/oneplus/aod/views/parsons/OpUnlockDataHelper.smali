.class public Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;
.super Ljava/lang/Object;
.source "OpUnlockDataHelper.java"

# interfaces
.implements Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$OpKeyguardUnlockCounterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;
    }
.end annotation


# instance fields
.field private mKeyguardUnlockCounter:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

.field private mUnlockCount:I

.field private mUnlockDrawingHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;

.field private mUnlocksMsg:Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/views/parsons/OpParsonsBar;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mUnlockCount:I

    .line 40
    new-instance v0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;-><init>(Landroid/content/Context;Lcom/oneplus/aod/views/parsons/OpParsonsBar;)V

    iput-object v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mUnlockDrawingHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;

    .line 42
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getKeyguardUnlockCounter()Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mKeyguardUnlockCounter:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    .line 45
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mUnlockDrawingHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->setKeyguardUnlockCounter(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;)V

    :cond_0
    return-void
.end method

.method private refreshUnlockCount(I)V
    .locals 2

    .line 106
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mUnlockCount:I

    if-ne v0, p1, :cond_0

    return-void

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshUnlockCount: unlockCount= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpUnlockDataHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput p1, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mUnlockCount:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 113
    sget v0, Lcom/android/systemui/R$string;->op_aod_parsons_unlock_one:I

    goto :goto_0

    .line 114
    :cond_1
    sget v0, Lcom/android/systemui/R$string;->op_aod_parsons_unlock_other:I

    .line 116
    :goto_0
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mUnlocksMsg:Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;->setUnlockMsg(II)V

    return-void
.end method

.method private requestData()V
    .locals 5

    const-string v0, "OpUnlockDataHelper"

    const-string v1, "requestData#start"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "OpUnlockDataHelper#requestData"

    .line 97
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 99
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mUnlockDrawingHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;

    invoke-virtual {p0}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->requestData()V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p0, v2

    const-string v1, "requestData#end cost %d ms."

    .line 100
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method


# virtual methods
.method public clearUnlockRecord(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mUnlockDrawingHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->setRange(IIII)V

    .line 91
    iget-object p2, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mUnlockDrawingHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;

    invoke-virtual {p2, p1, p6}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 92
    iget-object p1, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mUnlockDrawingHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;

    invoke-virtual {p1}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->getUnlockCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->refreshUnlockCount(I)V

    return-void
.end method

.method public onTimeChanged(JJ)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mKeyguardUnlockCounter:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mUnlockDrawingHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->onTimeChanged(JJ)V

    return-void
.end method

.method public onUnlockDataChanged()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->requestData()V

    return-void
.end method

.method public setUnlocksMsg(Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mUnlocksMsg:Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;

    return-void
.end method

.method public startListen()V
    .locals 2

    .line 71
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startListen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mKeyguardUnlockCounter:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpUnlockDataHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mKeyguardUnlockCounter:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->addListener(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$OpKeyguardUnlockCounterListener;)V

    :cond_2
    return-void
.end method

.method public stopListen()V
    .locals 2

    .line 80
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopListen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mKeyguardUnlockCounter:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpUnlockDataHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mKeyguardUnlockCounter:Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;->removeListener(Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter$OpKeyguardUnlockCounterListener;)V

    :cond_2
    return-void
.end method

.method public updateResources()V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->mUnlockDrawingHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;

    invoke-virtual {p0}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper$UnlockDrawingHelper;->updateResources()V

    return-void
.end method
