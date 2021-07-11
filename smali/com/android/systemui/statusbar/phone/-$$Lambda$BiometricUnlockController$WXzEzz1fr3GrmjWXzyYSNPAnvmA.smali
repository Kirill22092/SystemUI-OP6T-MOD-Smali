.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$WXzEzz1fr3GrmjWXzyYSNPAnvmA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$WXzEzz1fr3GrmjWXzyYSNPAnvmA;->f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$WXzEzz1fr3GrmjWXzyYSNPAnvmA;->f$1:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$WXzEzz1fr3GrmjWXzyYSNPAnvmA;->f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$WXzEzz1fr3GrmjWXzyYSNPAnvmA;->f$1:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->lambda$onFinishedGoingToSleep$1$BiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;)V

    return-void
.end method
