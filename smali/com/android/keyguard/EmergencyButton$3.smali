.class Lcom/android/keyguard/EmergencyButton$3;
.super Landroid/telephony/TelephonyManager$CellInfoCallback;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/EmergencyButton;->requestCellInfoUpdate(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyButton;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyButton;I)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    iput p2, p0, Lcom/android/keyguard/EmergencyButton$3;->val$phoneId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager$CellInfoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 505
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {p1}, Lcom/android/keyguard/EmergencyButton;->access$200(Lcom/android/keyguard/EmergencyButton;)[Z

    move-result-object p1

    iget v0, p0, Lcom/android/keyguard/EmergencyButton$3;->val$phoneId:I

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    goto :goto_1

    .line 506
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestCellInfoUpdate.onCellInfo is null or empty on phone"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/keyguard/EmergencyButton$3;->val$phoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EmergencyButton"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object p1, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {p1}, Lcom/android/keyguard/EmergencyButton;->access$200(Lcom/android/keyguard/EmergencyButton;)[Z

    move-result-object p1

    iget v0, p0, Lcom/android/keyguard/EmergencyButton$3;->val$phoneId:I

    const/4 v1, 0x0

    aput-boolean v1, p1, v0

    .line 512
    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method
