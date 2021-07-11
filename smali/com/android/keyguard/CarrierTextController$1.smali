.class Lcom/android/keyguard/CarrierTextController$1;
.super Ljava/lang/Object;
.source "CarrierTextController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


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

    .line 98
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController$1;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedWakingUp()V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$1;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {p0}, Lcom/android/keyguard/CarrierTextController;->access$000(Lcom/android/keyguard/CarrierTextController;)Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 102
    invoke-interface {p0}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;->finishedWakingUp()V

    :cond_0
    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$1;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {p0}, Lcom/android/keyguard/CarrierTextController;->access$000(Lcom/android/keyguard/CarrierTextController;)Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 108
    invoke-interface {p0}, Lcom/android/keyguard/CarrierTextController$CarrierTextCallback;->startedGoingToSleep()V

    :cond_0
    return-void
.end method
