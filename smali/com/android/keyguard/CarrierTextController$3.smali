.class Lcom/android/keyguard/CarrierTextController$3;
.super Landroid/telephony/PhoneStateListener;
.source "CarrierTextController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CarrierTextController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CarrierTextController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController$3;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CarrierTextController$3;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {v0, p1}, Lcom/android/keyguard/CarrierTextController;->access$602(Lcom/android/keyguard/CarrierTextController;I)I

    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController$3;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {p1}, Lcom/android/keyguard/CarrierTextController;->access$700(Lcom/android/keyguard/CarrierTextController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/CarrierTextController$3;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {p1}, Lcom/android/keyguard/CarrierTextController;->access$000(Lcom/android/keyguard/CarrierTextController;)Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$3;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierTextController;->updateCarrierText()V

    :cond_0
    return-void
.end method
