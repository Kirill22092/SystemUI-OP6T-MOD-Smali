.class Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpWakingUpScrimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->handleStartAnimation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCancelled:Z

.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "OpWakingUpScrimController"

    const-string v0, "WakingUpScrimView onAnimationCancel"

    .line 250
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 251
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WakingUpScrimView onAnimationEnd: cance "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;->mCancelled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpWakingUpScrimController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;->mCancelled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    invoke-static {p1, v0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->access$400(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;Z)V

    .line 262
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    invoke-static {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->access$502(Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const/4 p1, 0x0

    .line 239
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController$3;->mCancelled:Z

    const-string p0, "OpWakingUpScrimController"

    const-string p1, "WakingUpScrimView onAnimationStart"

    .line 240
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->getInstance()Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 243
    invoke-static {}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->getInstance()Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->notifyWakingUpScrimAnimationStart(J)V

    :cond_0
    return-void
.end method
