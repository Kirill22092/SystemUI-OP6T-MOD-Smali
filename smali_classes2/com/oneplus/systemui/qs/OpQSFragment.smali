.class public Lcom/oneplus/systemui/qs/OpQSFragment;
.super Lcom/android/systemui/util/LifecycleFragment;
.source "OpQSFragment.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mLastIsCurrentQsExpand:Z

.field private mLastIsKeyguardVisible:Z

.field private mLastVisible:Z

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/qs/OpQSFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/qs/OpQSFragment;->mLastVisible:Z

    iput-boolean v0, p0, Lcom/oneplus/systemui/qs/OpQSFragment;->mLastIsCurrentQsExpand:Z

    iput-boolean v0, p0, Lcom/oneplus/systemui/qs/OpQSFragment;->mLastIsKeyguardVisible:Z

    return-void
.end method


# virtual methods
.method public setExpansionHight(F)V
    .locals 6

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isQSExpanded()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v2

    sget-boolean v3, Lcom/oneplus/systemui/qs/OpQSFragment;->DEBUG:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/systemui/qs/OpQSFragment;->mLastVisible:Z

    if-ne v3, p1, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/systemui/qs/OpQSFragment;->mLastIsCurrentQsExpand:Z

    if-ne v3, v1, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/systemui/qs/OpQSFragment;->mLastIsKeyguardVisible:Z

    if-eq v3, v2, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setExpansionHeight: mVisible= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/systemui/qs/OpQSFragment;->mLastVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isCurrentQsExpand= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oneplus/systemui/qs/OpQSFragment;->mLastIsCurrentQsExpand:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isKeyguardVisible= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oneplus/systemui/qs/OpQSFragment;->mLastIsKeyguardVisible:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpQS"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean p1, p0, Lcom/oneplus/systemui/qs/OpQSFragment;->mLastVisible:Z

    iput-boolean v1, p0, Lcom/oneplus/systemui/qs/OpQSFragment;->mLastIsCurrentQsExpand:Z

    iput-boolean v2, p0, Lcom/oneplus/systemui/qs/OpQSFragment;->mLastIsKeyguardVisible:Z

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-boolean v2, p0, Lcom/oneplus/systemui/qs/OpQSFragment;->mVisible:Z

    if-ne v2, p1, :cond_4

    if-ne p1, v1, :cond_4

    return-void

    :cond_4
    iput-boolean p1, p0, Lcom/oneplus/systemui/qs/OpQSFragment;->mVisible:Z

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p0, p0, Lcom/oneplus/systemui/qs/OpQSFragment;->mVisible:Z

    invoke-virtual {v0, p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setQSExpanded(Z)V

    :cond_5
    return-void
.end method
