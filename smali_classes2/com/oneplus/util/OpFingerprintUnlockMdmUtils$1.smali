.class Lcom/oneplus/util/OpFingerprintUnlockMdmUtils$1;
.super Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;
.source "OpFingerprintUnlockMdmUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->registerFingerprintClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;


# direct methods
.method constructor <init>(Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils$1;->this$0:Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientActiveChanged(Z)V
    .locals 0

    return-void
.end method

.method public onClientActiveChangedWithPkg(ZLjava/lang/String;)V
    .locals 1

    .line 97
    invoke-static {}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClientActiveChangedWithPkg: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpFingerprintUnlockMdmUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils$1;->this$0:Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;

    invoke-static {p1}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->access$200(Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->access$102(Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    iget-object p0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils$1;->this$0:Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;

    invoke-static {p0, p2}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->access$202(Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onFingerprintEventCallback(IIII)V
    .locals 0

    .line 106
    invoke-static {}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->access$000()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 107
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onFingerprintEventCallback= cur: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils$1;->this$0:Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;

    invoke-static {p4}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->access$200(Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", last: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils$1;->this$0:Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;

    invoke-static {p4}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->access$100(Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "OpFingerprintUnlockMdmUtils"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-object p3, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils$1;->this$0:Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;

    invoke-static {p3}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->access$100(Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->access$300(Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p3, 0x3ee

    if-ne p1, p3, :cond_1

    .line 110
    iget-object p0, p0, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils$1;->this$0:Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;

    invoke-virtual {p0, p2}, Lcom/oneplus/util/OpFingerprintUnlockMdmUtils;->notifyFpAcquiredInfo(I)V

    :cond_1
    return-void
.end method
